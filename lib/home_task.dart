import 'package:flutter/material.dart';
class HomeTask extends StatefulWidget {
  const HomeTask({Key? key}) : super(key: key);

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  final List<String> _listItem = ["assets/images/img_1.jpeg",
    "assets/images/img_2.jpeg",
    "assets/images/img_3.jpeg",
    "assets/images/img)4.png",
    "assets/images/img_5.jpg",
    "assets/images/img_6.jpeg",
    "assets/images/img_7.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 99, 53, 1),
        leading: const Icon(Icons.menu),
        title: const Text("Apple Products"),
        actions: [
          Padding(padding: const EdgeInsets.all(10),child: Container(width: 30,height: 30,
            decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(child: Text("7"),),),),
        ],
      ),
      backgroundColor: const Color.fromRGBO(235, 99, 53, 1),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //%header
            Container(
              width: double.infinity,

              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_7.jpeg"),
                    fit: BoxFit.cover,
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft
                      ,colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.1),
                  ]

                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Lifesyle sale",style: TextStyle(fontSize: 35,color: Colors.white),),
                    const SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:40),
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(child: Text('Show shop',style: TextStyle(color: Colors.grey[900]),),),
                    ),
                    const SizedBox(height: 30,),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),

            Expanded(child:
            GridView.count(crossAxisCount: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: _listItem.map((e) => cellOfList(e)).toList(),
            ),
            ),
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,

      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(item),
              fit: BoxFit.cover,

            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.favorite,color: Colors.red,size: 42,)
          ],
        ),
      ),
    );
  }
}
