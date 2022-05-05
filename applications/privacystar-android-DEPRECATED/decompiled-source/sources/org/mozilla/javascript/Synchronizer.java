package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Synchronizer.class */
public class Synchronizer extends Delegator {
    private Object syncObject;

    public Synchronizer(Scriptable scriptable) {
        super(scriptable);
    }

    public Synchronizer(Scriptable scriptable, Object obj) {
        super(scriptable);
        this.syncObject = obj;
    }

    @Override // org.mozilla.javascript.Delegator, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object call;
        Object obj = this.syncObject != null ? this.syncObject : scriptable2;
        Object obj2 = obj;
        if (obj instanceof Wrapper) {
            obj2 = ((Wrapper) obj).unwrap();
        }
        synchronized (obj2) {
            call = ((Function) this.obj).call(context, scriptable, scriptable2, objArr);
        }
        return call;
    }
}
