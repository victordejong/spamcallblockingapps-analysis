package org.mozilla.javascript.regexp;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.RegExpProxy;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/RegExpImpl.class */
public class RegExpImpl implements RegExpProxy {
    protected String input;
    protected SubString lastMatch;
    protected SubString lastParen;
    protected SubString leftContext;
    protected boolean multiline;
    protected SubString[] parens;
    protected SubString rightContext;

    private static NativeRegExp createRegExp(Context context, Scriptable scriptable, Object[] objArr, int i, boolean z) {
        NativeRegExp nativeRegExp;
        String str;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        if (objArr.length == 0 || objArr[0] == Undefined.instance) {
            nativeRegExp = new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, "", "", false));
        } else if (objArr[0] instanceof NativeRegExp) {
            nativeRegExp = (NativeRegExp) objArr[0];
        } else {
            String scriptRuntime = ScriptRuntime.toString(objArr[0]);
            if (i < objArr.length) {
                objArr[0] = scriptRuntime;
                str = ScriptRuntime.toString(objArr[i]);
            } else {
                str = null;
            }
            nativeRegExp = new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, scriptRuntime, str, z));
        }
        return nativeRegExp;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void do_replace(org.mozilla.javascript.regexp.GlobData r6, org.mozilla.javascript.Context r7, org.mozilla.javascript.regexp.RegExpImpl r8) {
        /*
            r0 = r6
            java.lang.StringBuilder r0 = r0.charBuf
            r9 = r0
            r0 = r6
            java.lang.String r0 = r0.repstr
            r10 = r0
            r0 = r6
            int r0 = r0.dollar
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            r1 = -1
            if (r0 == r1) goto L_0x0095
            r0 = 1
            int[] r0 = new int[r0]
            r6 = r0
            r0 = 0
            r13 = r0
        L_0x0021:
            r0 = r9
            r1 = r10
            r2 = r13
            r3 = r11
            java.lang.String r1 = r1.substring(r2, r3)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            r2 = r10
            r3 = r11
            r4 = r6
            org.mozilla.javascript.regexp.SubString r0 = interpretDollar(r0, r1, r2, r3, r4)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0076
            r0 = r14
            int r0 = r0.length
            r12 = r0
            r0 = r12
            if (r0 <= 0) goto L_0x0063
            r0 = r9
            r1 = r14
            java.lang.String r1 = r1.str
            r2 = r14
            int r2 = r2.index
            r3 = r14
            int r3 = r3.index
            r4 = r12
            int r3 = r3 + r4
            java.lang.StringBuilder r0 = r0.append(r1, r2, r3)
        L_0x0063:
            r0 = r6
            r1 = 0
            r0 = r0[r1]
            r1 = r11
            int r0 = r0 + r1
            r12 = r0
            r0 = r11
            r1 = r6
            r2 = 0
            r1 = r1[r2]
            int r0 = r0 + r1
            r11 = r0
            goto L_0x007d
        L_0x0076:
            r0 = r11
            r12 = r0
            int r11 = r11 + 1
        L_0x007d:
            r0 = r10
            r1 = 36
            r2 = r11
            int r0 = r0.indexOf(r1, r2)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r11 = r0
            r0 = r15
            if (r0 >= 0) goto L_0x0021
        L_0x0095:
            r0 = r10
            int r0 = r0.length()
            r11 = r0
            r0 = r11
            r1 = r12
            if (r0 <= r1) goto L_0x00b1
            r0 = r9
            r1 = r10
            r2 = r12
            r3 = r11
            java.lang.String r1 = r1.substring(r2, r3)
            java.lang.StringBuilder r0 = r0.append(r1)
        L_0x00b1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.do_replace(org.mozilla.javascript.regexp.GlobData, org.mozilla.javascript.Context, org.mozilla.javascript.regexp.RegExpImpl):void");
    }

    private static int find_split(Context context, Scriptable scriptable, String str, String str2, int i, RegExpProxy regExpProxy, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int i2 = iArr[0];
        int length = str.length();
        int i3 = -1;
        if (i == 120 && scriptable2 == null && str2.length() == 1 && str2.charAt(0) == ' ') {
            int i4 = i2;
            if (i2 == 0) {
                i4 = i2;
                while (i4 < length && Character.isWhitespace(str.charAt(i4))) {
                    i4++;
                }
                iArr[0] = i4;
            }
            int i5 = i4;
            if (i4 == length) {
                return -1;
            }
            while (i5 < length && !Character.isWhitespace(str.charAt(i5))) {
                i5++;
            }
            int i6 = i5;
            while (i6 < length && Character.isWhitespace(str.charAt(i6))) {
                i6++;
            }
            iArr2[0] = i6 - i5;
            return i5;
        } else if (i2 > length) {
            return -1;
        } else {
            if (scriptable2 != null) {
                return regExpProxy.find_split(context, scriptable, str, str2, scriptable2, iArr, iArr2, zArr, strArr);
            }
            if (i != 0 && i < 130 && length == 0) {
                return -1;
            }
            if (str2.length() == 0) {
                if (i != 120) {
                    if (i2 != length) {
                        i3 = i2 + 1;
                    }
                    return i3;
                } else if (i2 != length) {
                    return i2 + 1;
                } else {
                    iArr2[0] = 1;
                    return i2;
                }
            } else if (iArr[0] >= length) {
                return length;
            } else {
                int indexOf = str.indexOf(str2, iArr[0]);
                int i7 = length;
                if (indexOf != -1) {
                    i7 = indexOf;
                }
                return i7;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0132 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.mozilla.javascript.regexp.SubString interpretDollar(org.mozilla.javascript.Context r5, org.mozilla.javascript.regexp.RegExpImpl r6, java.lang.String r7, int r8, int[] r9) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.interpretDollar(org.mozilla.javascript.Context, org.mozilla.javascript.regexp.RegExpImpl, java.lang.String, int, int[]):org.mozilla.javascript.regexp.SubString");
    }

    private static Object matchOrReplace(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, RegExpImpl regExpImpl, GlobData globData, NativeRegExp nativeRegExp) {
        String str = globData.str;
        globData.global = (nativeRegExp.getFlags() & 1) != 0;
        int[] iArr = {0};
        Object obj = null;
        if (globData.mode == 3) {
            Object executeRegExp = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            obj = (executeRegExp == null || !executeRegExp.equals(Boolean.TRUE)) ? -1 : Integer.valueOf(regExpImpl.leftContext.length);
        } else if (globData.global) {
            nativeRegExp.lastIndex = Double.valueOf(0.0d);
            int i = 0;
            while (iArr[0] <= str.length()) {
                obj = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
                if (obj == null || !obj.equals(Boolean.TRUE)) {
                    break;
                }
                if (globData.mode == 1) {
                    match_glob(globData, context, scriptable, i, regExpImpl);
                } else {
                    if (globData.mode != 2) {
                        Kit.codeBug();
                    }
                    SubString subString = regExpImpl.lastMatch;
                    int i2 = globData.leftIndex;
                    int i3 = subString.index;
                    globData.leftIndex = subString.index + subString.length;
                    replace_glob(globData, context, scriptable, regExpImpl, i2, i3 - i2);
                }
                if (regExpImpl.lastMatch.length == 0) {
                    if (iArr[0] == str.length()) {
                        break;
                    }
                    iArr[0] = iArr[0] + 1;
                }
                i++;
            }
        } else {
            obj = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, globData.mode == 2 ? 0 : 1);
        }
        return obj;
    }

    private static void match_glob(GlobData globData, Context context, Scriptable scriptable, int i, RegExpImpl regExpImpl) {
        if (globData.arrayobj == null) {
            globData.arrayobj = context.newArray(scriptable, 0);
        }
        globData.arrayobj.put(i, globData.arrayobj, regExpImpl.lastMatch.toString());
    }

    /* JADX WARN: Finally extract failed */
    private static void replace_glob(GlobData globData, Context context, Scriptable scriptable, RegExpImpl regExpImpl, int i, int i2) {
        int i3;
        String str;
        int i4;
        int indexOf;
        if (globData.lambda != null) {
            SubString[] subStringArr = regExpImpl.parens;
            int length = subStringArr == null ? 0 : subStringArr.length;
            Object[] objArr = new Object[length + 3];
            objArr[0] = regExpImpl.lastMatch.toString();
            for (int i5 = 0; i5 < length; i5++) {
                SubString subString = subStringArr[i5];
                if (subString != null) {
                    objArr[i5 + 1] = subString.toString();
                } else {
                    objArr[i5 + 1] = Undefined.instance;
                }
            }
            objArr[length + 1] = Integer.valueOf(regExpImpl.leftContext.length);
            objArr[length + 2] = globData.str;
            if (regExpImpl != ScriptRuntime.getRegExpProxy(context)) {
                Kit.codeBug();
            }
            RegExpImpl regExpImpl2 = new RegExpImpl();
            regExpImpl2.multiline = regExpImpl.multiline;
            regExpImpl2.input = regExpImpl.input;
            ScriptRuntime.setRegExpProxy(context, regExpImpl2);
            try {
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
                str = ScriptRuntime.toString(globData.lambda.call(context, topLevelScope, topLevelScope, objArr));
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                i3 = str.length();
            } catch (Throwable th) {
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                throw th;
            }
        } else {
            int length2 = globData.repstr.length();
            i3 = length2;
            str = null;
            if (globData.dollar >= 0) {
                int[] iArr = new int[1];
                int i6 = globData.dollar;
                do {
                    SubString interpretDollar = interpretDollar(context, regExpImpl, globData.repstr, i6, iArr);
                    if (interpretDollar != null) {
                        i3 = length2 + (interpretDollar.length - iArr[0]);
                        i4 = i6 + iArr[0];
                    } else {
                        i4 = i6 + 1;
                        i3 = length2;
                    }
                    indexOf = globData.repstr.indexOf(36, i4);
                    length2 = i3;
                    i6 = indexOf;
                } while (indexOf >= 0);
                str = null;
            }
        }
        int i7 = i3 + i2 + regExpImpl.rightContext.length;
        StringBuilder sb = globData.charBuf;
        if (sb == null) {
            sb = new StringBuilder(i7);
            globData.charBuf = sb;
        } else {
            sb.ensureCapacity(globData.charBuf.length() + i7);
        }
        sb.append((CharSequence) regExpImpl.leftContext.str, i, i2 + i);
        if (globData.lambda != null) {
            sb.append(str);
        } else {
            do_replace(globData, context, regExpImpl);
        }
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Object action(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, int i) {
        String str;
        NativeRegExp nativeRegExp;
        String str2;
        Function function;
        Object obj;
        GlobData globData = new GlobData();
        globData.mode = i;
        globData.str = ScriptRuntime.toString(scriptable2);
        switch (i) {
            case 1:
                Object matchOrReplace = matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, createRegExp(context, scriptable, objArr, 1, false));
                if (globData.arrayobj != null) {
                    matchOrReplace = globData.arrayobj;
                }
                return matchOrReplace;
            case 2:
                boolean z = (objArr.length > 0 && (objArr[0] instanceof NativeRegExp)) || objArr.length > 2;
                if (z) {
                    nativeRegExp = createRegExp(context, scriptable, objArr, 2, true);
                    str = null;
                } else {
                    str = ScriptRuntime.toString(objArr.length < 1 ? Undefined.instance : objArr[0]);
                    nativeRegExp = null;
                }
                Object obj2 = objArr.length < 2 ? Undefined.instance : objArr[1];
                if (obj2 instanceof Function) {
                    function = (Function) obj2;
                    str2 = null;
                } else {
                    str2 = ScriptRuntime.toString(obj2);
                    function = null;
                }
                globData.lambda = function;
                globData.repstr = str2;
                globData.dollar = str2 == null ? -1 : str2.indexOf(36);
                globData.charBuf = null;
                globData.leftIndex = 0;
                if (z) {
                    obj = matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, nativeRegExp);
                } else {
                    String str3 = globData.str;
                    int indexOf = str3.indexOf(str);
                    if (indexOf >= 0) {
                        int length = str.length();
                        this.lastParen = null;
                        this.leftContext = new SubString(str3, 0, indexOf);
                        this.lastMatch = new SubString(str3, indexOf, length);
                        this.rightContext = new SubString(str3, indexOf + length, (str3.length() - indexOf) - length);
                        obj = Boolean.TRUE;
                    } else {
                        obj = Boolean.FALSE;
                    }
                }
                if (globData.charBuf == null) {
                    if (globData.global || obj == null || !obj.equals(Boolean.TRUE)) {
                        return globData.str;
                    }
                    SubString subString = this.leftContext;
                    replace_glob(globData, context, scriptable, this, subString.index, subString.length);
                }
                SubString subString2 = this.rightContext;
                globData.charBuf.append((CharSequence) subString2.str, subString2.index, subString2.index + subString2.length);
                return globData.charBuf.toString();
            case 3:
                return matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, createRegExp(context, scriptable, objArr, 1, false));
            default:
                throw Kit.codeBug();
        }
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Object compileRegExp(Context context, String str, String str2) {
        return NativeRegExp.compileRE(context, str, str2, false);
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public int find_split(Context context, Scriptable scriptable, String str, String str2, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int i;
        int i2 = iArr[0];
        int length = str.length();
        int languageVersion = context.getLanguageVersion();
        NativeRegExp nativeRegExp = (NativeRegExp) scriptable2;
        while (true) {
            int i3 = iArr[0];
            iArr[0] = i2;
            if (nativeRegExp.executeRegExp(context, scriptable, this, str, iArr, 0) != Boolean.TRUE) {
                iArr[0] = i3;
                iArr2[0] = 1;
                zArr[0] = false;
                return length;
            }
            i = iArr[0];
            iArr[0] = i3;
            zArr[0] = true;
            iArr2[0] = this.lastMatch.length;
            if (iArr2[0] != 0 || i != iArr[0]) {
                break;
            } else if (i != length) {
                i2 = i + 1;
            } else if (languageVersion == 120) {
                iArr2[0] = 1;
            } else {
                i = -1;
            }
        }
        i -= iArr2[0];
        int length2 = this.parens == null ? 0 : this.parens.length;
        strArr[0] = new String[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            strArr[0][i4] = getParenSubString(i4).toString();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubString getParenSubString(int i) {
        SubString subString;
        return (this.parens == null || i >= this.parens.length || (subString = this.parens[i]) == null) ? SubString.emptySubString : subString;
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public boolean isRegExp(Scriptable scriptable) {
        return scriptable instanceof NativeRegExp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
        if (r24.isRegExp(r25) != false) goto L_0x009e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.String[], java.lang.String[][]] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // org.mozilla.javascript.RegExpProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object js_split(org.mozilla.javascript.Context r13, org.mozilla.javascript.Scriptable r14, java.lang.String r15, java.lang.Object[] r16) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.js_split(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.String, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Scriptable wrapRegExp(Context context, Scriptable scriptable, Object obj) {
        return new NativeRegExp(scriptable, (RECompiled) obj);
    }
}
