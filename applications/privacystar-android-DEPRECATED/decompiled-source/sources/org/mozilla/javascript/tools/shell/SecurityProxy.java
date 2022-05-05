package org.mozilla.javascript.tools.shell;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/SecurityProxy.class */
public abstract class SecurityProxy extends SecurityController {
    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void callProcessFileSecure(Context context, Scriptable scriptable, String str);
}
