package org.mozilla.javascript.tools.shell;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Runner.class */
class Runner implements Runnable, ContextAction {
    private Object[] args;

    /* renamed from: f */
    private Function f851f;
    ContextFactory factory;

    /* renamed from: s */
    private Script f852s;
    private Scriptable scope;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runner(Scriptable scriptable, Function function, Object[] objArr) {
        this.scope = scriptable;
        this.f851f = function;
        this.args = objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runner(Scriptable scriptable, Script script) {
        this.scope = scriptable;
        this.f852s = script;
    }

    @Override // org.mozilla.javascript.ContextAction
    public Object run(Context context) {
        return this.f851f != null ? this.f851f.call(context, this.scope, this.scope, this.args) : this.f852s.exec(context, this.scope);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.factory.call(this);
    }
}
