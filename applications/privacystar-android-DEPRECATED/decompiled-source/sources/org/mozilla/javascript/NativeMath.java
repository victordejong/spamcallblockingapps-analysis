package org.mozilla.javascript;

import com.privacystar.core.data.model.LogItemFields;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeMath.class */
public final class NativeMath extends IdScriptableObject {
    private static final int Id_E = 20;
    private static final int Id_LN10 = 22;
    private static final int Id_LN2 = 23;
    private static final int Id_LOG10E = 25;
    private static final int Id_LOG2E = 24;
    private static final int Id_PI = 21;
    private static final int Id_SQRT1_2 = 26;
    private static final int Id_SQRT2 = 27;
    private static final int Id_abs = 2;
    private static final int Id_acos = 3;
    private static final int Id_asin = 4;
    private static final int Id_atan = 5;
    private static final int Id_atan2 = 6;
    private static final int Id_ceil = 7;
    private static final int Id_cos = 8;
    private static final int Id_exp = 9;
    private static final int Id_floor = 10;
    private static final int Id_log = 11;
    private static final int Id_max = 12;
    private static final int Id_min = 13;
    private static final int Id_pow = 14;
    private static final int Id_random = 15;
    private static final int Id_round = 16;
    private static final int Id_sin = 17;
    private static final int Id_sqrt = 18;
    private static final int Id_tan = 19;
    private static final int Id_toSource = 1;
    private static final int LAST_METHOD_ID = 19;
    private static final Object MATH_TAG = "Math";
    private static final int MAX_ID = 27;
    static final long serialVersionUID = -8838847185801131569L;

    private NativeMath() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        NativeMath nativeMath = new NativeMath();
        nativeMath.activatePrototypeMap(27);
        nativeMath.setPrototype(getObjectPrototype(scriptable));
        nativeMath.setParentScope(scriptable);
        if (z) {
            nativeMath.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "Math", nativeMath, 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cf, code lost:
        if (r6 < 1.0d) goto L_0x009e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e2, code lost:
        if (r0 > 0) goto L_0x009e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010a, code lost:
        if (r0 > 0) goto L_0x010d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011b, code lost:
        if (r0 > 0) goto L_0x009e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double js_pow(double r6, double r8) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeMath.js_pow(double, double):double");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0137, code lost:
        if (r0 != 0.0d) goto L_0x013a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84, types: [double] */
    /* JADX WARN: Type inference failed for: r0v86, types: [double] */
    /* JADX WARN: Type inference failed for: r0v93, types: [double] */
    /* JADX WARN: Type inference failed for: r16v10, types: [double] */
    /* JADX WARN: Type inference failed for: r16v11, types: [double] */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13, types: [double] */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v15, types: [double] */
    /* JADX WARN: Type inference failed for: r16v16, types: [double] */
    /* JADX WARN: Type inference failed for: r16v17, types: [double] */
    /* JADX WARN: Type inference failed for: r16v19, types: [double] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v22, types: [double] */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v26, types: [double] */
    /* JADX WARN: Type inference failed for: r16v27, types: [double] */
    /* JADX WARN: Type inference failed for: r16v28 */
    /* JADX WARN: Type inference failed for: r16v29 */
    /* JADX WARN: Type inference failed for: r16v3, types: [double] */
    /* JADX WARN: Type inference failed for: r16v30 */
    /* JADX WARN: Type inference failed for: r16v31 */
    /* JADX WARN: Type inference failed for: r16v32 */
    /* JADX WARN: Type inference failed for: r16v33, types: [double] */
    /* JADX WARN: Type inference failed for: r16v34, types: [double] */
    /* JADX WARN: Type inference failed for: r16v35 */
    /* JADX WARN: Type inference failed for: r16v36, types: [double] */
    /* JADX WARN: Type inference failed for: r16v37 */
    /* JADX WARN: Type inference failed for: r16v38, types: [double] */
    /* JADX WARN: Type inference failed for: r16v39, types: [double] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7, types: [double] */
    /* JADX WARN: Type inference failed for: r16v8, types: [double] */
    /* JADX WARN: Type inference failed for: r16v9, types: [double] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r8, org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeMath.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02d0  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeMath.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Math";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        double d;
        String str;
        String str2;
        if (i <= 19) {
            int i2 = 1;
            switch (i) {
                case 1:
                    str2 = "toSource";
                    i2 = 0;
                    break;
                case 2:
                    str2 = "abs";
                    break;
                case 3:
                    str2 = "acos";
                    break;
                case 4:
                    str2 = "asin";
                    break;
                case 5:
                    str2 = "atan";
                    break;
                case 6:
                    str2 = "atan2";
                    i2 = 2;
                    break;
                case 7:
                    str2 = "ceil";
                    break;
                case 8:
                    str2 = "cos";
                    break;
                case 9:
                    str2 = "exp";
                    break;
                case 10:
                    str2 = "floor";
                    break;
                case 11:
                    str2 = LogItemFields.LOG;
                    break;
                case 12:
                    str2 = "max";
                    i2 = 2;
                    break;
                case 13:
                    str2 = "min";
                    i2 = 2;
                    break;
                case 14:
                    str2 = "pow";
                    i2 = 2;
                    break;
                case 15:
                    str2 = "random";
                    i2 = 0;
                    break;
                case 16:
                    str2 = "round";
                    break;
                case 17:
                    str2 = "sin";
                    break;
                case 18:
                    str2 = "sqrt";
                    break;
                case 19:
                    str2 = "tan";
                    break;
                default:
                    throw new IllegalStateException(String.valueOf(i));
            }
            initPrototypeMethod(MATH_TAG, i, str2, i2);
            return;
        }
        switch (i) {
            case 20:
                d = 2.718281828459045d;
                str = "E";
                break;
            case 21:
                d = 3.141592653589793d;
                str = "PI";
                break;
            case 22:
                d = 2.302585092994046d;
                str = "LN10";
                break;
            case 23:
                d = 0.6931471805599453d;
                str = "LN2";
                break;
            case 24:
                d = 1.4426950408889634d;
                str = "LOG2E";
                break;
            case 25:
                d = 0.4342944819032518d;
                str = "LOG10E";
                break;
            case 26:
                d = 0.7071067811865476d;
                str = "SQRT1_2";
                break;
            case 27:
                d = 1.4142135623730951d;
                str = "SQRT2";
                break;
            default:
                throw new IllegalStateException(String.valueOf(i));
        }
        initPrototypeValue(i, str, ScriptRuntime.wrapNumber(d), 7);
    }
}
