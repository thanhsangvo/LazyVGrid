//
//  ContentView.swift
//  LazyVGrid
//
//  Created by Võ Thanh Sang on 7/2/20.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["🎨" , "🎯", "🚑", "🚓", "🏩", "🙈", "🐭"]
    @State private var sliderValue: CGFloat = 2
    
    var body: some View {
        
        let coloums: [GridItem] = Array(repeating: .init(.flexible()), count: Int(self.sliderValue))
        
        
        return VStack {
            
            Slider(value: $sliderValue, in: 2...10, step: 1)
            Text(String(format: "%.0f hihi", self.sliderValue))
            
            ScrollView {
                LazyVGrid(columns: coloums) {
                    ForEach(self.animals, id: \.self) { (animal) in
                        Text(animal)
                            .font(.system(size: 100))
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
