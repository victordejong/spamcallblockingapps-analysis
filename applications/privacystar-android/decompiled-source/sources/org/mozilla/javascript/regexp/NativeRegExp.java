package org.mozilla.javascript.regexp;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/NativeRegExp.class */
public class NativeRegExp extends IdScriptableObject implements Function {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ANCHOR_BOL = -2;
    private static final int INDEX_LEN = 2;
    private static final int Id_compile = 1;
    private static final int Id_exec = 4;
    private static final int Id_global = 3;
    private static final int Id_ignoreCase = 4;
    private static final int Id_lastIndex = 1;
    private static final int Id_multiline = 5;
    private static final int Id_prefix = 6;
    private static final int Id_source = 2;
    private static final int Id_test = 5;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    public static final int JSREG_FOLD = 2;
    public static final int JSREG_GLOB = 1;
    public static final int JSREG_MULTILINE = 4;
    public static final int MATCH = 1;
    private static final int MAX_INSTANCE_ID = 5;
    private static final int MAX_PROTOTYPE_ID = 6;
    public static final int PREFIX = 2;
    private static final Object REGEXP_TAG = new Object();
    private static final byte REOP_ALNUM = 9;
    private static final byte REOP_ALT = 31;
    private static final byte REOP_ALTPREREQ = 53;
    private static final byte REOP_ALTPREREQ2 = 55;
    private static final byte REOP_ALTPREREQi = 54;
    private static final byte REOP_ASSERT = 41;
    private static final byte REOP_ASSERTNOTTEST = 44;
    private static final byte REOP_ASSERTTEST = 43;
    private static final byte REOP_ASSERT_NOT = 42;
    private static final byte REOP_BACKREF = 13;
    private static final byte REOP_BOL = 2;
    private static final byte REOP_CLASS = 22;
    private static final byte REOP_DIGIT = 7;
    private static final byte REOP_DOT = 6;
    private static final byte REOP_EMPTY = 1;
    private static final byte REOP_END = 57;
    private static final byte REOP_ENDCHILD = 49;
    private static final byte REOP_EOL = 3;
    private static final byte REOP_FLAT = 14;
    private static final byte REOP_FLAT1 = 15;
    private static final byte REOP_FLAT1i = 17;
    private static final byte REOP_FLATi = 16;
    private static final byte REOP_JUMP = 32;
    private static final byte REOP_LPAREN = 29;
    private static final byte REOP_MINIMALOPT = 47;
    private static final byte REOP_MINIMALPLUS = 46;
    private static final byte REOP_MINIMALQUANT = 48;
    private static final byte REOP_MINIMALREPEAT = 52;
    private static final byte REOP_MINIMALSTAR = 45;
    private static final byte REOP_NCLASS = 23;
    private static final byte REOP_NONALNUM = 10;
    private static final byte REOP_NONDIGIT = 8;
    private static final byte REOP_NONSPACE = 12;
    private static final byte REOP_OPT = 28;
    private static final byte REOP_PLUS = 27;
    private static final byte REOP_QUANT = 25;
    private static final byte REOP_REPEAT = 51;
    private static final byte REOP_RPAREN = 30;
    private static final byte REOP_SIMPLE_END = 23;
    private static final byte REOP_SIMPLE_START = 1;
    private static final byte REOP_SPACE = 11;
    private static final byte REOP_STAR = 26;
    private static final byte REOP_UCFLAT1 = 18;
    private static final byte REOP_UCFLAT1i = 19;
    private static final byte REOP_WBDRY = 4;
    private static final byte REOP_WNONBDRY = 5;
    public static final int TEST = 0;
    private static final boolean debug = false;
    static final long serialVersionUID = 4965263491464903264L;
    Object lastIndex;
    private int lastIndexAttr;

