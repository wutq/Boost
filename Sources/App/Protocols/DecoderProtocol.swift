//
//  Decoder.swift
//  Boost
//
//  Created by Ondrej Rafaj on 02/12/2016.
//
//

import Foundation
import Vapor


protocol DecoderProtocol {
    
    init(_ file: Multipart)
    
    var iconData: Data? { get }
    var appName: String? { get }
    var appIdentifier: String? { get }
    var platform: Platform? { get }
    var versionShort: String? { get }
    var versionLong: String? { get }
    
    func prepare() throws
    func parse() throws
    
    func toJSON() throws -> JSON
    
}