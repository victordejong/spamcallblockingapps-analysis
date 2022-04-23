package org.mozilla.javascript;

import java.io.Serializable;
import kotlin.jvm.internal.CharCompanionObject;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.xml.XMLLib;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeGlobal.class */
public class NativeGlobal implements Serializable, IdFunctionCall {
    private static final Object FTAG = "Global";
    private static final int INVALID_UTF8 = Integer.MAX_VALUE;
    private static final int Id_decodeURI = 1;
    private static final int Id_decodeURIComponent = 2;
    private static final int Id_encodeURI = 3;
    private static final int Id_encodeURIComponent = 4;
    private static final int Id_escape = 5;
    private static final int Id_eval = 6;
    private static final int Id_isFinite = 7;
    private static final int Id_isNaN = 8;
    private static final int Id_isXMLName = 9;
    private static final int Id_new_CommonError = 14;
    private static final int Id_parseFloat = 10;
    private static final int Id_parseInt = 11;
    private static final int Id_unescape = 12;
    private static final int Id_uneval = 13;
    private static final int LAST_SCOPE_FUNCTION_ID = 13;
    private static final String URI_DECODE_RESERVED = ";/?:@&=+$,#";
    static final long serialVersionUID = 6080442165748707530L;

    @Deprecated
    public static EcmaError constructError(Context context, String str, String str2, Scriptable scriptable) {
        return ScriptRuntime.constructError(str, str2);
    }

