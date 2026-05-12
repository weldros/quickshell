import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
    id: windowPanel
    visible: root.windowVisible
    
    WlrLayershell.layer: WlrLayer.Top
    WlrLayershell.namespace: "quickshell"
    
    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 30
    
    color: Qt.rgba(root.walBackground.r, root.walBackground.g, root.walBackground.b, 0.95)

    Rectangle {
        anchors.fill: parent
        color: "transparent"
        border.width: 1
        border.color: root.walColor13
        opacity: 0.3
    }

    Text {
        anchors.centerIn: parent
        text: Hyprland.focusedWindow ? Hyprland.focusedWindow.title : "Desktop"
        color: root.walForeground
        font.pixelSize: 14
        font.bold: true
        font.family: "JetBrainsMono Nerd Font"
    }
  }