    /* renamed from: re */
    private RECompiled f831re;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRegExp() {
        this.lastIndex = Double.valueOf(0.0d);
        this.lastIndexAttr = 6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRegExp(Scriptable scriptable, RECompiled rECompiled) {
        this.lastIndex = Double.valueOf(0.0d);
        this.lastIndexAttr = 6;
        this.f831re = rECompiled;
        this.lastIndex = Double.valueOf(0.0d);
        ScriptRuntime.setBuiltinProtoAndParent(this, scriptable, TopLevel.Builtins.RegExp);
    }

    private static void addCharacterRangeToCharSet(RECharSet rECharSet, char c, char c2) {
        int i = c / '\b';
        int i2 = c2 / '\b';
        if (c2 >= rECharSet.length || c > c2) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        char c3 = (char) (c & 7);
        char c4 = (char) (c2 & 7);
        if (i == i2) {
            byte[] bArr = rECharSet.bits;
            bArr[i] = (byte) (((255 >> (7 - (c4 - c3))) << c3) | bArr[i]);
            return;
        }
        byte[] bArr2 = rECharSet.bits;
        bArr2[i] = (byte) ((255 << c3) | bArr2[i]);
        int i3 = i;
        while (true) {
            i3++;
            if (i3 < i2) {
                rECharSet.bits[i3] = (byte) (-1);
            } else {
                byte[] bArr3 = rECharSet.bits;
                bArr3[i2] = (byte) (bArr3[i2] | (255 >> (7 - c4)));
                return;
            }
        }
    }

    private static void addCharacterToCharSet(RECharSet rECharSet, char c) {
        int i = c / '\b';
        if (c >= rECharSet.length) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        byte[] bArr = rECharSet.bits;
        bArr[i] = (byte) ((1 << (c & 7)) | bArr[i]);
    }

    private static int addIndex(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw Kit.codeBug();
        } else if (i2 > 65535) {
            throw Context.reportRuntimeError("Too complex regexp");
        } else {
            bArr[i] = (byte) (i2 >> 8);
            bArr[i + 1] = (byte) i2;
            return i + 2;
        }
    }

    private static boolean backrefMatcher(REGlobalData rEGlobalData, int i, String str, int i2) {
        if (rEGlobalData.parens == null || i >= rEGlobalData.parens.length) {
            return false;
        }
        int parensIndex = rEGlobalData.parensIndex(i);
        if (parensIndex == -1) {
            return true;
        }
        int parensLength = rEGlobalData.parensLength(i);
        if (rEGlobalData.f835cp + parensLength > i2) {
            return false;
        }
        if ((rEGlobalData.regexp.flags & 2) != 0) {
            for (int i3 = 0; i3 < parensLength; i3++) {
                char charAt = str.charAt(parensIndex + i3);
                char charAt2 = str.charAt(rEGlobalData.f835cp + i3);
                if (!(charAt == charAt2 || upcase(charAt) == upcase(charAt2))) {
                    return false;
                }
            }
        } else if (!str.regionMatches(parensIndex, str, rEGlobalData.f835cp, parensLength)) {
            return false;
        }
        rEGlobalData.f835cp += parensLength;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0265 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0030 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0157 A[LOOP:1: B:36:0x0127->B:43:0x0157, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02b3  */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25, types: [int] */
    /* JADX WARN: Type inference failed for: r9v26, types: [int] */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState r4, org.mozilla.javascript.regexp.RENode r5, char[] r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 787
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState, org.mozilla.javascript.regexp.RENode, char[], int, int):boolean");
    }

