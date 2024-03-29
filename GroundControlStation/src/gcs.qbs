/*!
* Copyright © 2017 Oleksii Aliakin. All rights reserved.
* Author: Oleksii Aliakin (alex@nls.la)
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import qbs
import qbs.FileInfo
import QmlTools

QmlTools.QtQmlApplication {
    name: "GroundControlStation"
    appShortName: "gcs"

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: ["qml", "quick", "gui", "svg"] }
//    Depends { name: "libqtqmltricks-qtsupermacros" }

//    cpp.defines: generalDefines.concat(['QTQMLTRICKS_NO_PREFIX_ON_GETTERS'])
    cpp.includePaths: ["../../submodules/mavlink/common"]

    Group {
        name: "Sources"
        files: [
            "**"
        ]
    }
}
