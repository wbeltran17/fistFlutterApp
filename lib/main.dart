import 'package:flutter/material.dart';

void main() {
  runApp(myFisrtApp());
}

class myFisrtApp extends StatelessWidget {
  const myFisrtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi primera Aplicacion de flutter",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejemplo 1")),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage("https://fondosmil.com/fondo/14127.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          children: <Widget>[nombre(), usuario(), clave(), ingresar()],
        ),
      ));
}

Widget nombre() {
  return Text(
    "Ingrese",
    style: TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
  );
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Ingrese su usuario",
          fillColor: Colors.white,
          filled: true),
    ),
  );
}

Widget clave() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: TextField(
      obscureText: true, // crear textfield de contraseña
      decoration: InputDecoration(
          hintText: "Ingrese su clave", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget ingresar() {
  return MaterialButton(
    minWidth: 200.0,
    height: 50.0,
    onPressed: () => print('ingresa'),
    color: Colors.lightGreen,
    child: Text(
      "Ingresar",
      style: TextStyle(color: Colors.white),
    ),
  );
}

/* uso de Lustas y contenedores 

      */
/* Trabajar con columnas
body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize : MainAxisSize.max,2
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text("Hola que hace?", textAlign: TextAlign.center,),
          ),
          Text("Aqui, dandole a Flutter")
        ],
      ), */



// trabajar con Filas
     /* body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,// comentar cuando sea una fila Row
        mainAxisSize : MainAxisSize.max,
        children: <Widget>[
          Container(
            //width: MediaQuery.of(context).size.width, // comentar cuando sea una fila Row
            child: Text("Hola que hace?", textAlign: TextAlign.center,),
          ),
          Text("Aqui, dandole a Flutter")
        ],
      ), 
    );
  }
}
*/