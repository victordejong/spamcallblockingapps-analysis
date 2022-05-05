package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeContinuation.class */
public final class NativeContinuation extends IdScriptableObject implements Function {
    private static final Object FTAG = "Continuation";
    private static final int Id_constructor = 1;
    private static final int MAX_PROTOTYPE_ID = 1;
    static final long serialVersionUID = 1794167133757605367L;
    private Object implementation;

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeContinuation().exportAsJSClass(1, scriptable, z);
    }

    public static boolean isContinuationConstructor(IdFunctionObject idFunctionObject) {
        return idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1;
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return Interpreter.restartContinuation(this, context, scriptable, objArr);
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw Context.reportRuntimeError("Direct call is not supported");
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(FTAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        if (methodId != 1) {
            throw new IllegalArgumentException(String.valueOf(methodId));
        }
        throw Context.reportRuntimeError("Direct call is not supported");
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int i = 0;
        if (str.length() == 11) {
            str2 = "constructor";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        return i;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Continuation";
    }

    public Object getImplementation() {
        return this.implementation;
    }

    public void initImplementation(Object obj) {
        this.implementation = obj;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        if (i != 1) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(FTAG, i, "constructor", 0);
    }
}
