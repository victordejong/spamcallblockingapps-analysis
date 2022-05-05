package org.mozilla.javascript.debug;

import org.mozilla.javascript.Context;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/debug/Debugger.class */
public interface Debugger {
    DebugFrame getFrame(Context context, DebuggableScript debuggableScript);

    void handleCompilationDone(Context context, DebuggableScript debuggableScript, String str);
}
