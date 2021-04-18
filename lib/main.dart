import 'package:flutter/material.dart';

void main (){
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        //leading: Container(),
        backgroundColor: Colors.green,
        title: Text("LOGO"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              return;
              // print("sdaf"); // 리턴 이후는 동작하지 않는다.
            },
          )
        ],
      ),
      body: GridView(
      padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        // scrollDirection: Axis.horizontal,
        children:[

          this._items(),
          this._items(),
          this._items(),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,)
        ],
      ),
    );
  }
  Widget _items(){
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.orange,
            child: Icon(Icons.more_horiz),
            //width: (MediaQuery.of(context).size.width/2)-15.0,
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right: 10.0),
          ),
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(60.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://images.unsplash.com/photo-1618449625138-62cb2b8a343a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ),
            ),

          ),
          Container(
            child: Text(
              "이름",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person),
                Icon(Icons.access_alarm)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