    @Deprecated
    public static EcmaError constructError(Context context, String str, String str2, Scriptable scriptable, String str3, int i, int i2, String str4) {
        return ScriptRuntime.constructError(str, str2, str3, i, str4, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b9, code lost:
        if (r13 == 65535) goto L_0x01bc;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String decode(java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeGlobal.decode(java.lang.String, boolean):java.lang.String");
    }

    private static String encode(String str, boolean z) {
        int i;
        int length = str.length();
        StringBuilder sb = null;
        byte[] bArr = null;
        int i2 = 0;
        while (i2 != length) {
            char charAt = str.charAt(i2);
            if (encodeUnescaped(charAt, z)) {
                i = i2;
                sb = sb;
                bArr = bArr;
                if (sb != null) {
                    sb.append(charAt);
                    i = i2;
                    sb = sb;
                    bArr = bArr;
                }
            } else {
                StringBuilder sb2 = sb;
                if (sb == null) {
                    sb2 = new StringBuilder(length + 3);
                    sb2.append(str);
                    sb2.setLength(i2);
                    bArr = new byte[6];
                }
                if (56320 > charAt || charAt > 57343) {
                    i = i2;
                    int i3 = charAt;
                    if (charAt >= 55296) {
                        if (56319 < charAt) {
                            i = i2;
                            i3 = charAt;
                        } else {
                            i = i2 + 1;
                            if (i == length) {
                                throw uriError();
                            }
                            char charAt2 = str.charAt(i);
                            if (56320 > charAt2 || charAt2 > 57343) {
                                throw uriError();
                            }
                            i3 = ((charAt - 55296) << 10) + (charAt2 - CharCompanionObject.MIN_LOW_SURROGATE) + 65536;
                        }
                    }
                    int oneUcs4ToUtf8Char = oneUcs4ToUtf8Char(bArr, i3);
                    int i4 = 0;
                    while (true) {
                        sb = sb2;
                        bArr = bArr;
                        if (i4 < oneUcs4ToUtf8Char) {
                            int i5 = bArr[i4] & 255;
                            sb2.append('%');
                            sb2.append(toHexChar(i5 >>> 4));
                            sb2.append(toHexChar(i5 & 15));
                            i4++;
                        }
                    }
                } else {
                    throw uriError();
                }
            }
            i2 = i + 1;
        }
        if (sb != null) {
            str = sb.toString();
        }
        return str;
    }

    private static boolean encodeUnescaped(char c, boolean z) {
        boolean z2 = true;
        if ('A' <= c && c <= 'Z') {
            return true;
        }
        if ('a' <= c && c <= 'z') {
            return true;
        }
        if (('0' <= c && c <= '9') || "-_.!~*'()".indexOf(c) >= 0) {
            return true;
        }
        if (!z) {
            return false;
        }
        if (URI_DECODE_RESERVED.indexOf(c) < 0) {
            z2 = false;
        }
        return z2;
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        TopLevel.NativeErrors[] values;
        int i;
        String str;
        NativeGlobal nativeGlobal = new NativeGlobal();
        for (int i2 = 1; i2 <= 13; i2++) {
            switch (i2) {
                case 1:
                    str = "decodeURI";
                    i = 1;
                    break;
                case 2:
                    str = "decodeURIComponent";
                    i = 1;
                    break;
                case 3:
                    str = "encodeURI";
                    i = 1;
                    break;
                case 4:
                    str = "encodeURIComponent";
                    i = 1;
                    break;
                case 5:
                    str = "escape";
                    i = 1;
                    break;
                case 6:
                    str = "eval";
                    i = 1;
                    break;
                case 7:
                    str = "isFinite";
                    i = 1;
                    break;
                case 8:
                    str = "isNaN";
                    i = 1;
                    break;
                case 9:
                    str = "isXMLName";
                    i = 1;
                    break;
                case 10:
                    str = "parseFloat";
                    i = 1;
                    break;
                case 11:
                    str = "parseInt";
                    i = 2;
                    break;
                case 12:
                    str = "unescape";
                    i = 1;
                    break;
                case 13:
                    str = "uneval";
                    i = 1;
                    break;
                default:
                    throw Kit.codeBug();
            }
            IdFunctionObject idFunctionObject = new IdFunctionObject(nativeGlobal, FTAG, i2, str, i, scriptable);
            if (z) {
                idFunctionObject.sealObject();
            }
            idFunctionObject.exportAsScopeProperty();
        }
        ScriptableObject.defineProperty(scriptable, "NaN", ScriptRuntime.NaNobj, 7);
        ScriptableObject.defineProperty(scriptable, "Infinity", ScriptRuntime.wrapNumber(Double.POSITIVE_INFINITY), 7);
        ScriptableObject.defineProperty(scriptable, "undefined", Undefined.instance, 7);
        for (TopLevel.NativeErrors nativeErrors : TopLevel.NativeErrors.values()) {
            if (nativeErrors != TopLevel.NativeErrors.Error) {
                String name = nativeErrors.name();
                ScriptableObject scriptableObject = (ScriptableObject) ScriptRuntime.newBuiltinObject(context, scriptable, TopLevel.Builtins.Error, ScriptRuntime.emptyArgs);
                scriptableObject.put("name", scriptableObject, name);
                scriptableObject.put("message", scriptableObject, "");
                IdFunctionObject idFunctionObject2 = new IdFunctionObject(nativeGlobal, FTAG, 14, name, 1, scriptable);
                idFunctionObject2.markAsConstructor(scriptableObject);
                scriptableObject.put("constructor", scriptableObject, idFunctionObject2);
                scriptableObject.setAttributes("constructor", 2);
                if (z) {
                    scriptableObject.sealObject();
                    idFunctionObject2.sealObject();
                }
                idFunctionObject2.exportAsScopeProperty();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isEvalFunction(Object obj) {
        if (!(obj instanceof IdFunctionObject)) {
            return false;
        }
        IdFunctionObject idFunctionObject = (IdFunctionObject) obj;
        return idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0035, code lost:
        if ((r0 & (-8)) != 0) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object js_escape(java.lang.Object[] r6) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeGlobal.js_escape(java.lang.Object[]):java.lang.Object");
    }

    private Object js_eval(Context context, Scriptable scriptable, Object[] objArr) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        return ScriptRuntime.evalSpecial(context, topLevelScope, topLevelScope, objArr, "eval code", 1);
    }

    private Object js_parseFloat(Object[] objArr) {
        int i;
        if (objArr.length < 1) {
            return ScriptRuntime.NaNobj;
        }
        String scriptRuntime = ScriptRuntime.toString(objArr[0]);
        int length = scriptRuntime.length();
        for (int i2 = 0; i2 != length; i2++) {
            char charAt = scriptRuntime.charAt(i2);
            if (!ScriptRuntime.isStrWhiteSpaceChar(charAt)) {
                if (charAt == '+' || charAt == '-') {
                    i = i2 + 1;
                    if (i == length) {
                        return ScriptRuntime.NaNobj;
                    }
                    charAt = scriptRuntime.charAt(i);
                } else {
                    i = i2;
                }
                if (charAt != 'I') {
                    int i3 = -1;
                    int i4 = -1;
                    boolean z = false;
                    while (true) {
                        i3 = i;
                        if (i < length) {
                            char charAt2 = scriptRuntime.charAt(i);
                            if (charAt2 != '+') {
                                if (charAt2 != 'E' && charAt2 != 'e') {
                                    switch (charAt2) {
                                        case '-':
                                            break;
                                        case '.':
                                            if (i4 != -1) {
                                                i3 = i;
                                                break;
                                            } else {
                                                i4 = i;
                                                i3 = i3;
                                                z = z;
                                                break;
                                            }
                                        default:
                                            switch (charAt2) {
                                                case '0':
                                                case '1':
                                                case '2':
                                                case '3':
                                                case '4':
                                                case '5':
                                                case '6':
                                                case '7':
                                                case '8':
                                                case '9':
                                                    i3 = i3;
                                                    i4 = i4;
                                                    z = z;
                                                    if (i3 != -1) {
                                                        z = true;
                                                        i3 = i3;
                                                        i4 = i4;
                                                        break;
                                                    } else {
                                                        break;
                                                    }
                                                default:
                                                    i3 = i;
                                                    break;
                                            }
                                    }
                                    i++;
                                } else if (i3 != -1) {
                                    i3 = i;
                                } else if (i == length - 1) {
                                    i3 = i;
                                } else {
                                    i3 = i;
                                    i4 = i4;
                                    z = z;
                                    i++;
                                }
                            }
                            if (i3 != i - 1) {
                                i3 = i;
                            } else {
                                i3 = i3;
                                i4 = i4;
                                z = z;
                                if (i == length - 1) {
                                    i3 = i - 1;
                                } else {
                                    i++;
                                }
                            }
                        }
                    }
                    if (i3 == -1 || z) {
                    }
                    try {
                        return Double.valueOf(scriptRuntime.substring(i2, i3));
                    } catch (NumberFormatException e) {
                        return ScriptRuntime.NaNobj;
                    }
                } else if (i + 8 > length || !scriptRuntime.regionMatches(i, "Infinity", 0, 8)) {
                    return ScriptRuntime.NaNobj;
                } else {
                    return ScriptRuntime.wrapNumber(scriptRuntime.charAt(i2) == '-' ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
                }
            }
        }
        return ScriptRuntime.NaNobj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r13 != false) goto L_0x0071;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00de, code lost:
        if (r0 == 'X') goto L_0x00e1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [double] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object js_parseInt(java.lang.Object[] r5) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeGlobal.js_parseInt(java.lang.Object[]):java.lang.Object");
    }

    private Object js_unescape(Object[] objArr) {
        int i;
        int i2;
        String scriptRuntime = ScriptRuntime.toString(objArr, 0);
        int indexOf = scriptRuntime.indexOf(37);
        String str = scriptRuntime;
        if (indexOf >= 0) {
            int length = scriptRuntime.length();
            char[] charArray = scriptRuntime.toCharArray();
            int i3 = indexOf;
            while (indexOf != length) {
                char c = charArray[indexOf];
                int i4 = indexOf + 1;
                indexOf = i4;
                char c2 = c;
                if (c == '%') {
                    indexOf = i4;
                    c2 = c;
                    if (i4 != length) {
                        if (charArray[i4] == 'u') {
                            i2 = i4 + 1;
                            i = i4 + 5;
                        } else {
                            i = i4 + 2;
                            i2 = i4;
                        }
                        indexOf = i4;
                        c2 = c;
                        if (i <= length) {
                            int i5 = 0;
                            while (i2 != i) {
                                i5 = Kit.xDigitToInt(charArray[i2], i5);
                                i2++;
                            }
                            indexOf = i4;
                            c2 = c;
                            if (i5 >= 0) {
                                c2 = (char) i5;
                                indexOf = i;
                            }
                        }
                    }
                }
                charArray[i3] = c2;
                i3++;
            }
            str = new String(charArray, 0, i3);
        }
        return str;
    }

    private static int oneUcs4ToUtf8Char(byte[] bArr, int i) {
        int i2 = 1;
        if ((i & (-128)) == 0) {
            bArr[0] = (byte) i;
        } else {
            int i3 = i >>> 11;
            i2 = 2;
            while (i3 != 0) {
                i3 >>>= 5;
                i2++;
            }
            int i4 = i2;
            while (true) {
                i4--;
                if (i4 <= 0) {
                    break;
                }
                bArr[i4] = (byte) ((i & 63) | 128);
                i >>>= 6;
            }
            bArr[0] = (byte) ((256 - (1 << (8 - i2))) + i);
        }
        return i2;
    }

    private static char toHexChar(int i) {
        if ((i >> 4) != 0) {
            Kit.codeBug();
        }
        return (char) (i < 10 ? i + 48 : (i - 10) + 65);
    }

    private static int unHex(char c) {
        if ('A' <= c && c <= 'F') {
            return (c - 'A') + 10;
        }
        if ('a' <= c && c <= 'f') {
            return (c - 'a') + 10;
        }
        if ('0' > c || c > '9') {
            return -1;
        }
        return c - '0';
    }

    private static int unHex(char c, char c2) {
        int unHex = unHex(c);
        int unHex2 = unHex(c2);
        if (unHex < 0 || unHex2 < 0) {
            return -1;
        }
        return (unHex << 4) | unHex2;
    }

    private static EcmaError uriError() {
        return ScriptRuntime.constructError("URIError", ScriptRuntime.getMessage0("msg.bad.uri"));
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        boolean z;
        if (idFunctionObject.hasTag(FTAG)) {
            int methodId = idFunctionObject.methodId();
            boolean z2 = true;
            boolean z3 = true;
            boolean z4 = true;
            switch (methodId) {
                case 1:
                case 2:
                    String scriptRuntime = ScriptRuntime.toString(objArr, 0);
                    if (methodId != 1) {
                        z3 = false;
                    }
                    return decode(scriptRuntime, z3);
                case 3:
                case 4:
                    String scriptRuntime2 = ScriptRuntime.toString(objArr, 0);
                    if (methodId != 3) {
                        z2 = false;
                    }
                    return encode(scriptRuntime2, z2);
                case 5:
                    return js_escape(objArr);
                case 6:
                    return js_eval(context, scriptable, objArr);
                case 7:
                    if (objArr.length < 1) {
                        z = false;
                    } else {
                        double number = ScriptRuntime.toNumber(objArr[0]);
                        z = false;
                        if (number == number) {
                            z = false;
                            if (number != Double.POSITIVE_INFINITY) {
                                z = false;
                                if (number != Double.NEGATIVE_INFINITY) {
                                    z = true;
                                }
                            }
                        }
                    }
                    return ScriptRuntime.wrapBoolean(z);
                case 8:
                    if (objArr.length >= 1) {
                        double number2 = ScriptRuntime.toNumber(objArr[0]);
                        if (number2 == number2) {
                            z4 = false;
                        }
                    }
                    return ScriptRuntime.wrapBoolean(z4);
                case 9:
                    return ScriptRuntime.wrapBoolean(XMLLib.extractFromScope(scriptable).isXMLName(context, objArr.length == 0 ? Undefined.instance : objArr[0]));
                case 10:
                    return js_parseFloat(objArr);
                case 11:
                    return js_parseInt(objArr);
                case 12:
                    return js_unescape(objArr);
                case 13:
                    return ScriptRuntime.uneval(context, scriptable, objArr.length != 0 ? objArr[0] : Undefined.instance);
                case 14:
                    return NativeError.make(context, scriptable, idFunctionObject, objArr);
            }
        }
        throw idFunctionObject.unknown();
    }
}
