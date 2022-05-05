package com.facebook.stetho.rhino;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.stetho.inspector.console.RuntimeRepl;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptableObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsRuntimeRepl.class */
class JsRuntimeRepl implements RuntimeRepl {
    @NonNull
    private final ScriptableObject mJsScope;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsRuntimeRepl(@NonNull ScriptableObject scriptableObject) {
        this.mJsScope = scriptableObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Context enterJsContext() {
        Context enter = Context.enter();
        try {
            enter.setLanguageVersion(180);
            enter.setOptimizationLevel(-1);
            return enter;
        } catch (RuntimeException e) {
            Context.exit();
            throw e;
        }
    }

    @Override // com.facebook.stetho.inspector.console.RuntimeRepl
    @Nullable
    public Object evaluate(@NonNull String str) throws Throwable {
        try {
            Object evaluateString = enterJsContext().evaluateString(this.mJsScope, str, "chrome", 1, null);
            ScriptableObject.putProperty(this.mJsScope, "$_", Context.javaToJS(evaluateString, this.mJsScope));
            Context.exit();
            return Context.jsToJava(evaluateString, Object.class);
        } catch (Throwable th) {
            Context.exit();
            throw th;
        }
    }
}