    private static boolean classMatcher(REGlobalData rEGlobalData, RECharSet rECharSet, char c) {
        if (!rECharSet.converted) {
            processCharSet(rEGlobalData, rECharSet);
        }
        boolean z = true;
        if (rECharSet.length != 0) {
            z = true;
            if (c < rECharSet.length) {
                z = (rECharSet.bits[c >> 3] & (1 << (c & 7))) == 0;
            }
        }
        return rECharSet.sense ^ z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RECompiled compileRE(Context context, String str, String str2, boolean z) {
        int i;
        CompilerState compilerState;
        int i2;
        RECompiled rECompiled = new RECompiled(str);
        int length = str.length();
        if (str2 != null) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= str2.length()) {
                    break;
                }
                char charAt = str2.charAt(i3);
                if (charAt == 'g') {
                    i2 = 1;
                } else if (charAt == 'i') {
                    i2 = 2;
                } else if (charAt == 'm') {
                    i2 = 4;
                } else {
                    reportError("msg.invalid.re.flag", String.valueOf(charAt));
                    i2 = 0;
                }
                if ((i4 & i2) != 0) {
                    reportError("msg.invalid.re.flag", String.valueOf(charAt));
                }
                i4 |= i2;
                i3++;
            }
        } else {
            i = 0;
        }
        rECompiled.flags = i;
        CompilerState compilerState2 = new CompilerState(context, rECompiled.source, length, i);
        if (z && length > 0) {
            compilerState2.result = new RENode((byte) 14);
            compilerState2.result.chr = compilerState2.cpbegin[0];
            compilerState2.result.length = length;
            compilerState2.result.flatIndex = 0;
            compilerState2.progLength += 5;
            compilerState = compilerState2;
        } else if (!parseDisjunction(compilerState2)) {
            return null;
        } else {
            compilerState = compilerState2;
            if (compilerState2.maxBackReference > compilerState2.parenCount) {
                CompilerState compilerState3 = new CompilerState(context, rECompiled.source, length, i);
                compilerState3.backReferenceLimit = compilerState3.parenCount;
                compilerState = compilerState3;
                if (!parseDisjunction(compilerState3)) {
                    return null;
                }
            }
        }
        rECompiled.program = new byte[compilerState.progLength + 1];
        if (compilerState.classCount != 0) {
            rECompiled.classList = new RECharSet[compilerState.classCount];
            rECompiled.classCount = compilerState.classCount;
        }
        rECompiled.program[emitREBytecode(compilerState, rECompiled, 0, compilerState.result)] = (byte) 57;
        rECompiled.parenCount = compilerState.parenCount;
        byte b = rECompiled.program[0];
        if (b == 2) {
            rECompiled.anchorCh = -2;
        } else if (b != 31) {
            switch (b) {
                case 14:
                case 16:
                    rECompiled.anchorCh = rECompiled.source[getIndex(rECompiled.program, 1)];
                    break;
                case 15:
                case 17:
                    rECompiled.anchorCh = (char) (rECompiled.program[1] & 255);
                    break;
                case 18:
                case 19:
                    rECompiled.anchorCh = (char) getIndex(rECompiled.program, 1);
                    break;
            }
        } else {
            RENode rENode = compilerState.result;
            if (rENode.kid.f836op == 2 && rENode.kid2.f836op == 2) {
                rECompiled.anchorCh = -2;
            }
        }
        return rECompiled;
    }

    private static void doFlat(CompilerState compilerState, char c) {
        compilerState.result = new RENode((byte) 14);
        compilerState.result.chr = c;
        compilerState.result.length = 1;
        compilerState.result.flatIndex = -1;
        compilerState.progLength += 3;
    }

    private static char downcase(char c) {
        if (c < 128) {
            return ('A' > c || c > 'Z') ? c : (char) (c + ' ');
        }
        char lowerCase = Character.toLowerCase(c);
        if (lowerCase >= 128) {
            c = lowerCase;
        }
        return c;
    }

    private static int emitREBytecode(CompilerState compilerState, RECompiled rECompiled, int i, RENode rENode) {
        byte[] bArr = rECompiled.program;
        while (rENode != null) {
            i++;
            bArr[i] = rENode.f836op;
            boolean z = true;
            int i2 = i;
            switch (rENode.f836op) {
                case 1:
                    i--;
                    continue;
                    rENode = rENode.next;
                case 13:
                    i = addIndex(bArr, i, rENode.parenIndex);
                    continue;
                    rENode = rENode.next;
                case 14:
                    if (rENode.flatIndex != -1) {
                        while (rENode.next != null && rENode.next.f836op == 14 && rENode.flatIndex + rENode.length == rENode.next.flatIndex) {
                            rENode.length += rENode.next.length;
                            rENode.next = rENode.next.next;
                        }
                    }
                    if (rENode.flatIndex != -1 && rENode.length > 1) {
                        if ((compilerState.flags & 2) != 0) {
                            bArr[i - 1] = (byte) 16;
                        } else {
                            bArr[i - 1] = (byte) 14;
                        }
                        i = addIndex(bArr, addIndex(bArr, i, rENode.flatIndex), rENode.length);
                        continue;
                    } else if (rENode.chr < 256) {
                        if ((compilerState.flags & 2) != 0) {
                            bArr[i - 1] = (byte) 17;
                        } else {
                            bArr[i - 1] = (byte) 15;
                        }
                        i++;
                        bArr[i] = (byte) rENode.chr;
                    } else {
                        if ((compilerState.flags & 2) != 0) {
                            bArr[i - 1] = (byte) 19;
                        } else {
                            bArr[i - 1] = (byte) 18;
                        }
                        i = addIndex(bArr, i, rENode.chr);
                    }
                    rENode = rENode.next;
                    break;
                case 22:
                    if (!rENode.sense) {
                        bArr[i - 1] = (byte) 23;
                    }
                    i = addIndex(bArr, i, rENode.index);
                    rECompiled.classList[rENode.index] = new RECharSet(rENode.bmsize, rENode.startIndex, rENode.kidlen, rENode.sense);
                    continue;
                    rENode = rENode.next;
                case 25:
                    if (rENode.min == 0 && rENode.max == -1) {
                        bArr[i - 1] = (byte) (rENode.greedy ? 26 : 45);
                    } else if (rENode.min == 0 && rENode.max == 1) {
                        bArr[i - 1] = (byte) (rENode.greedy ? 28 : 47);
                    } else if (rENode.min == 1 && rENode.max == -1) {
                        bArr[i - 1] = (byte) (rENode.greedy ? 27 : 46);
                    } else {
                        if (!rENode.greedy) {
                            bArr[i - 1] = (byte) 48;
                        }
                        i = addIndex(bArr, addIndex(bArr, i, rENode.min), rENode.max + 1);
                    }
                    int addIndex = addIndex(bArr, addIndex(bArr, i, rENode.parenCount), rENode.parenIndex);
                    int emitREBytecode = emitREBytecode(compilerState, rECompiled, addIndex + 2, rENode.kid);
                    i = emitREBytecode + 1;
                    bArr[emitREBytecode] = (byte) 49;
                    resolveForwardJump(bArr, addIndex, i);
                    continue;
                    rENode = rENode.next;
                    break;
                case 29:
                    int emitREBytecode2 = emitREBytecode(compilerState, rECompiled, addIndex(bArr, i, rENode.parenIndex), rENode.kid);
                    bArr[emitREBytecode2] = (byte) 30;
                    i = addIndex(bArr, emitREBytecode2 + 1, rENode.parenIndex);
                    continue;
                    rENode = rENode.next;
                case 31:
                    break;
                case 41:
                    int emitREBytecode3 = emitREBytecode(compilerState, rECompiled, i + 2, rENode.kid);
                    int i3 = emitREBytecode3 + 1;
                    bArr[emitREBytecode3] = (byte) 43;
                    resolveForwardJump(bArr, i, i3);
                    i = i3;
                    continue;
                    rENode = rENode.next;
                case 42:
                    int emitREBytecode4 = emitREBytecode(compilerState, rECompiled, i + 2, rENode.kid);
                    int i4 = emitREBytecode4 + 1;
                    bArr[emitREBytecode4] = (byte) 44;
                    resolveForwardJump(bArr, i, i4);
                    i = i4;
                    continue;
                    rENode = rENode.next;
                case 53:
                case 54:
                case 55:
                    if (rENode.f836op != 54) {
                        z = false;
                    }
                    addIndex(bArr, i, z ? upcase(rENode.chr) : rENode.chr);
                    int i5 = i + 2;
                    addIndex(bArr, i5, z ? upcase((char) rENode.index) : rENode.index);
                    i2 = i5 + 2;
                    break;
                default:
                    rENode = rENode.next;
            }
            RENode rENode2 = rENode.kid2;
            int emitREBytecode5 = emitREBytecode(compilerState, rECompiled, i2 + 2, rENode.kid);
            int i6 = emitREBytecode5 + 1;
            bArr[emitREBytecode5] = (byte) 32;
            int i7 = i6 + 2;
            resolveForwardJump(bArr, i2, i7);
            int emitREBytecode6 = emitREBytecode(compilerState, rECompiled, i7, rENode2);
            int i8 = emitREBytecode6 + 1;
            bArr[emitREBytecode6] = (byte) 32;
            i = i8 + 2;
            resolveForwardJump(bArr, i6, i);
            resolveForwardJump(bArr, i8, i);
            rENode = rENode.next;
        }
        return i;
    }

    private static String escapeRegExp(Object obj) {
        String scriptRuntime = ScriptRuntime.toString(obj);
        StringBuilder sb = null;
        int i = 0;
        for (int indexOf = scriptRuntime.indexOf(47); indexOf > -1; indexOf = scriptRuntime.indexOf(47, indexOf + 1)) {
            if (indexOf != i) {
                sb = sb;
                i = i;
                if (scriptRuntime.charAt(indexOf - 1) == '\\') {
                }
            }
            sb = sb;
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append((CharSequence) scriptRuntime, i, indexOf);
            sb.append("\\/");
            i = indexOf + 1;
        }
        String str = scriptRuntime;
        if (sb != null) {
            sb.append((CharSequence) scriptRuntime, i, scriptRuntime.length());
            str = sb.toString();
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [double] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object execSub(org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, java.lang.Object[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.execSub(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[], int):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:160:0x06ed  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x07b0  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x07ec  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x07f9  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0809  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0884  */
    /* JADX WARN: Type inference failed for: r0v186, types: [int] */
    /* JADX WARN: Type inference failed for: r0v195 */
    /* JADX WARN: Type inference failed for: r0v2, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v352, types: [int] */
    /* JADX WARN: Type inference failed for: r0v379 */
    /* JADX WARN: Type inference failed for: r12v0, types: [int] */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v23, types: [int] */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v57 */
    /* JADX WARN: Type inference failed for: r14v58 */
    /* JADX WARN: Type inference failed for: r14v59 */
    /* JADX WARN: Type inference failed for: r14v60 */
    /* JADX WARN: Type inference failed for: r14v61 */
    /* JADX WARN: Type inference failed for: r14v62 */
    /* JADX WARN: Type inference failed for: r14v63 */
    /* JADX WARN: Type inference failed for: r14v64 */
    /* JADX WARN: Type inference failed for: r14v65 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v4, types: [int] */
    /* JADX WARN: Type inference failed for: r17v55, types: [int] */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean executeREBytecode(org.mozilla.javascript.regexp.REGlobalData r8, java.lang.String r9, int r10) {
        /*
            Method dump skipped, instructions count: 2252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.executeREBytecode(org.mozilla.javascript.regexp.REGlobalData, java.lang.String, int):boolean");
    }

    private static boolean flatNIMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.f835cp + i2 > i3) {
            return false;
        }
        char[] cArr = rEGlobalData.regexp.source;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i + i4];
            char charAt = str.charAt(rEGlobalData.f835cp + i4);
            if (!(c == charAt || upcase(c) == upcase(charAt))) {
                return false;
            }
        }
        rEGlobalData.f835cp += i2;
        return true;
    }

    private static boolean flatNMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.f835cp + i2 > i3) {
            return false;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (rEGlobalData.regexp.source[i + i4] != str.charAt(rEGlobalData.f835cp + i4)) {
                return false;
            }
        }
        rEGlobalData.f835cp += i2;
        return true;
    }

    private static int getDecimalValue(char c, CompilerState compilerState, int i, String str) {
        int i2 = compilerState.f829cp;
        char[] cArr = compilerState.cpbegin;
        int i3 = c - 48;
        boolean z = false;
        while (compilerState.f829cp != compilerState.cpend) {
            char c2 = cArr[compilerState.f829cp];
            if (!isDigit(c2)) {
                break;
            }
            z = z;
            i3 = i3;
            if (!z) {
                i3 = (i3 * 10) + (c2 - '0');
                if (i3 < i) {
                    z = z;
                } else {
                    i3 = i;
                    z = true;
                }
            }
            compilerState.f829cp++;
        }
        if (z) {
            reportError(str, String.valueOf(cArr, i2, compilerState.f829cp - i2));
        }
        return i3;
    }

    private static RegExpImpl getImpl(Context context) {
        return (RegExpImpl) ScriptRuntime.getRegExpProxy(context);
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getOffset(byte[] bArr, int i) {
        return getIndex(bArr, i);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeRegExp nativeRegExp = new NativeRegExp();
        nativeRegExp.f831re = compileRE(context, "", null, false);
        nativeRegExp.activatePrototypeMap(6);
        nativeRegExp.setParentScope(scriptable);
        nativeRegExp.setPrototype(getObjectPrototype(scriptable));
        NativeRegExpCtor nativeRegExpCtor = new NativeRegExpCtor();
        nativeRegExp.defineProperty("constructor", nativeRegExpCtor, 2);
        ScriptRuntime.setFunctionProtoAndParent(nativeRegExpCtor, scriptable);
        nativeRegExpCtor.setImmunePrototypeProperty(nativeRegExp);
        if (z) {
            nativeRegExp.sealObject();
            nativeRegExpCtor.sealObject();
        }
        defineProperty(scriptable, "RegExp", nativeRegExpCtor, 2);
    }

    private static boolean isControlLetter(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isLineTerm(char c) {
        return ScriptRuntime.isJSLineTerminator(c);
    }

    private static boolean isREWhiteSpace(int i) {
        return ScriptRuntime.isJSWhitespaceOrLineTerminator(i);
    }

    private static boolean isWord(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || isDigit(c) || c == '_';
    }

    private static boolean matchRegExp(REGlobalData rEGlobalData, RECompiled rECompiled, String str, int i, int i2, boolean z) {
        if (rECompiled.parenCount != 0) {
            rEGlobalData.parens = new long[rECompiled.parenCount];
        } else {
            rEGlobalData.parens = null;
        }
        rEGlobalData.backTrackStackTop = null;
        rEGlobalData.stateStackTop = null;
        rEGlobalData.multiline = z || (rECompiled.flags & 4) != 0;
        rEGlobalData.regexp = rECompiled;
        int i3 = rEGlobalData.regexp.anchorCh;
        int i4 = i;
        while (i4 <= i2) {
            int i5 = i4;
            if (i3 >= 0) {
                while (i4 != i2) {
                    char charAt = str.charAt(i4);
                    i5 = i4;
                    if (charAt != i3) {
                        if ((rEGlobalData.regexp.flags & 2) == 0 || upcase(charAt) != upcase((char) i3)) {
                            i4++;
                        } else {
                            i5 = i4;
                        }
                    }
                }
                return false;
            }
            rEGlobalData.f835cp = i5;
            rEGlobalData.skipped = i5 - i;
            for (int i6 = 0; i6 < rECompiled.parenCount; i6++) {
                rEGlobalData.parens[i6] = -1;
            }
            boolean executeREBytecode = executeREBytecode(rEGlobalData, str, i2);
            rEGlobalData.backTrackStackTop = null;
            rEGlobalData.stateStackTop = null;
            if (executeREBytecode) {
                return true;
            }
            if (i3 != -2 || rEGlobalData.multiline) {
                i4 = rEGlobalData.skipped + i + 1;
            } else {
                rEGlobalData.skipped = i2;
                return false;
            }
        }
        return false;
    }

    private static boolean parseAlternative(CompilerState compilerState) {
        RENode rENode;
        char[] cArr = compilerState.cpbegin;
        RENode rENode2 = null;
        RENode rENode3 = null;
        while (compilerState.f829cp != compilerState.cpend && cArr[compilerState.f829cp] != '|' && (compilerState.parenNesting == 0 || cArr[compilerState.f829cp] != ')')) {
            if (!parseTerm(compilerState)) {
                return false;
            }
            if (rENode2 == null) {
                rENode2 = compilerState.result;
                rENode = rENode2;
            } else {
                rENode3.next = compilerState.result;
                rENode = rENode3;
                rENode2 = rENode2;
            }
            while (true) {
                rENode3 = rENode;
                if (rENode.next != null) {
                    rENode = rENode.next;
                }
            }
        }
        if (rENode2 == null) {
            compilerState.result = new RENode((byte) 1);
            return true;
        }
        compilerState.result = rENode2;
        return true;
    }

    private static boolean parseDisjunction(CompilerState compilerState) {
        if (!parseAlternative(compilerState)) {
            return false;
        }
        char[] cArr = compilerState.cpbegin;
        int i = compilerState.f829cp;
        if (i == cArr.length || cArr[i] != '|') {
            return true;
        }
        compilerState.f829cp++;
        RENode rENode = new RENode((byte) 31);
        rENode.kid = compilerState.result;
        if (!parseDisjunction(compilerState)) {
            return false;
        }
        rENode.kid2 = compilerState.result;
        compilerState.result = rENode;
        if (rENode.kid.f836op == 14 && rENode.kid2.f836op == 14) {
            rENode.f836op = (byte) ((compilerState.flags & 2) == 0 ? 53 : 54);
            rENode.chr = rENode.kid.chr;
            rENode.index = rENode.kid2.chr;
            compilerState.progLength += 13;
            return true;
        } else if (rENode.kid.f836op == 22 && rENode.kid.index < 256 && rENode.kid2.f836op == 14 && (compilerState.flags & 2) == 0) {
            rENode.f836op = (byte) 55;
            rENode.chr = rENode.kid2.chr;
            rENode.index = rENode.kid.index;
            compilerState.progLength += 13;
            return true;
        } else if (rENode.kid.f836op == 14 && rENode.kid2.f836op == 22 && rENode.kid2.index < 256 && (compilerState.flags & 2) == 0) {
            rENode.f836op = (byte) 55;
            rENode.chr = rENode.kid.chr;
            rENode.index = rENode.kid2.index;
            compilerState.progLength += 13;
            return true;
        } else {
            compilerState.progLength += 9;
            return true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0824  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x085f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0861  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x022d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean parseTerm(org.mozilla.javascript.regexp.CompilerState r6) {
        /*
            Method dump skipped, instructions count: 2264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.parseTerm(org.mozilla.javascript.regexp.CompilerState):boolean");
    }

    private static REProgState popProgState(REGlobalData rEGlobalData) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.stateStackTop = rEProgState.previous;
        return rEProgState;
    }

    private static void processCharSet(REGlobalData rEGlobalData, RECharSet rECharSet) {
        synchronized (rECharSet) {
            if (!rECharSet.converted) {
                processCharSetImpl(rEGlobalData, rECharSet);
                rECharSet.converted = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x01c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData r5, org.mozilla.javascript.regexp.RECharSet r6) {
        /*
            Method dump skipped, instructions count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData, org.mozilla.javascript.regexp.RECharSet):void");
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, rEGlobalData.f835cp, rEProgState.continuationOp, rEProgState.continuationPc);
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i, int i2, int i3, int i4) {
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, i2, i3, i4);
    }

    private static void pushProgState(REGlobalData rEGlobalData, int i, int i2, int i3, REBackTrackData rEBackTrackData, int i4, int i5) {
        rEGlobalData.stateStackTop = new REProgState(rEGlobalData.stateStackTop, i, i2, i3, rEBackTrackData, i4, i5);
    }

    private static NativeRegExp realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeRegExp) {
            return (NativeRegExp) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    private static boolean reopIsSimple(int i) {
        boolean z = true;
        if (i < 1 || i > 23) {
            z = false;
        }
        return z;
    }

    private static void reportError(String str, String str2) {
        throw ScriptRuntime.constructError("SyntaxError", ScriptRuntime.getMessage1(str, str2));
    }

    private static void reportWarning(Context context, String str, String str2) {
        if (context.hasFeature(11)) {
            Context.reportWarning(ScriptRuntime.getMessage1(str, str2));
        }
    }

    private static void resolveForwardJump(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw Kit.codeBug();
        }
        addIndex(bArr, i, i2 - i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0110, code lost:
        if (upcase(r0) == upcase(r0)) goto L_0x0113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x01a3, code lost:
        if (upcase(r0) == upcase(r0)) goto L_0x01a6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int simpleMatch(org.mozilla.javascript.regexp.REGlobalData r6, java.lang.String r7, int r8, byte[] r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.simpleMatch(org.mozilla.javascript.regexp.REGlobalData, java.lang.String, int, byte[], int, int, boolean):int");
    }

    private static int toASCIIHexDigit(int i) {
        if (i < 48) {
            return -1;
        }
        if (i <= 57) {
            return i - 48;
        }
        int i2 = i | 32;
        if (97 > i2 || i2 > 102) {
            return -1;
        }
        return (i2 - 97) + 10;
    }

    private static char upcase(char c) {
        if (c < 128) {
            return ('a' > c || c > 'z') ? c : (char) (c - ' ');
        }
        char upperCase = Character.toUpperCase(c);
        if (upperCase >= 128) {
            c = upperCase;
        }
        return c;
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return execSub(context, scriptable, objArr, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scriptable compile(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length <= 0 || !(objArr[0] instanceof NativeRegExp)) {
            this.f831re = compileRE(context, (objArr.length == 0 || (objArr[0] instanceof Undefined)) ? "" : escapeRegExp(objArr[0]), (objArr.length <= 1 || objArr[1] == Undefined.instance) ? null : ScriptRuntime.toString(objArr[1]), false);
            this.lastIndex = Double.valueOf(0.0d);
            return this;
        } else if (objArr.length <= 1 || objArr[1] == Undefined.instance) {
            NativeRegExp nativeRegExp = (NativeRegExp) objArr[0];
            this.f831re = nativeRegExp.f831re;
            this.lastIndex = nativeRegExp.lastIndex;
            return this;
        } else {
            throw ScriptRuntime.typeError0("msg.bad.regexp.compile");
        }
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        return (Scriptable) execSub(context, scriptable, objArr, 1);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(REGEXP_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return realThis(scriptable2, idFunctionObject).compile(context, scriptable, objArr);
            case 2:
            case 3:
                return realThis(scriptable2, idFunctionObject).toString();
            case 4:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
            case 5:
                return Boolean.TRUE.equals(realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 0)) ? Boolean.TRUE : Boolean.FALSE;
            case 6:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 2);
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object executeRegExp(Context context, Scriptable scriptable, RegExpImpl regExpImpl, String str, int[] iArr, int i) {
        Scriptable scriptable2;
        Object obj;
        REGlobalData rEGlobalData = new REGlobalData();
        int i2 = iArr[0];
        int length = str.length();
        if (i2 > length) {
            i2 = length;
        }
        if (matchRegExp(rEGlobalData, this.f831re, str, i2, length, regExpImpl.multiline)) {
            int i3 = rEGlobalData.f835cp;
            iArr[0] = i3;
            int i4 = i3 - (rEGlobalData.skipped + i2);
            int i5 = i3 - i4;
            if (i == 0) {
                obj = Boolean.TRUE;
                scriptable2 = null;
            } else {
                obj = context.newArray(scriptable, 0);
                scriptable2 = (Scriptable) obj;
                scriptable2.put(0, scriptable2, str.substring(i5, i5 + i4));
            }
            if (this.f831re.parenCount == 0) {
                regExpImpl.parens = null;
                regExpImpl.lastParen = SubString.emptySubString;
            } else {
                regExpImpl.parens = new SubString[this.f831re.parenCount];
                SubString subString = null;
                for (int i6 = 0; i6 < this.f831re.parenCount; i6++) {
                    int parensIndex = rEGlobalData.parensIndex(i6);
                    if (parensIndex != -1) {
                        SubString subString2 = new SubString(str, parensIndex, rEGlobalData.parensLength(i6));
                        regExpImpl.parens[i6] = subString2;
                        subString = subString2;
                        if (i != 0) {
                            scriptable2.put(i6 + 1, scriptable2, subString2.toString());
                            subString = subString2;
                        }
                    } else {
                        subString = subString;
                        if (i != 0) {
                            scriptable2.put(i6 + 1, scriptable2, Undefined.instance);
                            subString = subString;
                        }
                    }
                }
                regExpImpl.lastParen = subString;
            }
            if (i != 0) {
                scriptable2.put(FirebaseAnalytics.Param.INDEX, scriptable2, Integer.valueOf(rEGlobalData.skipped + i2));
                scriptable2.put("input", scriptable2, str);
            }
            if (regExpImpl.lastMatch == null) {
                regExpImpl.lastMatch = new SubString();
                regExpImpl.leftContext = new SubString();
                regExpImpl.rightContext = new SubString();
            }
            regExpImpl.lastMatch.str = str;
            regExpImpl.lastMatch.index = i5;
            regExpImpl.lastMatch.length = i4;
            regExpImpl.leftContext.str = str;
            if (context.getLanguageVersion() == 120) {
                regExpImpl.leftContext.index = i2;
                regExpImpl.leftContext.length = rEGlobalData.skipped;
            } else {
                regExpImpl.leftContext.index = 0;
                regExpImpl.leftContext.length = i2 + rEGlobalData.skipped;
            }
            regExpImpl.rightContext.str = str;
            regExpImpl.rightContext.index = i3;
            regExpImpl.rightContext.length = length - i3;
            return obj;
        } else if (i != 2) {
            return null;
        } else {
            return Undefined.instance;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        int i2 = 0;
        if (length == 6) {
            char charAt = str.charAt(0);
            if (charAt == 'g') {
                str2 = "global";
                i2 = 3;
            } else {
                if (charAt == 's') {
                    str2 = FirebaseAnalytics.Param.SOURCE;
                    i2 = 2;
                }
                str2 = null;
                i2 = 0;
            }
        } else if (length == 9) {
            char charAt2 = str.charAt(0);
            if (charAt2 == 'l') {
                str2 = "lastIndex";
                i2 = 1;
            } else {
                if (charAt2 == 'm') {
                    str2 = "multiline";
                    i2 = 5;
                }
                str2 = null;
                i2 = 0;
            }
        } else {
            if (length == 10) {
                str2 = "ignoreCase";
                i2 = 4;
            }
            str2 = null;
            i2 = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        if (i2 == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i2) {
            case 1:
                i = this.lastIndexAttr;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i = 7;
                break;
            default:
                throw new IllegalStateException();
        }
        return instanceIdInfo(i, i2);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length != 4) {
            switch (length) {
                case 6:
                    str2 = "prefix";
                    i = 6;
                    break;
                case 7:
                    str2 = "compile";
                    i = 1;
                    break;
                case 8:
                    char charAt = str.charAt(3);
                    if (charAt != 'o') {
                        if (charAt == 't') {
                            str2 = "toString";
                            i = 2;
                            break;
                        }
                    } else {
                        str2 = "toSource";
                        break;
                    }
                default:
                    str2 = null;
                    i = 0;
                    break;
            }
        } else {
            char charAt2 = str.charAt(0);
            if (charAt2 == 'e') {
                str2 = "exec";
                i = 4;
            } else {
                if (charAt2 == 't') {
                    str2 = "test";
                    i = 5;
                }
                str2 = null;
                i = 0;
            }
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
        return "RegExp";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFlags() {
        return this.f831re.flags;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 1:
                return "lastIndex";
            case 2:
                return FirebaseAnalytics.Param.SOURCE;
            case 3:
                return "global";
            case 4:
                return "ignoreCase";
            case 5:
                return "multiline";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        switch (i) {
            case 1:
                return this.lastIndex;
            case 2:
                return new String(this.f831re.source);
            case 3:
                if ((this.f831re.flags & 1) != 0) {
                    z2 = true;
                }
                return ScriptRuntime.wrapBoolean(z2);
            case 4:
                if ((this.f831re.flags & 2) != 0) {
                    z = true;
                }
                return ScriptRuntime.wrapBoolean(z);
            case 5:
                if ((this.f831re.flags & 4) != 0) {
                    z3 = true;
                }
                return ScriptRuntime.wrapBoolean(z3);
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 5;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return "object";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "compile";
                i2 = 2;
                break;
            case 2:
                str = "toString";
                i2 = 0;
                break;
            case 3:
                str = "toSource";
                i2 = 0;
                break;
            case 4:
                str = "exec";
                break;
            case 5:
                str = "test";
                break;
            case 6:
                str = "prefix";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(REGEXP_TAG, i, str, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i != 1) {
            super.setInstanceIdAttributes(i, i2);
        } else {
            this.lastIndexAttr = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        switch (i) {
            case 1:
                this.lastIndex = obj;
                return;
            case 2:
            case 3:
            case 4:
            case 5:
                return;
            default:
                super.setInstanceIdValue(i, obj);
                return;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('/');
        if (this.f831re.source.length != 0) {
            sb.append(this.f831re.source);
        } else {
            sb.append("(?:)");
        }
        sb.append('/');
        if ((this.f831re.flags & 1) != 0) {
            sb.append('g');
        }
        if ((this.f831re.flags & 2) != 0) {
            sb.append('i');
        }
        if ((this.f831re.flags & 4) != 0) {
            sb.append('m');
        }
        return sb.toString();
    }
}
