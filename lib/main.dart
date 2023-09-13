import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Sign-up Page"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: AutofillGroup(
            child:Column(
              children: [

                TextField(
                  autofillHints: [AutofillHints.username],
                  decoration: InputDecoration(
                      hintText: "First Name"
                  ),
                ),
                TextField(
                  autofillHints: [AutofillHints.username],
                  decoration: InputDecoration(
                      hintText: "Last Name"
                  ),
                ),
                TextField(
                  autofillHints: [AutofillHints.email],
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                ),


                TextField(
                  obscureText: true,
                  autofillHints: [AutofillHints.password],
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                ),




                ElevatedButton(
                    onPressed: (){
                      //--- trigger Password Save
                      TextInput.finishAutofillContext();

                      //--- OR ----
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return Panel();
                      }));
                    },
                    child:Text("Sign up")
                )
              ],
            )
        ),
      ),
    );
  }
}

class Panel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
    );
  }
}