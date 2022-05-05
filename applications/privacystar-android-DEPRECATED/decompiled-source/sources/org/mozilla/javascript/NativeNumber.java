package org.mozilla.javascript;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeNumber.class */
public final class NativeNumber extends IdScriptableObject {
    private static final int Id_constructor = 1;
    private static final int Id_toExponential = 7;
    private static final int Id_toFixed = 6;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toPrecision = 8;
    private static final int Id_toSource = 4;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 5;
    private static final int MAX_PRECISION = 100;
    private static final int MAX_PROTOTYPE_ID = 8;
    private static final Object NUMBER_TAG = "Number";
    static final long serialVersionUID = 3504516769741512101L;
    private double doubleValue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeNumber(double d) {
        this.doubleValue = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeNumber(0.0d).exportAsJSClass(8, scriptable, z);
    }

    private static String num_to(double d, Object[] objArr, int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (objArr.length != 0) {
            double integer = ScriptRuntime.toInteger(objArr[0]);
            if (integer < i3 || integer > 100.0d) {
                throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage1("msg.bad.precision", ScriptRuntime.toString(objArr[0])));
            }
            i5 = ScriptRuntime.toInt32(integer);
            i = i2;
        }
        StringBuilder sb = new StringBuilder();
        DToA.JS_dtostr(sb, i, i5 + i4, d);
        return sb.toString();
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(NUMBER_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        double d = 0.0d;
        if (methodId == 1) {
            if (objArr.length >= 1) {
                d = ScriptRuntime.toNumber(objArr[0]);
            }
            return scriptable2 == null ? new NativeNumber(d) : ScriptRuntime.wrapNumber(d);
        } else if (!(scriptable2 instanceof NativeNumber)) {
            throw incompatibleCallError(idFunctionObject);
        } else {
            double d2 = ((NativeNumber) scriptable2).doubleValue;
            switch (methodId) {
                case 2:
                case 3:
                    int i = 10;
                    if (objArr.length != 0) {
                        i = objArr[0] == Undefined.instance ? 10 : ScriptRuntime.toInt32(objArr[0]);
                    }
                    return ScriptRuntime.numberToString(d2, i);
                case 4:
                    return "(new Number(" + ScriptRuntime.toString(d2) + "))";
                case 5:
                    return ScriptRuntime.wrapNumber(d2);
                case 6:
                    return num_to(d2, objArr, 2, 2, -20, 0);
                case 7:
                    return Double.isNaN(d2) ? "NaN" : Double.isInfinite(d2) ? d2 >= 0.0d ? "Infinity" : "-Infinity" : num_to(d2, objArr, 1, 3, 0, 1);
                case 8:
                    return (objArr.length == 0 || objArr[0] == Undefined.instance) ? ScriptRuntime.numberToString(d2, 10) : Double.isNaN(d2) ? "NaN" : Double.isInfinite(d2) ? d2 >= 0.0d ? "Infinity" : "-Infinity" : num_to(d2, objArr, 0, 4, 1, 0);
                default:
                    throw new IllegalArgumentException(String.valueOf(methodId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        idFunctionObject.defineProperty("NaN", ScriptRuntime.NaNobj, 7);
        idFunctionObject.defineProperty("POSITIVE_INFINITY", ScriptRuntime.wrapNumber(Double.POSITIVE_INFINITY), 7);
        idFunctionObject.defineProperty("NEGATIVE_INFINITY", ScriptRuntime.wrapNumber(Double.NEGATIVE_INFINITY), 7);
        idFunctionObject.defineProperty("MAX_VALUE", ScriptRuntime.wrapNumber(Double.MAX_VALUE), 7);
        idFunctionObject.defineProperty("MIN_VALUE", ScriptRuntime.wrapNumber(Double.MIN_VALUE), 7);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int i = 3;
        switch (str.length()) {
            case 7:
                char charAt = str.charAt(0);
                if (charAt != 't') {
                    if (charAt == 'v') {
                        str2 = "valueOf";
                        i = 5;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "toFixed";
                    i = 6;
                    break;
                }
            case 8:
                char charAt2 = str.charAt(3);
                if (charAt2 != 'o') {
                    if (charAt2 == 't') {
                        str2 = "toString";
                        i = 2;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "toSource";
                    i = 4;
                    break;
                }
            case 9:
            case 10:
            case 12:
            default:
                str2 = null;
                i = 0;
                break;
            case 11:
                char charAt3 = str.charAt(0);
                if (charAt3 != 'c') {
                    if (charAt3 == 't') {
                        str2 = "toPrecision";
                        i = 8;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "constructor";
                    i = 1;
                    break;
                }
            case 13:
                str2 = "toExponential";
                i = 7;
                break;
            case 14:
                str2 = "toLocaleString";
                break;
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

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Number";
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
                str = "toString";
                break;
            case 3:
                str = "toLocaleString";
                break;
            case 4:
                str = "toSource";
                i2 = 0;
                break;
            case 5:
                str = "valueOf";
                i2 = 0;
                break;
            case 6:
                str = "toFixed";
                break;
            case 7:
                str = "toExponential";
                break;
            case 8:
                str = "toPrecision";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(NUMBER_TAG, i, str, i2);
    }

    public String toString() {
        return ScriptRuntime.numberToString(this.doubleValue, 10);
    }
}
