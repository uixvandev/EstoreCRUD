//
//  ErrorHandling.swift
//  EstoreCRUD
//
//  Created by irfan wahendra on 18/09/24.
//

import Foundation

struct ErrorMessage {
    static func message(for urlError: URLError) -> String {
        switch urlError.code {
        case .notConnectedToInternet:
            return FailedMessage.notConnectedToInternet
            
        case .timedOut:
            return FailedMessage.timeout
            
        default:
            return FailedMessage.unexpected
        }
    }
}
