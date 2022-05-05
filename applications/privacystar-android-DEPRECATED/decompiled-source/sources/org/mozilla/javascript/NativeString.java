package org.mozilla.javascript;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.Collator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeString.class */
public final class NativeString extends IdScriptableObject {
    private static final int ConstructorId_charAt = -5;
    private static final int ConstructorId_charCodeAt = -6;
    private static final int ConstructorId_concat = -14;
    private static final int ConstructorId_equalsIgnoreCase = -30;
    private static final int ConstructorId_fromCharCode = -1;
    private static final int ConstructorId_indexOf = -7;
    private static final int ConstructorId_lastIndexOf = -8;
    private static final int ConstructorId_localeCompare = -34;
    private static final int ConstructorId_match = -31;
    private static final int ConstructorId_replace = -33;
    private static final int ConstructorId_search = -32;
    private static final int ConstructorId_slice = -15;
    private static final int ConstructorId_split = -9;
    private static final int ConstructorId_substr = -13;
    private static final int ConstructorId_substring = -10;
    private static final int ConstructorId_toLocaleLowerCase = -35;
    private static final int ConstructorId_toLowerCase = -11;
    private static final int ConstructorId_toUpperCase = -12;
    private static final int Id_anchor = 28;
    private static final int Id_big = 21;
    private static final int Id_blink = 22;
    private static final int Id_bold = 16;
    private static final int Id_charAt = 5;
    private static final int Id_charCodeAt = 6;
    private static final int Id_concat = 14;
    private static final int Id_constructor = 1;
    private static final int Id_equals = 29;
    private static final int Id_equalsIgnoreCase = 30;
    private static final int Id_fixed = 18;
    private static final int Id_fontcolor = 26;
    private static final int Id_fontsize = 25;
    private static final int Id_indexOf = 7;
    private static final int Id_italics = 17;
    private static final int Id_lastIndexOf = 8;
    private static final int Id_length = 1;
    private static final int Id_link = 27;
    private static final int Id_localeCompare = 34;
    private static final int Id_match = 31;
    private static final int Id_replace = 33;
    private static final int Id_search = 32;
    private static final int Id_slice = 15;
    private static final int Id_small = 20;
    private static final int Id_split = 9;
    private static final int Id_strike = 19;
    private static final int Id_sub = 24;
    private static final int Id_substr = 13;
    private static final int Id_substring = 10;
    private static final int Id_sup = 23;
    private static final int Id_toLocaleLowerCase = 35;
    private static final int Id_toLocaleUpperCase = 36;
    private static final int Id_toLowerCase = 11;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    private static final int Id_toUpperCase = 12;
    private static final int Id_trim = 37;
    private static final int Id_trimLeft = 38;
    private static final int Id_trimRight = 39;
    private static final int Id_valueOf = 4;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PROTOTYPE_ID = 39;
    private static final Object STRING_TAG = "String";
    static final long serialVersionUID = 920268368584188687L;
    private CharSequence string;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeString(CharSequence charSequence) {
        this.string = charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeString("").exportAsJSClass(39, scriptable, z);
    }

