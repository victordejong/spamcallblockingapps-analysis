package org.mozilla.javascript.tools.debugger;

import org.mozilla.javascript.tools.debugger.Dim;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/debugger/RunProxy.class */
public class RunProxy implements Runnable {
    static final int ENTER_INTERRUPT = 4;
    static final int LOAD_FILE = 2;
    static final int OPEN_FILE = 1;
    static final int UPDATE_SOURCE_TEXT = 3;
    String alertMessage;
    private SwingGui debugGui;
    String fileName;
    Dim.StackFrame lastFrame;
    Dim.SourceInfo sourceInfo;
    String text;
    String threadTitle;
    private int type;

    public RunProxy(SwingGui swingGui, int i) {
        this.debugGui = swingGui;
        this.type = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        switch (this.type) {
            case 1:
                try {
                    this.debugGui.dim.compileScript(this.fileName, this.text);
                    return;
                } catch (RuntimeException e) {
                    SwingGui swingGui = this.debugGui;
                    String message = e.getMessage();
                    MessageDialogWrapper.showMessageDialog(swingGui, message, "Error Compiling " + this.fileName, 0);
                    return;
                }
            case 2:
                try {
                    this.debugGui.dim.evalScript(this.fileName, this.text);
                    return;
                } catch (RuntimeException e2) {
                    SwingGui swingGui2 = this.debugGui;
                    String message2 = e2.getMessage();
                    MessageDialogWrapper.showMessageDialog(swingGui2, message2, "Run error for " + this.fileName, 0);
                    return;
                }
            case 3:
                String url = this.sourceInfo.url();
                if (!this.debugGui.updateFileWindow(this.sourceInfo) && !url.equals("<stdin>")) {
                    this.debugGui.createFileWindow(this.sourceInfo, -1);
                    return;
                }
                return;
            case 4:
                this.debugGui.enterInterruptImpl(this.lastFrame, this.threadTitle, this.alertMessage);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(this.type));
        }
    }
}
