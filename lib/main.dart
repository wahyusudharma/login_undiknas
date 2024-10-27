import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 64, 98, 165)),
        useMaterial3: true,
      ),
      home: const WebLayoutPage(),
    );
  }
}

class WebLayoutPage extends StatelessWidget {
  const WebLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                ),
                const Divider(color: Colors.white54),
                ListTile(
                  title: const Text('Dashboard', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Settings', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Logout', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ],
            ),
          ),
          
          // Main content area
          Expanded(
            child: Column(
              children: [
                // Header
                Container(
                  height: 70,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Header',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                
                // Content Area
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: MediaQuery.of(context).size.width > 800 ? 3 : 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children: List.generate(
                        6,
                        (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Content $index',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
