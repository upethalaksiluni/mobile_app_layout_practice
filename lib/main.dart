import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("MyFirstWidget"));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("MyWidget"));
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center( child: Text(widget.title, textAlign: TextAlign.center,),),
        ),

        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,  //for the space between welcome to flutter and hello flutter
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      gradient: LinearGradient(colors: [Colors.red, Colors.amber]),
                      // borderRadius: BorderRadius.all(Radius.elliptical(5, 25)),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0 , 5),
                          blurRadius: 9

                        )
                      ],

                  ),
                  height: 40,
                  width: 380,
                  child: Center(
                    child: Text('Welcome to Flutter!', style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                      decorationThickness: 2,
                      decorationStyle: TextDecorationStyle.dashed,
                      overflow: TextOverflow.fade,
                    ),),
                  )
              ),
              SizedBox(
                height: 20,  //for the space between welcome to flutter and hello flutter
              ),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.amber],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 9,
                    ),
                  ],
                ),
                height: 40,
                width: 380,
                child: Center(
                  child: Text('Hello Flutter!'),
                ),
              ),

              SizedBox(
                height: 20,  //for the space between welcome to flutter and hello flutter
              ),
              Container(
                width: 380,
                child: Row(
                  children: [
                    Expanded(flex: 2,
                      //   use to set width in empty space
                      child: Container(
                        height: 50,
                        color: Colors.deepOrange,
                        child: Center(
                            child: Text('Item 1')
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,  //for the space between welcome to flutter and hello flutter
                    ),
                    Expanded(
                      child: Container(
                        height: 50,

                        color: Colors.deepPurple,
                        child: Center(
                            child: Text('Item 2')
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,  //for the space between welcome to flutter and hello flutter
                    ),
                    Expanded(child:
                    Container(
                      height: 50,

                      color: Colors.red,
                      child: Center(
                          child: Text('Item 3')
                      ),
                    ),)
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              MyFirstWidget(),

              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.brown,
                  height: 40,
                  width: 380,
                  child: Center(
                    child: Text('First Widget'),
                  )
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.greenAccent,
                  height: 40,width: 380,
                  child: Center(
                    child: Text('Second Widget'),
                  )
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.cyanAccent,
                  height: 40,
                  width: 380,
                  child: Center(
                    child: Text('Third Widget'),
                  )
              ),
              Spacer(),
              Container(
                  color: Colors.black12,
                  height: 50,
                  child: Center(
                    child: Text('Footer'),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
