package org.mozilla.javascript;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeScript.class */
public class NativeScript extends BaseFunction {
    private static final int Id_compile = 3;
    private static final int Id_constructor = 1;
    private static final int Id_exec = 4;
    private static final int Id_toString = 2;
    private static final int MAX_PROTOTYPE_ID = 4;
    private static final Object SCRIPT_TAG = "Script";
    static final long serialVersionUID = -6795101161980121700L;
    private Script script;

    private NativeScript(Script script) {
        this.script = script;
    }

    private static Script compile(Context context, String str) {
        int[] iArr = {0};
        String sourcePositionFromStack = Context.getSourcePositionFromStack(iArr);
        String str2 = sourcePositionFromStack;
        if (sourcePositionFromStack == null) {
            str2 = "<Script object>";
            iArr[0] = 1;
        }
        return context.compileString(str, null, DefaultErrorReporter.forEval(context.getErrorReporter()), str2, iArr[0], null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeScript(null).exportAsJSClass(4, scriptable, z);
    }

    private static NativeScript realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeScript) {
            return (NativeScript) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return this.script != null ? this.script.exec(context, scriptable) : Undefined.instance;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw Context.reportRuntimeError0("msg.script.is.not.constructor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.BaseFunction
    public String decompile(int i, int i2) {
        return this.script instanceof NativeFunction ? ((NativeFunction) this.script).decompile(i, i2) : super.decompile(i, i2);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(SCRIPT_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                NativeScript nativeScript = new NativeScript(compile(context, objArr.length == 0 ? "" : ScriptRuntime.toString(objArr[0])));
                ScriptRuntime.setObjectProtoAndParent(nativeScript, scriptable);
                return nativeScript;
            case 2:
                Script script = realThis(scriptable2, idFunctionObject).script;
                return script == null ? "" : context.decompileScript(script, 0);
            case 3:
                NativeScript realThis = realThis(scriptable2, idFunctionObject);
                realThis.script = compile(context, ScriptRuntime.toString(objArr, 0));
                return realThis;
            case 4:
                throw Context.reportRuntimeError1("msg.cant.call.indirect", "exec");
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 4;
        if (length == 4) {
            str2 = "exec";
        } else if (length != 11) {
            switch (length) {
                case 7:
                    str2 = "compile";
                    i = 3;
                    break;
                case 8:
                    str2 = "toString";
                    i = 2;
                    break;
                default:
                    str2 = null;
                    i = 0;
                    break;
            }
        } else {
            str2 = "constructor";
            i = 1;
        }
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (str2 != str) {
                i2 = i;
                if (!str2.equals(str)) {
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getArity() {
        return 0;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Script";
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getLength() {
        return 0;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 0;
        switch (i) {
            case 1:
                str = "constructor";
                i2 = 1;
                break;
            case 2:
                str = "toString";
                break;
            case 3:
                str = "compile";
                i2 = 1;
                break;
            case 4:
                str = "exec";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(SCRIPT_TAG, i, str, i2);
    }
}
