package;



import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.text.TextField;
import openfl.text.TextFieldAutoSize;
import openfl.text.TextFormat;
import openfl.text.TextFormatAlign;
import openfl.ui.Keyboard;
import openfl.utils.Assets;

import openfl.events.KeyboardEvent;

class Main extends Sprite {
	
	var w:Float = 0;
	var h:Float = 0;
	var h_half:Float = 0;
	
	var y_max:Float = 0;
	
	public var bg:Bitmap;
	
	var t:TextField ;
	
	//public var ball;
	
		var mc:Sprite = new Sprite();
	
	public function new () {
		
		super ();
		
		t = new TextField( );
	
		var tf:TextFormat = new TextFormat(  null ,21);
		
		tf.align = TextFormatAlign.JUSTIFY;
		t.autoSize = TextFieldAutoSize.LEFT;	
		t.multiline = t.wordWrap  =true;
		
		t.setTextFormat(tf);
		//t.defaultTextFormat = tf;
		
		//var v = "Es el conjunto de conocimientos y habilidades necesarias para la colaboración humana cada vez que sea necesario reunirse o comunicarse por medio de herramientas digitales. " +
		//"Se ahorra tiempo y dinero, mejorando así el entorno de la oficina y aumento de la productividad. ";
			
		var v = "Soluciones que ayudan a explorar libremente sus datos y descubrir tendencias que no haya visto antes:\n\n" +
		". Implementación rápida de aplicaciones y cuadros de mando mediante el uso de herramientas de Business Intelligence Self Service\n. Analítica personalizada e integrada\n. Descubrimiento interactivo de datos";
			
		t.text = v;
		
		this.addChild(t);
		stage.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
		
		// - - - - - - - - - 
		
	
		t.y = 10;
		
		createTraceText();
	}
	
	
	var trace_:TextField = new TextField();
	public function createTraceText() 
	{
		
		this.addChild(trace_);
		trace_.textColor = 0xFF0000;
		//trace_.addEventListener(KeyboardEvent.KEY_DOWN, onKey);
	}
	
	private function onMouseMove(e:Event):Void 
	{
		t.width = mouseX;
		
		trace_.text = "Text Width: " + t.width;
	}
}
