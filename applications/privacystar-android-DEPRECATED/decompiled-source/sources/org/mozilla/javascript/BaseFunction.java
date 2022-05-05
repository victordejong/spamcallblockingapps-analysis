package org.mozilla.javascript;

import android.support.p001v4.app.NotificationCompat;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/BaseFunction.class */
public class BaseFunction extends IdScriptableObject implements Function {
    private static final Object FUNCTION_TAG = "Function";
    private static final int Id_apply = 4;
    private static final int Id_arguments = 5;
    private static final int Id_arity = 2;
    private static final int Id_bind = 6;
    private static final int Id_call = 5;
    private static final int Id_constructor = 1;
    private static final int Id_length = 1;
    private static final int Id_name = 3;
    private static final int Id_prototype = 4;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    private static final int MAX_INSTANCE_ID = 5;
    private static final int MAX_PROTOTYPE_ID = 6;
    static final long serialVersionUID = 5311394446546053859L;
    private Object prototypeProperty;
    private Object argumentsObj = NOT_FOUND;
    private int prototypePropertyAttributes = 6;
    private int argumentsAttributes = 6;

    public BaseFunction() {
    }

    public BaseFunction(Scriptable scriptable, Scriptable scriptable2) {
        super(scriptable, scriptable2);
    }

    private Object getArguments() {
        Object defaultGet = defaultHas("arguments") ? defaultGet("arguments") : this.argumentsObj;
        if (defaultGet != NOT_FOUND) {
            return defaultGet;
        }
        Scriptable findFunctionActivation = ScriptRuntime.findFunctionActivation(Context.getContext(), this);
        return findFunctionActivation == null ? null : findFunctionActivation.get("arguments", findFunctionActivation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        BaseFunction baseFunction = new BaseFunction();
        baseFunction.prototypePropertyAttributes = 7;
        baseFunction.exportAsJSClass(6, scriptable, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isApply(IdFunctionObject idFunctionObject) {
        return idFunctionObject.hasTag(FUNCTION_TAG) && idFunctionObject.methodId() == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isApplyOrCall(IdFunctionObject idFunctionObject) {
        if (!idFunctionObject.hasTag(FUNCTION_TAG)) {
            return false;
        }
        switch (idFunctionObject.methodId()) {
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    private static Object jsConstructor(Context context, Scriptable scriptable, Object[] objArr) {
        int i;
        int length = objArr.length;
        StringBuilder sb = new StringBuilder();
        sb.append("function ");
        if (context.getLanguageVersion() != 120) {
            sb.append("anonymous");
        }
        sb.append('(');
        int i2 = 0;
        while (true) {
            i = length - 1;
            if (i2 >= i) {
                break;
            }
            if (i2 > 0) {
                sb.append(',');
            }
            sb.append(ScriptRuntime.toString(objArr[i2]));
            i2++;
        }
        sb.append(") {");
        if (length != 0) {
            sb.append(ScriptRuntime.toString(objArr[i]));
        }
        sb.append("\n}");
        String sb2 = sb.toString();
        int[] iArr = new int[1];
        String sourcePositionFromStack = Context.getSourcePositionFromStack(iArr);
        String str = sourcePositionFromStack;
        if (sourcePositionFromStack == null) {
            str = "<eval'ed string>";
            iArr[0] = 1;
        }
        String makeUrlForGeneratedScript = ScriptRuntime.makeUrlForGeneratedScript(false, str, iArr[0]);
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        ErrorReporter forEval = DefaultErrorReporter.forEval(context.getErrorReporter());
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            return context.compileFunction(topLevelScope, sb2, createInterpreter, forEval, makeUrlForGeneratedScript, 1, null);
        }
        throw new JavaScriptException("Interpreter not present", str, iArr[0]);
    }

    private BaseFunction realFunction(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        Object defaultValue = scriptable.getDefaultValue(ScriptRuntime.FunctionClass);
        Scriptable scriptable2 = defaultValue;
        if (defaultValue instanceof Delegator) {
            scriptable2 = ((Delegator) defaultValue).getDelegee();
        }
        if (scriptable2 instanceof BaseFunction) {
            return (BaseFunction) scriptable2;
        }
        throw ScriptRuntime.typeError1("msg.incompat.call", idFunctionObject.getFunctionName());
    }

    private Object setupDefaultPrototype() {
        synchronized (this) {
            if (this.prototypeProperty != null) {
                return this.prototypeProperty;
            }
            NativeObject nativeObject = new NativeObject();
            nativeObject.defineProperty("constructor", this, 2);
            this.prototypeProperty = nativeObject;
            Scriptable objectPrototype = getObjectPrototype(this);
            if (objectPrototype != nativeObject) {
                nativeObject.setPrototype(objectPrototype);
            }
            return nativeObject;
        }
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return Undefined.instance;
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        Scriptable scriptable2;
        Scriptable classPrototype;
        Scriptable createObject = createObject(context, scriptable);
        if (createObject != null) {
            Object call = call(context, scriptable, createObject, objArr);
            scriptable2 = createObject;
            if (call instanceof Scriptable) {
                scriptable2 = (Scriptable) call;
            }
        } else {
            Object call2 = call(context, scriptable, null, objArr);
            if (!(call2 instanceof Scriptable)) {
                throw new IllegalStateException("Bad implementaion of call as constructor, name=" + getFunctionName() + " in " + getClass().getName());
            }
            Scriptable scriptable3 = (Scriptable) call2;
            if (scriptable3.getPrototype() == null && scriptable3 != (classPrototype = getClassPrototype())) {
                scriptable3.setPrototype(classPrototype);
            }
            scriptable2 = scriptable3;
            if (scriptable3.getParentScope() == null) {
                Scriptable parentScope = getParentScope();
                scriptable2 = scriptable3;
                if (scriptable3 != parentScope) {
                    scriptable3.setParentScope(parentScope);
                    scriptable2 = scriptable3;
                }
            }
        }
        return scriptable2;
    }

    public Scriptable createObject(Context context, Scriptable scriptable) {
        NativeObject nativeObject = new NativeObject();
        nativeObject.setPrototype(getClassPrototype());
        nativeObject.setParentScope(getParentScope());
        return nativeObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String decompile(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        if ((i2 & 1) == 0) {
            z = false;
        }
        if (!z) {
            sb.append("function ");
            sb.append(getFunctionName());
            sb.append("() {\n\t");
        }
        sb.append("[native code, arity=");
        sb.append(getArity());
        sb.append("]\n");
        if (!z) {
            sb.append("}\n");
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        Scriptable scriptable3;
        if (!idFunctionObject.hasTag(FUNCTION_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        boolean z = true;
        switch (methodId) {
            case 1:
                return jsConstructor(context, scriptable, objArr);
            case 2:
                return realFunction(scriptable2, idFunctionObject).decompile(ScriptRuntime.toInt32(objArr, 0), 0);
            case 3:
                BaseFunction realFunction = realFunction(scriptable2, idFunctionObject);
                int i = 0;
                int i2 = 2;
                if (objArr.length != 0) {
                    int int32 = ScriptRuntime.toInt32(objArr[0]);
                    i = 0;
                    i2 = 2;
                    if (int32 >= 0) {
                        i = int32;
                        i2 = 0;
                    }
                }
                return realFunction.decompile(i, i2);
            case 4:
            case 5:
                if (methodId != 4) {
                    z = false;
                }
                return ScriptRuntime.applyOrCall(z, context, scriptable, scriptable2, objArr);
            case 6:
                if (!(scriptable2 instanceof Callable)) {
                    throw ScriptRuntime.notFunctionError(scriptable2);
                }
                Callable callable = (Callable) scriptable2;
                int length = objArr.length;
                if (length > 0) {
                    scriptable3 = ScriptRuntime.toObjectOrNull(context, objArr[0], scriptable);
                    int i3 = length - 1;
                    objArr2 = new Object[i3];
                    System.arraycopy(objArr, 1, objArr2, 0, i3);
                } else {
                    objArr2 = ScriptRuntime.emptyArgs;
                    scriptable3 = null;
                }
                return new BoundFunction(context, scriptable, callable, scriptable3, objArr2);
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        idFunctionObject.setPrototype(this);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int i2;
        int length = str.length();
        if (length != 9) {
            switch (length) {
                case 4:
                    str2 = "name";
                    i = 3;
                    break;
                case 5:
                    str2 = "arity";
                    i = 2;
                    break;
                case 6:
                    str2 = "length";
                    i = 1;
                    break;
                default:
                    str2 = null;
                    i = 0;
                    break;
            }
        } else {
            char charAt = str.charAt(0);
            if (charAt == 'a') {
                str2 = "arguments";
                i = 5;
            } else {
                if (charAt == 'p') {
                    str2 = "prototype";
                    i = 4;
                }
                str2 = null;
                i = 0;
            }
        }
        int i3 = i;
        if (str2 != null) {
            i3 = i;
            if (str2 != str) {
                i3 = i;
                if (!str2.equals(str)) {
                    i3 = 0;
                }
            }
        }
        if (i3 == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i3) {
            case 1:
            case 2:
            case 3:
                i2 = 7;
                break;
            case 4:
                if (hasPrototypeProperty()) {
                    i2 = this.prototypePropertyAttributes;
                    break;
                } else {
                    return 0;
                }
            case 5:
                i2 = this.argumentsAttributes;
                break;
            default:
                throw new IllegalStateException();
        }
        return instanceIdInfo(i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length == 8) {
            char charAt = str.charAt(3);
            if (charAt == 'o') {
                str2 = "toSource";
            } else {
                if (charAt == 't') {
                    str2 = "toString";
                    i = 2;
                }
                str2 = null;
                i = 0;
            }
        } else if (length != 11) {
            switch (length) {
                case 4:
                    char charAt2 = str.charAt(0);
                    if (charAt2 != 'b') {
                        if (charAt2 == 'c') {
                            str2 = NotificationCompat.CATEGORY_CALL;
                            i = 5;
                            break;
                        }
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        str2 = "bind";
                        i = 6;
                        break;
                    }
                case 5:
                    str2 = "apply";
                    i = 4;
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

    public int getArity() {
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Function";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Scriptable getClassPrototype() {
        Object prototypeProperty = getPrototypeProperty();
        return prototypeProperty instanceof Scriptable ? (Scriptable) prototypeProperty : ScriptableObject.getObjectPrototype(this);
    }

    public String getFunctionName() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 1:
                return "length";
            case 2:
                return "arity";
            case 3:
                return "name";
            case 4:
                return "prototype";
            case 5:
                return "arguments";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i) {
            case 1:
                return ScriptRuntime.wrapInt(getLength());
            case 2:
                return ScriptRuntime.wrapInt(getArity());
            case 3:
                return getFunctionName();
            case 4:
                return getPrototypeProperty();
            case 5:
                return getArguments();
            default:
                return super.getInstanceIdValue(i);
        }
    }

    public int getLength() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object getPrototypeProperty() {
        Object obj;
        Object obj2 = this.prototypeProperty;
        if (obj2 == null) {
            obj = this instanceof NativeFunction ? setupDefaultPrototype() : Undefined.instance;
        } else {
            obj = obj2;
            if (obj2 == UniqueTag.NULL_VALUE) {
                obj = null;
            }
        }
        return obj;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return avoidObjectDetection() ? "undefined" : "function";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        Object property = ScriptableObject.getProperty(this, "prototype");
        if (property instanceof Scriptable) {
            return ScriptRuntime.jsDelegatesTo(scriptable, (Scriptable) property);
        }
        throw ScriptRuntime.typeError1("msg.instanceof.bad.prototype", getFunctionName());
    }

    protected boolean hasPrototypeProperty() {
        return this.prototypeProperty != null || (this instanceof NativeFunction);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                i2 = 0;
                str = "toString";
                break;
            case 3:
                str = "toSource";
                break;
            case 4:
                i2 = 2;
                str = "apply";
                break;
            case 5:
                str = NotificationCompat.CATEGORY_CALL;
                break;
            case 6:
                str = "bind";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(FUNCTION_TAG, i, str, i2);
    }

    public void setImmunePrototypeProperty(Object obj) {
        if ((this.prototypePropertyAttributes & 1) != 0) {
            throw new IllegalStateException();
        }
        if (obj == null) {
            obj = UniqueTag.NULL_VALUE;
        }
        this.prototypeProperty = obj;
        this.prototypePropertyAttributes = 7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        switch (i) {
            case 4:
                this.prototypePropertyAttributes = i2;
                return;
            case 5:
                this.argumentsAttributes = i2;
                return;
            default:
                super.setInstanceIdAttributes(i, i2);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        switch (i) {
            case 1:
            case 2:
            case 3:
                return;
            case 4:
                if ((this.prototypePropertyAttributes & 1) == 0) {
                    if (obj == null) {
                        obj = UniqueTag.NULL_VALUE;
                    }
                    this.prototypeProperty = obj;
                    return;
                }
                return;
            case 5:
                if (obj == NOT_FOUND) {
                    Kit.codeBug();
                }
                if (defaultHas("arguments")) {
                    defaultPut("arguments", obj);
                    return;
                } else if ((this.argumentsAttributes & 1) == 0) {
                    this.argumentsObj = obj;
                    return;
                } else {
                    return;
                }
            default:
                super.setInstanceIdValue(i, obj);
                return;
        }
    }
}
