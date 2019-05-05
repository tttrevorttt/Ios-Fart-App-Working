//
//  ViewController.swift
//  Farty Arty
//
//  Created by Trevor on 4/24/19.
//  Copyright © 2019 Trevor Gorham. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioplayer: AVAudioPlayer!
     let soundArray = ["noise1", "noise2", "noise3", "noise4"]
    public var selectedSoundFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Fart(_ sender: Any) {
        let RandomInt = Int.random(in: 0..<4)
        selectedSoundFileName = soundArray[RandomInt]

        playSound()
    }
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do{
            audioplayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioplayer.play()
    }
    
}