    private static String js_concat(String str, Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return str;
        }
        if (length == 1) {
            return str.concat(ScriptRuntime.toString(objArr[0]));
        }
        int length2 = str.length();
        String[] strArr = new String[length];
        for (int i = 0; i != length; i++) {
            String scriptRuntime = ScriptRuntime.toString(objArr[i]);
            strArr[i] = scriptRuntime;
            length2 += scriptRuntime.length();
        }
        StringBuilder sb = new StringBuilder(length2);
        sb.append(str);
        for (int i2 = 0; i2 != length; i2++) {
            sb.append(strArr[i2]);
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int js_indexOf(java.lang.String r5, java.lang.Object[] r6) {
        /*
            r0 = r6
            r1 = 0
            java.lang.String r0 = org.mozilla.javascript.ScriptRuntime.toString(r0, r1)
            r7 = r0
            r0 = r6
            r1 = 1
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0, r1)
            r8 = r0
            r0 = r8
            r1 = r5
            int r1 = r1.length()
            double r1 = (double) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0018
            r0 = -1
            return r0
        L_0x0018:
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0024
            r0 = 0
            r10 = r0
        L_0x0024:
            r0 = r5
            r1 = r7
            r2 = r10
            int r2 = (int) r2
            int r0 = r0.indexOf(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.js_indexOf(java.lang.String, java.lang.Object[]):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int js_lastIndexOf(java.lang.String r5, java.lang.Object[] r6) {
        /*
            r0 = r6
            r1 = 0
            java.lang.String r0 = org.mozilla.javascript.ScriptRuntime.toString(r0, r1)
            r7 = r0
            r0 = r6
            r1 = 1
            double r0 = org.mozilla.javascript.ScriptRuntime.toNumber(r0, r1)
            r8 = r0
            r0 = r8
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002e
            r0 = r8
            r1 = r5
            int r1 = r1.length()
            double r1 = (double) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001f
            goto L_0x002e
        L_0x001f:
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0035
            r0 = 0
            r10 = r0
            goto L_0x0035
        L_0x002e:
            r0 = r5
            int r0 = r0.length()
            double r0 = (double) r0
            r10 = r0
        L_0x0035:
            r0 = r5
            r1 = r7
            r2 = r10
            int r2 = (int) r2
            int r0 = r0.lastIndexOf(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.js_lastIndexOf(java.lang.String, java.lang.Object[]):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v4, types: [double] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0, types: [double] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.CharSequence js_slice(java.lang.CharSequence r5, java.lang.Object[] r6) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.js_slice(java.lang.CharSequence, java.lang.Object[]):java.lang.CharSequence");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r0v22, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [double] */
    /* JADX WARN: Type inference failed for: r10v2, types: [double] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0, types: [double] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.CharSequence js_substr(java.lang.CharSequence r5, java.lang.Object[] r6) {
        /*
            r0 = r6
            int r0 = r0.length
            r1 = 1
            if (r0 >= r1) goto L_0x0008
            r0 = r5
            return r0
        L_0x0008:
            r0 = r6
            r1 = 0
            r0 = r0[r1]
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0)
            r7 = r0
            r0 = r5
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0035
            r0 = r7
            r1 = r9
            double r1 = (double) r1
            double r0 = r0 + r1
            r7 = r0
            r0 = r7
            r12 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0048
            r0 = 0
            r12 = r0
            goto L_0x0048
        L_0x0035:
            r0 = r9
            double r0 = (double) r0
            r14 = r0
            r0 = r7
            r12 = r0
            r0 = r7
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0048
            r0 = r14
            r12 = r0
        L_0x0048:
            r0 = r6
            int r0 = r0.length
            r1 = 1
            if (r0 != r1) goto L_0x0056
            r0 = r9
            double r0 = (double) r0
            r10 = r0
            goto L_0x0081
        L_0x0056:
            r0 = r6
            r1 = 1
            r0 = r0[r1]
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0)
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0066
            goto L_0x0069
        L_0x0066:
            r0 = r7
            r10 = r0
        L_0x0069:
            r0 = r10
            r1 = r12
            double r0 = r0 + r1
            r10 = r0
            r0 = r9
            double r0 = (double) r0
            r7 = r0
            r0 = r10
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0081
            r0 = r7
            r10 = r0
            goto L_0x0081
        L_0x0081:
            r0 = r5
            r1 = r12
            int r1 = (int) r1
            r2 = r10
            int r2 = (int) r2
            java.lang.CharSequence r0 = r0.subSequence(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.js_substr(java.lang.CharSequence, java.lang.Object[]):java.lang.CharSequence");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [double] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r13v0, types: [double] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0, types: [double] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.CharSequence js_substring(org.mozilla.javascript.Context r5, java.lang.CharSequence r6, java.lang.Object[] r7) {
        /*
            r0 = r6
            int r0 = r0.length()
            r8 = r0
            r0 = r7
            r1 = 0
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0, r1)
            r9 = r0
            r0 = 0
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001e
            r0 = 0
            r13 = r0
            goto L_0x0032
        L_0x001e:
            r0 = r8
            double r0 = (double) r0
            r15 = r0
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0032
            r0 = r15
            r13 = r0
        L_0x0032:
            r0 = r7
            int r0 = r0.length
            r1 = 1
            if (r0 <= r1) goto L_0x0098
            r0 = r7
            r1 = 1
            r0 = r0[r1]
            java.lang.Object r1 = org.mozilla.javascript.Undefined.instance
            if (r0 != r1) goto L_0x0044
            goto L_0x0098
        L_0x0044:
            r0 = r7
            r1 = 1
            r0 = r0[r1]
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0)
            r15 = r0
            r0 = r15
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0056
            goto L_0x0069
        L_0x0056:
            r0 = r8
            double r0 = (double) r0
            r11 = r0
            r0 = r15
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0065
            goto L_0x0069
        L_0x0065:
            r0 = r15
            r11 = r0
        L_0x0069:
            r0 = r13
            r9 = r0
            r0 = r11
            r15 = r0
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00a0
            r0 = r5
            int r0 = r0.getLanguageVersion()
            r1 = 120(0x78, float:1.68E-43)
            if (r0 == r1) goto L_0x008d
            r0 = r11
            r9 = r0
            r0 = r13
            r15 = r0
            goto L_0x00a0
        L_0x008d:
            r0 = r13
            r15 = r0
            r0 = r13
            r9 = r0
            goto L_0x00a0
        L_0x0098:
            r0 = r8
            double r0 = (double) r0
            r15 = r0
            r0 = r13
            r9 = r0
        L_0x00a0:
            r0 = r6
            r1 = r9
            int r1 = (int) r1
            r2 = r15
            int r2 = (int) r2
            java.lang.CharSequence r0 = r0.subSequence(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.js_substring(org.mozilla.javascript.Context, java.lang.CharSequence, java.lang.Object[]):java.lang.CharSequence");
    }

    private static NativeString realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeString) {
            return (NativeString) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    private static String tagify(Object obj, String str, String str2, Object[] objArr) {
        String scriptRuntime = ScriptRuntime.toString(obj);
        StringBuilder sb = new StringBuilder();
        sb.append('<');
        sb.append(str);
        if (str2 != null) {
            sb.append(' ');
            sb.append(str2);
            sb.append("=\"");
            sb.append(ScriptRuntime.toString(objArr, 0));
            sb.append('\"');
        }
        sb.append('>');
        sb.append(scriptRuntime);
        sb.append("</");
        sb.append(str);
        sb.append('>');
        return sb.toString();
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(STRING_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        Object[] objArr2 = objArr;
        Scriptable scriptable3 = scriptable2;
        while (true) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            if (methodId != -1) {
                switch (methodId) {
                    case ConstructorId_toLocaleLowerCase /* -35 */:
                    case ConstructorId_localeCompare /* -34 */:
                    case ConstructorId_replace /* -33 */:
                    case ConstructorId_search /* -32 */:
                    case ConstructorId_match /* -31 */:
                    case ConstructorId_equalsIgnoreCase /* -30 */:
                        break;
                    default:
                        switch (methodId) {
                            case ConstructorId_slice /* -15 */:
                            case ConstructorId_concat /* -14 */:
                            case ConstructorId_substr /* -13 */:
                            case ConstructorId_toUpperCase /* -12 */:
                            case ConstructorId_toLowerCase /* -11 */:
                            case ConstructorId_substring /* -10 */:
                            case ConstructorId_split /* -9 */:
                            case ConstructorId_lastIndexOf /* -8 */:
                            case ConstructorId_indexOf /* -7 */:
                            case ConstructorId_charCodeAt /* -6 */:
                            case ConstructorId_charAt /* -5 */:
                                break;
                            default:
                                switch (methodId) {
                                    case 1:
                                        String charSequence = objArr2.length >= 1 ? ScriptRuntime.toCharSequence(objArr2[0]) : "";
                                        if (scriptable3 == null) {
                                            return new NativeString(charSequence);
                                        }
                                        if (!(charSequence instanceof String)) {
                                            charSequence = charSequence.toString();
                                        }
                                        return charSequence;
                                    case 2:
                                    case 4:
                                        CharSequence charSequence2 = realThis(scriptable3, idFunctionObject).string;
                                        if (!(charSequence2 instanceof String)) {
                                            charSequence2 = charSequence2.toString();
                                        }
                                        return charSequence2;
                                    case 3:
                                        CharSequence charSequence3 = realThis(scriptable3, idFunctionObject).string;
                                        return "(new String(\"" + ScriptRuntime.escapeString(charSequence3.toString()) + "\"))";
                                    case 5:
                                    case 6:
                                        CharSequence charSequence4 = ScriptRuntime.toCharSequence(scriptable3);
                                        double integer = ScriptRuntime.toInteger(objArr2, 0);
                                        if (integer < 0.0d || integer >= charSequence4.length()) {
                                            return methodId == 5 ? "" : ScriptRuntime.NaNobj;
                                        }
                                        char charAt = charSequence4.charAt((int) integer);
                                        return methodId == 5 ? String.valueOf(charAt) : ScriptRuntime.wrapInt(charAt);
                                    case 7:
                                        return ScriptRuntime.wrapInt(js_indexOf(ScriptRuntime.toString(scriptable3), objArr2));
                                    case 8:
                                        return ScriptRuntime.wrapInt(js_lastIndexOf(ScriptRuntime.toString(scriptable3), objArr2));
                                    case 9:
                                        return ScriptRuntime.checkRegExpProxy(context).js_split(context, scriptable, ScriptRuntime.toString(scriptable3), objArr2);
                                    case 10:
                                        return js_substring(context, ScriptRuntime.toCharSequence(scriptable3), objArr2);
                                    case 11:
                                        return ScriptRuntime.toString(scriptable3).toLowerCase(ScriptRuntime.ROOT_LOCALE);
                                    case 12:
                                        return ScriptRuntime.toString(scriptable3).toUpperCase(ScriptRuntime.ROOT_LOCALE);
                                    case 13:
                                        return js_substr(ScriptRuntime.toCharSequence(scriptable3), objArr2);
                                    case 14:
                                        return js_concat(ScriptRuntime.toString(scriptable3), objArr2);
                                    case 15:
                                        return js_slice(ScriptRuntime.toCharSequence(scriptable3), objArr2);
                                    case 16:
                                        return tagify(scriptable3, "b", null, null);
                                    case 17:
                                        return tagify(scriptable3, "i", null, null);
                                    case 18:
                                        return tagify(scriptable3, "tt", null, null);
                                    case 19:
                                        return tagify(scriptable3, "strike", null, null);
                                    case 20:
                                        return tagify(scriptable3, "small", null, null);
                                    case 21:
                                        return tagify(scriptable3, "big", null, null);
                                    case 22:
                                        return tagify(scriptable3, "blink", null, null);
                                    case 23:
                                        return tagify(scriptable3, "sup", null, null);
                                    case 24:
                                        return tagify(scriptable3, "sub", null, null);
                                    case 25:
                                        return tagify(scriptable3, "font", "size", objArr2);
                                    case 26:
                                        return tagify(scriptable3, "font", "color", objArr2);
                                    case 27:
                                        return tagify(scriptable3, "a", "href", objArr2);
                                    case 28:
                                        return tagify(scriptable3, "a", "name", objArr2);
                                    case 29:
                                    case 30:
                                        String scriptRuntime = ScriptRuntime.toString(scriptable3);
                                        String scriptRuntime2 = ScriptRuntime.toString(objArr2, 0);
                                        return ScriptRuntime.wrapBoolean(methodId == 29 ? scriptRuntime.equals(scriptRuntime2) : scriptRuntime.equalsIgnoreCase(scriptRuntime2));
                                    case 31:
                                    case 32:
                                    case 33:
                                        return ScriptRuntime.checkRegExpProxy(context).action(context, scriptable, scriptable3, objArr2, methodId == 31 ? 1 : methodId == 32 ? 3 : 2);
                                    case 34:
                                        Collator instance = Collator.getInstance(context.getLocale());
                                        instance.setStrength(3);
                                        instance.setDecomposition(1);
                                        return ScriptRuntime.wrapNumber(instance.compare(ScriptRuntime.toString(scriptable3), ScriptRuntime.toString(objArr2, 0)));
                                    case 35:
                                        return ScriptRuntime.toString(scriptable3).toLowerCase(context.getLocale());
                                    case 36:
                                        return ScriptRuntime.toString(scriptable3).toUpperCase(context.getLocale());
                                    case 37:
                                        String scriptRuntime3 = ScriptRuntime.toString(scriptable3);
                                        char[] charArray = scriptRuntime3.toCharArray();
                                        while (i < charArray.length && ScriptRuntime.isJSWhitespaceOrLineTerminator(charArray[i])) {
                                            i++;
                                        }
                                        int length = charArray.length;
                                        while (length > i && ScriptRuntime.isJSWhitespaceOrLineTerminator(charArray[length - 1])) {
                                            length--;
                                        }
                                        return scriptRuntime3.substring(i, length);
                                    case 38:
                                        String scriptRuntime4 = ScriptRuntime.toString(scriptable3);
                                        char[] charArray2 = scriptRuntime4.toCharArray();
                                        while (i3 < charArray2.length && ScriptRuntime.isJSWhitespaceOrLineTerminator(charArray2[i3])) {
                                            i3++;
                                        }
                                        return scriptRuntime4.substring(i3, charArray2.length);
                                    case 39:
                                        String scriptRuntime5 = ScriptRuntime.toString(scriptable3);
                                        char[] charArray3 = scriptRuntime5.toCharArray();
                                        int length2 = charArray3.length;
                                        while (length2 > 0 && ScriptRuntime.isJSWhitespaceOrLineTerminator(charArray3[length2 - 1])) {
                                            length2--;
                                        }
                                        return scriptRuntime5.substring(0, length2);
                                    default:
                                        throw new IllegalArgumentException(String.valueOf(methodId));
                                }
                        }
                }
                if (objArr2.length > 0) {
                    scriptable3 = ScriptRuntime.toObject(context, scriptable, ScriptRuntime.toCharSequence(objArr2[0]));
                    objArr2 = new Object[objArr2.length - 1];
                    while (i2 < objArr2.length) {
                        int i4 = i2 + 1;
                        objArr2[i2] = objArr2[i4];
                        i2 = i4;
                    }
                } else {
                    scriptable3 = ScriptRuntime.toObject(context, scriptable, ScriptRuntime.toCharSequence(scriptable3));
                    objArr2 = objArr2;
                }
                methodId = -methodId;
            } else {
                int length3 = objArr2.length;
                if (length3 < 1) {
                    return "";
                }
                StringBuilder sb = new StringBuilder(length3);
                for (int i5 = 0; i5 != length3; i5++) {
                    sb.append(ScriptRuntime.toUint16(objArr2[i5]));
                }
                return sb.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, STRING_TAG, -1, "fromCharCode", 1);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_charAt, "charAt", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_charCodeAt, "charCodeAt", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_indexOf, "indexOf", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_lastIndexOf, "lastIndexOf", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_split, "split", 3);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_substring, "substring", 3);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_toLowerCase, "toLowerCase", 1);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_toUpperCase, "toUpperCase", 1);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_substr, "substr", 3);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_concat, "concat", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_slice, "slice", 3);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_equalsIgnoreCase, "equalsIgnoreCase", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_match, "match", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_search, FirebaseAnalytics.Event.SEARCH, 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_replace, "replace", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_localeCompare, "localeCompare", 2);
        addIdFunctionProperty(idFunctionObject, STRING_TAG, ConstructorId_toLocaleLowerCase, "toLocaleLowerCase", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return str.equals("length") ? instanceIdInfo(7, 1) : super.findInstanceIdInfo(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x038e  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 933
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return (i < 0 || i >= this.string.length()) ? super.get(i, scriptable) : String.valueOf(this.string.charAt(i));
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "String";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "length" : super.getInstanceIdName(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapInt(this.string.length()) : super.getInstanceIdValue(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLength() {
        return this.string.length();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
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
                str = "toSource";
                break;
            case 4:
                str = "valueOf";
                break;
            case 5:
                str = "charAt";
                i2 = 1;
                break;
            case 6:
                str = "charCodeAt";
                i2 = 1;
                break;
            case 7:
                str = "indexOf";
                i2 = 1;
                break;
            case 8:
                str = "lastIndexOf";
                i2 = 1;
                break;
            case 9:
                str = "split";
                i2 = 2;
                break;
            case 10:
                str = "substring";
                i2 = 2;
                break;
            case 11:
                str = "toLowerCase";
                break;
            case 12:
                str = "toUpperCase";
                break;
            case 13:
                str = "substr";
                i2 = 2;
                break;
            case 14:
                str = "concat";
                i2 = 1;
                break;
            case 15:
                str = "slice";
                i2 = 2;
                break;
            case 16:
                str = "bold";
                break;
            case 17:
                str = "italics";
                break;
            case 18:
                str = "fixed";
                break;
            case 19:
                str = "strike";
                break;
            case 20:
                str = "small";
                break;
            case 21:
                str = "big";
                break;
            case 22:
                str = "blink";
                break;
            case 23:
                str = "sup";
                break;
            case 24:
                str = "sub";
                break;
            case 25:
                str = "fontsize";
                break;
            case 26:
                str = "fontcolor";
                break;
            case 27:
                str = "link";
                break;
            case 28:
                str = "anchor";
                break;
            case 29:
                str = "equals";
                i2 = 1;
                break;
            case 30:
                str = "equalsIgnoreCase";
                i2 = 1;
                break;
            case 31:
                str = "match";
                i2 = 1;
                break;
            case 32:
                str = FirebaseAnalytics.Event.SEARCH;
                i2 = 1;
                break;
            case 33:
                str = "replace";
                i2 = 2;
                break;
            case 34:
                str = "localeCompare";
                i2 = 1;
                break;
            case 35:
                str = "toLocaleLowerCase";
                break;
            case 36:
                str = "toLocaleUpperCase";
                break;
            case 37:
                str = "trim";
                break;
            case 38:
                str = "trimLeft";
                break;
            case 39:
                str = "trimRight";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(STRING_TAG, i, str, i2);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (i < 0 || i >= this.string.length()) {
            super.put(i, scriptable, obj);
        }
    }

    public CharSequence toCharSequence() {
        return this.string;
    }

    public String toString() {
        return this.string instanceof String ? (String) this.string : this.string.toString();
    }
}
