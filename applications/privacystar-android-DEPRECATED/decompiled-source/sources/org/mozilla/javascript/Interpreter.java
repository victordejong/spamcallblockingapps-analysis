package org.mozilla.javascript;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.debug.DebugFrame;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Interpreter.class */
public final class Interpreter extends Icode implements Evaluator {
    static final int EXCEPTION_HANDLER_SLOT = 2;
    static final int EXCEPTION_LOCAL_SLOT = 4;
    static final int EXCEPTION_SCOPE_SLOT = 5;
    static final int EXCEPTION_SLOT_SIZE = 6;
    static final int EXCEPTION_TRY_END_SLOT = 1;
    static final int EXCEPTION_TRY_START_SLOT = 0;
    static final int EXCEPTION_TYPE_SLOT = 3;
    InterpreterData itsData;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Interpreter$CallFrame.class */
    public static class CallFrame implements Cloneable, Serializable {
        static final long serialVersionUID = -2843792508994958978L;
        DebugFrame debuggerFrame;
        int emptyStackTop;
        InterpretedFunction fnOrScript;
        int frameIndex;
        boolean frozen;
        InterpreterData idata;
        boolean isContinuationsTopFrame;
        int localShift;
        CallFrame parentFrame;

        /* renamed from: pc */
        int f773pc;
        int pcPrevBranch;
        int pcSourceLineStart;
        Object result;
        double resultDbl;
        double[] sDbl;
        int savedCallOp;
        int savedStackTop;
        Scriptable scope;
        Object[] stack;
        int[] stackAttributes;
        Scriptable thisObj;
        Object throwable;
        boolean useActivation;
        CallFrame varSource;

        private CallFrame() {
        }

        CallFrame cloneFrozen() {
            if (!this.frozen) {
                Kit.codeBug();
            }
            try {
                CallFrame callFrame = (CallFrame) clone();
                callFrame.stack = (Object[]) this.stack.clone();
                callFrame.stackAttributes = (int[]) this.stackAttributes.clone();
                callFrame.sDbl = (double[]) this.sDbl.clone();
                callFrame.frozen = false;
                return callFrame;
            } catch (CloneNotSupportedException e) {
                throw new IllegalStateException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Interpreter$ContinuationJump.class */
    public static final class ContinuationJump implements Serializable {
        static final long serialVersionUID = 7687739156004308247L;
        CallFrame branchFrame;
        CallFrame capturedFrame;
        Object result;
        double resultDbl;

        ContinuationJump(NativeContinuation nativeContinuation, CallFrame callFrame) {
            CallFrame callFrame2;
            int i;
            this.capturedFrame = (CallFrame) nativeContinuation.getImplementation();
            if (this.capturedFrame == null || callFrame == null) {
                this.branchFrame = null;
                return;
            }
            CallFrame callFrame3 = this.capturedFrame;
            int i2 = callFrame3.frameIndex - callFrame.frameIndex;
            CallFrame callFrame4 = callFrame3;
            CallFrame callFrame5 = callFrame;
            if (i2 != 0) {
                int i3 = i2;
                CallFrame callFrame6 = callFrame3;
                CallFrame callFrame7 = callFrame;
                if (i2 < 0) {
                    callFrame7 = this.capturedFrame;
                    i3 = -i2;
                    callFrame6 = callFrame;
                }
                do {
                    callFrame2 = callFrame6.parentFrame;
                    i = i3 - 1;
                    i3 = i;
                    callFrame6 = callFrame2;
                } while (i != 0);
                callFrame4 = callFrame2;
                callFrame5 = callFrame7;
                if (callFrame2.frameIndex != callFrame7.frameIndex) {
                    Kit.codeBug();
                    callFrame5 = callFrame7;
                    callFrame4 = callFrame2;
                }
            }
            while (callFrame4 != callFrame5 && callFrame4 != null) {
                callFrame4 = callFrame4.parentFrame;
                callFrame5 = callFrame5.parentFrame;
            }
            this.branchFrame = callFrame4;
            if (this.branchFrame != null && !this.branchFrame.frozen) {
                Kit.codeBug();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Interpreter$GeneratorState.class */
    public static class GeneratorState {
        int operation;
        RuntimeException returnedException;
        Object value;

        GeneratorState(int i, Object obj) {
            this.operation = i;
            this.value = obj;
        }
    }

    private static void addInstructionCount(Context context, CallFrame callFrame, int i) {
        context.instructionCount += (callFrame.f773pc - callFrame.pcPrevBranch) + i;
        if (context.instructionCount > context.instructionThreshold) {
            context.observeInstructionCount(context.instructionCount);
            context.instructionCount = 0;
        }
    }

    private static int bytecodeSpan(int i) {
        switch (i) {
            case -63:
            case -62:
                return 3;
            case -61:
                return 2;
            default:
                switch (i) {
                    case -49:
                    case -48:
                        return 2;
                    case -47:
                        return 5;
                    case -46:
                        return 3;
                    case -45:
                        return 2;
                    default:
                        switch (i) {
                            case -40:
                                return 5;
                            case -39:
                                return 3;
                            case -38:
                                return 2;
                            default:
                                switch (i) {
                                    case -28:
                                        return 5;
                                    case -27:
                                        return 3;
                                    case -26:
                                        return 3;
                                    default:
                                        switch (i) {
                                            case -11:
                                            case -10:
                                            case -9:
                                            case -8:
                                            case -7:
                                                return 2;
                                            case -6:
                                                return 3;
                                            default:
                                                switch (i) {
                                                    case 5:
                                                    case 6:
                                                    case 7:
                                                        return 3;
                                                    default:
                                                        switch (i) {
                                                            case -54:
                                                            case -23:
                                                                return 3;
                                                            case -21:
                                                                return 5;
                                                            case 50:
                                                            case 72:
                                                                return 3;
                                                            case 57:
                                                                return 2;
                                                            default:
                                                                if (validBytecode(i)) {
                                                                    return 1;
                                                                }
                                                                throw Kit.codeBug();
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static NativeContinuation captureContinuation(Context context) {
        if (context.lastInterpreterFrame != null && (context.lastInterpreterFrame instanceof CallFrame)) {
            return captureContinuation(context, (CallFrame) context.lastInterpreterFrame, true);
        }
        throw new IllegalStateException("Interpreter frames not found");
    }

    private static NativeContinuation captureContinuation(Context context, CallFrame callFrame, boolean z) {
        NativeContinuation nativeContinuation = new NativeContinuation();
        ScriptRuntime.setObjectProtoAndParent(nativeContinuation, ScriptRuntime.getTopCallScope(context));
        CallFrame callFrame2 = callFrame;
        CallFrame callFrame3 = callFrame2;
        while (callFrame2 != null && !callFrame2.frozen) {
            callFrame2.frozen = true;
            for (int i = callFrame2.savedStackTop + 1; i != callFrame2.stack.length; i++) {
                callFrame2.stack[i] = null;
                callFrame2.stackAttributes[i] = 0;
            }
            if (callFrame2.savedCallOp == 38) {
                callFrame2.stack[callFrame2.savedStackTop] = null;
            } else if (callFrame2.savedCallOp != 30) {
                Kit.codeBug();
            }
            callFrame2 = callFrame2.parentFrame;
            callFrame3 = callFrame2;
        }
        if (z) {
            while (callFrame3.parentFrame != null) {
                callFrame3 = callFrame3.parentFrame;
            }
            if (!callFrame3.isContinuationsTopFrame) {
                throw new IllegalStateException("Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations");
            }
        }
        nativeContinuation.initImplementation(callFrame);
        return nativeContinuation;
    }

    private static CallFrame captureFrameForGenerator(CallFrame callFrame) {
        callFrame.frozen = true;
        CallFrame cloneFrozen = callFrame.cloneFrozen();
        callFrame.frozen = false;
        cloneFrozen.parentFrame = null;
        cloneFrozen.frameIndex = 0;
        return cloneFrozen;
    }

    private static void doAdd(Object[] objArr, double[] dArr, int i, Context context) {
        double d;
        boolean z;
        Number number;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Number number2 = objArr[i];
        if (obj == UniqueTag.DOUBLE_MARK) {
            d = dArr[i2];
            if (number2 == UniqueTag.DOUBLE_MARK) {
                dArr[i] = dArr[i] + d;
                return;
            }
            z = true;
        } else if (number2 == UniqueTag.DOUBLE_MARK) {
            d = dArr[i];
            z = false;
            number2 = obj;
        } else if ((number2 instanceof Scriptable) || (obj instanceof Scriptable)) {
            objArr[i] = ScriptRuntime.add(number2, obj, context);
            return;
        } else if ((number2 instanceof CharSequence) || (obj instanceof CharSequence)) {
            objArr[i] = new ConsString(ScriptRuntime.toCharSequence(number2), ScriptRuntime.toCharSequence(obj));
            return;
        } else {
            double doubleValue = number2 instanceof Number ? ((Number) number2).doubleValue() : ScriptRuntime.toNumber(number2);
            double doubleValue2 = obj instanceof Number ? ((Number) obj).doubleValue() : ScriptRuntime.toNumber(obj);
            objArr[i] = UniqueTag.DOUBLE_MARK;
            dArr[i] = doubleValue + doubleValue2;
            return;
        }
        if (number2 instanceof Scriptable) {
            Number wrapNumber = ScriptRuntime.wrapNumber(d);
            if (!z) {
                number = wrapNumber;
            } else {
                number = number2;
                number2 = wrapNumber;
            }
            objArr[i] = ScriptRuntime.add(number, number2, context);
        } else if (number2 instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) number2;
            CharSequence charSequence2 = ScriptRuntime.toCharSequence(Double.valueOf(d));
            if (z) {
                objArr[i] = new ConsString(charSequence, charSequence2);
            } else {
                objArr[i] = new ConsString(charSequence2, charSequence);
            }
        } else {
            double doubleValue3 = number2 instanceof Number ? ((Number) number2).doubleValue() : ScriptRuntime.toNumber(number2);
            objArr[i] = UniqueTag.DOUBLE_MARK;
            dArr[i] = doubleValue3 + d;
        }
    }

    private static int doArithmetic(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        double stack_double = stack_double(callFrame, i2);
        int i3 = i2 - 1;
        double stack_double2 = stack_double(callFrame, i3);
        objArr[i3] = UniqueTag.DOUBLE_MARK;
        switch (i) {
            case 22:
                stack_double2 -= stack_double;
                break;
            case 23:
                stack_double2 *= stack_double;
                break;
            case 24:
                stack_double2 /= stack_double;
                break;
            case 25:
                stack_double2 %= stack_double;
                break;
        }
        dArr[i3] = stack_double2;
        return i3;
    }

    private static int doBitOp(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        int i3;
        int stack_int32 = stack_int32(callFrame, i2 - 1);
        int stack_int322 = stack_int32(callFrame, i2);
        int i4 = i2 - 1;
        objArr[i4] = UniqueTag.DOUBLE_MARK;
        switch (i) {
            case 9:
                i3 = stack_int32 | stack_int322;
                break;
            case 10:
                i3 = stack_int32 ^ stack_int322;
                break;
            case 11:
                i3 = stack_int32 & stack_int322;
                break;
            default:
                switch (i) {
                    case 18:
                        i3 = stack_int32 << stack_int322;
                        break;
                    case 19:
                        i3 = stack_int32 >> stack_int322;
                        break;
                    default:
                        i3 = stack_int32;
                        break;
                }
        }
        dArr[i4] = i3;
        return i4;
    }

    private static int doCallSpecial(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, byte[] bArr, int i2) {
        int i3;
        int i4 = bArr[callFrame.f773pc] & 255;
        boolean z = true;
        if (bArr[callFrame.f773pc + 1] == 0) {
            z = false;
        }
        int index = getIndex(bArr, callFrame.f773pc + 2);
        if (z) {
            i3 = i - i2;
            Object obj = objArr[i3];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
            }
            objArr[i3] = ScriptRuntime.newSpecial(context, obj2, getArgsArray(objArr, dArr, i3 + 1, i2), callFrame.scope, i4);
        } else {
            i3 = i - (i2 + 1);
            objArr[i3] = ScriptRuntime.callSpecial(context, (Callable) objArr[i3], (Scriptable) objArr[i3 + 1], getArgsArray(objArr, dArr, i3 + 2, i2), callFrame.scope, callFrame.thisObj, i4, callFrame.idata.itsSourceFile, index);
        }
        callFrame.f773pc += 4;
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0071, code lost:
        if (r15 >= r13) goto L_0x0074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0074, code lost:
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
        if (r15 > r13) goto L_0x0074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
        if (r15 <= r13) goto L_0x0074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
        if (r15 < r13) goto L_0x0074;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int doCompare(org.mozilla.javascript.Interpreter.CallFrame r5, int r6, java.lang.Object[] r7, double[] r8, int r9) {
        /*
            r0 = r9
            r1 = 1
            int r0 = r0 - r1
            r10 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r7
            r1 = r9
            r0 = r0[r1]
            r11 = r0
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r12 = r0
            r0 = r11
            org.mozilla.javascript.UniqueTag r1 = org.mozilla.javascript.UniqueTag.DOUBLE_MARK
            if (r0 != r1) goto L_0x0031
            r0 = r8
            r1 = r9
            r0 = r0[r1]
            r13 = r0
            r0 = r5
            r1 = r10
            double r0 = stack_double(r0, r1)
            r15 = r0
            goto L_0x0046
        L_0x0031:
            r0 = r12
            org.mozilla.javascript.UniqueTag r1 = org.mozilla.javascript.UniqueTag.DOUBLE_MARK
            if (r0 != r1) goto L_0x009b
            r0 = r11
            double r0 = org.mozilla.javascript.ScriptRuntime.toNumber(r0)
            r13 = r0
            r0 = r8
            r1 = r10
            r0 = r0[r1]
            r15 = r0
        L_0x0046:
            r0 = 0
            r17 = r0
            r0 = r6
            switch(r0) {
                case 14: goto L_0x0090;
                case 15: goto L_0x0085;
                case 16: goto L_0x007a;
                case 17: goto L_0x006c;
                default: goto L_0x0068;
            }
        L_0x0068:
            java.lang.RuntimeException r0 = org.mozilla.javascript.Kit.codeBug()
            throw r0
        L_0x006c:
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x00ed
        L_0x0074:
            r0 = 1
            r17 = r0
            goto L_0x00ed
        L_0x007a:
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00ed
            goto L_0x0074
        L_0x0085:
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x00ed
            goto L_0x0074
        L_0x0090:
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x00ed
            goto L_0x0074
        L_0x009b:
            r0 = r6
            switch(r0) {
                case 14: goto L_0x00e4;
                case 15: goto L_0x00d8;
                case 16: goto L_0x00cc;
                case 17: goto L_0x00c0;
                default: goto L_0x00bc;
            }
        L_0x00bc:
            java.lang.RuntimeException r0 = org.mozilla.javascript.Kit.codeBug()
            throw r0
        L_0x00c0:
            r0 = r11
            r1 = r12
            boolean r0 = org.mozilla.javascript.ScriptRuntime.cmp_LE(r0, r1)
            r17 = r0
            goto L_0x00ed
        L_0x00cc:
            r0 = r11
            r1 = r12
            boolean r0 = org.mozilla.javascript.ScriptRuntime.cmp_LT(r0, r1)
            r17 = r0
            goto L_0x00ed
        L_0x00d8:
            r0 = r12
            r1 = r11
            boolean r0 = org.mozilla.javascript.ScriptRuntime.cmp_LE(r0, r1)
            r17 = r0
            goto L_0x00ed
        L_0x00e4:
            r0 = r12
            r1 = r11
            boolean r0 = org.mozilla.javascript.ScriptRuntime.cmp_LT(r0, r1)
            r17 = r0
        L_0x00ed:
            r0 = r7
            r1 = r10
            r2 = r17
            java.lang.Boolean r2 = org.mozilla.javascript.ScriptRuntime.wrapBoolean(r2)
            r0[r1] = r2
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.doCompare(org.mozilla.javascript.Interpreter$CallFrame, int, java.lang.Object[], double[], int):int");
    }

    private static int doDelName(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        Object obj = objArr[i2];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object obj3 = objArr[i3];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.delete(obj4, obj2, context, callFrame.scope, i == 0);
        return i3;
    }

    private static int doElemIncDec(Context context, CallFrame callFrame, byte[] bArr, Object[] objArr, double[] dArr, int i) {
        Object obj = objArr[i];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i2 = i - 1;
        Object obj3 = objArr[i2];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        objArr[i2] = ScriptRuntime.elemIncrDecr(obj4, obj2, context, callFrame.scope, bArr[callFrame.f773pc]);
        callFrame.f773pc++;
        return i2;
    }

    private static boolean doEquals(Object[] objArr, double[] dArr, int i) {
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        if (obj != UniqueTag.DOUBLE_MARK) {
            return obj2 == UniqueTag.DOUBLE_MARK ? ScriptRuntime.eqNumber(dArr[i], obj) : ScriptRuntime.m217eq(obj2, obj);
        }
        if (obj2 != UniqueTag.DOUBLE_MARK) {
            return ScriptRuntime.eqNumber(dArr[i2], obj2);
        }
        return dArr[i] == dArr[i2];
    }

    private static int doGetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 1;
        Object obj = objArr[i2];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 + 1;
        Object obj3 = objArr[i3];
        objArr[i2] = obj3 != UniqueTag.DOUBLE_MARK ? ScriptRuntime.getObjectElem(obj2, obj3, context, callFrame.scope) : ScriptRuntime.getObjectIndex(obj2, dArr[i3], context, callFrame.scope);
        return i2;
    }

    private static int doGetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int i2) {
        int i3 = i + 1;
        if (!callFrame.useActivation) {
            objArr[i3] = objArr2[i2];
            dArr[i3] = dArr2[i2];
        } else {
            objArr[i3] = callFrame.scope.get(callFrame.idata.argNames[i2], callFrame.scope);
        }
        return i3;
    }

    private static int doInOrInstanceof(Context context, int i, Object[] objArr, double[] dArr, int i2) {
        Object obj = objArr[i2];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object obj3 = objArr[i3];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.wrapBoolean(i == 52 ? ScriptRuntime.m216in(obj4, obj2, context) : ScriptRuntime.instanceOf(obj4, obj2, context));
        return i3;
    }

    private static int doRefMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj3 = objArr[i3];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.memberRef(obj4, obj2, context, i2);
        return i3;
    }

    private static int doRefNsMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj3 = objArr[i3];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        int i4 = i3 - 1;
        Object obj5 = objArr[i4];
        Object obj6 = obj5;
        if (obj5 == UniqueTag.DOUBLE_MARK) {
            obj6 = ScriptRuntime.wrapNumber(dArr[i4]);
        }
        objArr[i4] = ScriptRuntime.memberRef(obj6, obj4, obj2, context, i2);
        return i4;
    }

    private static int doRefNsName(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj3 = objArr[i3];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.nameRef(obj4, obj2, context, callFrame.scope, i2);
        return i3;
    }

    private static int doSetConstVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (callFrame.useActivation) {
            Object obj = objArr[i];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i]);
            }
            String str = callFrame.idata.argNames[i2];
            if (callFrame.scope instanceof ConstProperties) {
                ((ConstProperties) callFrame.scope).putConst(str, callFrame.scope, obj2);
            } else {
                throw Kit.codeBug();
            }
        } else if ((iArr[i2] & 1) == 0) {
            throw Context.reportRuntimeError1("msg.var.redecl", callFrame.idata.argNames[i2]);
        } else if ((iArr[i2] & 8) != 0) {
            objArr2[i2] = objArr[i];
            iArr[i2] = iArr[i2] & (-9);
            dArr2[i2] = dArr[i];
        }
        return i;
    }

    private static int doSetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 2;
        int i3 = i2 + 2;
        Object obj = objArr[i3];
        Object obj2 = obj;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        Object obj3 = objArr[i2];
        Object obj4 = obj3;
        if (obj3 == UniqueTag.DOUBLE_MARK) {
            obj4 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i4 = i2 + 1;
        Object obj5 = objArr[i4];
        objArr[i2] = obj5 != UniqueTag.DOUBLE_MARK ? ScriptRuntime.setObjectElem(obj4, obj5, obj2, context, callFrame.scope) : ScriptRuntime.setObjectIndex(obj4, dArr[i4], obj2, context, callFrame.scope);
        return i2;
    }

    private static int doSetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (callFrame.useActivation) {
            Object obj = objArr[i];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i]);
            }
            callFrame.scope.put(callFrame.idata.argNames[i2], callFrame.scope, obj2);
        } else if ((iArr[i2] & 1) == 0) {
            objArr2[i2] = objArr[i];
            dArr2[i2] = dArr[i];
        }
        return i;
    }

    private static boolean doShallowEquals(Object[] objArr, double[] dArr, int i) {
        double d;
        double d2;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        boolean z = false;
        if (obj == uniqueTag) {
            d2 = dArr[i2];
            if (obj2 == uniqueTag) {
                d = dArr[i];
            } else if (!(obj2 instanceof Number)) {
                return false;
            } else {
                d = ((Number) obj2).doubleValue();
            }
        } else if (obj2 != uniqueTag) {
            return ScriptRuntime.shallowEq(obj2, obj);
        } else {
            d = dArr[i];
            if (!(obj instanceof Number)) {
                return false;
            }
            d2 = ((Number) obj).doubleValue();
        }
        if (d == d2) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [double] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int doVarIncDec(org.mozilla.javascript.Context r7, org.mozilla.javascript.Interpreter.CallFrame r8, java.lang.Object[] r9, double[] r10, int r11, java.lang.Object[] r12, double[] r13, int[] r14, int r15) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.doVarIncDec(org.mozilla.javascript.Context, org.mozilla.javascript.Interpreter$CallFrame, java.lang.Object[], double[], int, java.lang.Object[], double[], int[], int):int");
    }

    static void dumpICode(InterpreterData interpreterData) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
        org.mozilla.javascript.Kit.codeBug();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void enterFrame(org.mozilla.javascript.Context r6, org.mozilla.javascript.Interpreter.CallFrame r7, java.lang.Object[] r8, boolean r9) {
        /*
            r0 = r7
            org.mozilla.javascript.InterpreterData r0 = r0.idata
            boolean r0 = r0.itsNeedsActivation
            r10 = r0
            r0 = r7
            org.mozilla.javascript.debug.DebugFrame r0 = r0.debuggerFrame
            if (r0 == 0) goto L_0x0016
            r0 = 1
            r11 = r0
            goto L_0x0019
        L_0x0016:
            r0 = 0
            r11 = r0
        L_0x0019:
            r0 = r10
            if (r0 != 0) goto L_0x0023
            r0 = r11
            if (r0 == 0) goto L_0x009b
        L_0x0023:
            r0 = r7
            org.mozilla.javascript.Scriptable r0 = r0.scope
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0039
            java.lang.RuntimeException r0 = org.mozilla.javascript.Kit.codeBug()
            r0 = r12
            r13 = r0
            goto L_0x007a
        L_0x0039:
            r0 = r12
            r13 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007a
        L_0x0041:
            r0 = r12
            r13 = r0
            r0 = r12
            boolean r0 = r0 instanceof org.mozilla.javascript.NativeWith
            if (r0 == 0) goto L_0x007a
            r0 = r12
            org.mozilla.javascript.Scriptable r0 = r0.getParentScope()
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0076
            r0 = r13
            r12 = r0
            r0 = r7
            org.mozilla.javascript.Interpreter$CallFrame r0 = r0.parentFrame
            if (r0 == 0) goto L_0x0041
            r0 = r13
            r12 = r0
            r0 = r7
            org.mozilla.javascript.Interpreter$CallFrame r0 = r0.parentFrame
            org.mozilla.javascript.Scriptable r0 = r0.scope
            r1 = r13
            if (r0 != r1) goto L_0x0041
        L_0x0076:
            java.lang.RuntimeException r0 = org.mozilla.javascript.Kit.codeBug()
        L_0x007a:
            r0 = r11
            if (r0 == 0) goto L_0x0090
            r0 = r7
            org.mozilla.javascript.debug.DebugFrame r0 = r0.debuggerFrame
            r1 = r6
            r2 = r13
            r3 = r7
            org.mozilla.javascript.Scriptable r3 = r3.thisObj
            r4 = r8
            r0.onEnter(r1, r2, r3, r4)
        L_0x0090:
            r0 = r10
            if (r0 == 0) goto L_0x009b
            r0 = r6
            r1 = r13
            org.mozilla.javascript.ScriptRuntime.enterActivationFunction(r0, r1)
        L_0x009b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.enterFrame(org.mozilla.javascript.Context, org.mozilla.javascript.Interpreter$CallFrame, java.lang.Object[], boolean):void");
    }

    private static void exitFrame(Context context, CallFrame callFrame, Object obj) {
        if (callFrame.idata.itsNeedsActivation) {
            ScriptRuntime.exitActivationFunction(context);
        }
        if (callFrame.debuggerFrame != null) {
            try {
                if (obj instanceof Throwable) {
                    callFrame.debuggerFrame.onExit(context, true, obj);
                    return;
                }
                ContinuationJump continuationJump = (ContinuationJump) obj;
                Object obj2 = continuationJump == null ? callFrame.result : continuationJump.result;
                Object obj3 = obj2;
                if (obj2 == UniqueTag.DOUBLE_MARK) {
                    obj3 = ScriptRuntime.wrapNumber(continuationJump == null ? callFrame.resultDbl : continuationJump.resultDbl);
                }
                callFrame.debuggerFrame.onExit(context, false, obj3);
            } catch (Throwable th) {
                System.err.println("RHINO USAGE WARNING: onExit terminated with exception");
                th.printStackTrace(System.err);
            }
        }
    }

    private static Object freezeGenerator(Context context, CallFrame callFrame, int i, GeneratorState generatorState) {
        if (generatorState.operation == 2) {
            throw ScriptRuntime.typeError0("msg.yield.closing");
        }
        callFrame.frozen = true;
        callFrame.result = callFrame.stack[i];
        callFrame.resultDbl = callFrame.sDbl[i];
        callFrame.savedStackTop = i;
        callFrame.f773pc--;
        ScriptRuntime.exitActivationFunction(context);
        return callFrame.result != UniqueTag.DOUBLE_MARK ? callFrame.result : ScriptRuntime.wrapNumber(callFrame.resultDbl);
    }

    private static Object[] getArgsArray(Object[] objArr, double[] dArr, int i, int i2) {
        if (i2 == 0) {
            return ScriptRuntime.emptyArgs;
        }
        Object[] objArr2 = new Object[i2];
        int i3 = 0;
        while (i3 != i2) {
            Object obj = objArr[i];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i]);
            }
            objArr2[i3] = obj2;
            i3++;
            i++;
        }
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getEncodedSource(InterpreterData interpreterData) {
        if (interpreterData.encodedSource == null) {
            return null;
        }
        return interpreterData.encodedSource.substring(interpreterData.encodedSourceStart, interpreterData.encodedSourceEnd);
    }

    private static int getExceptionHandler(CallFrame callFrame, boolean z) {
        int[] iArr = callFrame.idata.itsExceptionTable;
        int i = -1;
        if (iArr == null) {
            return -1;
        }
        int i2 = callFrame.f773pc - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 != iArr.length; i5 += 6) {
            int i6 = iArr[i5 + 0];
            int i7 = iArr[i5 + 1];
            i = i;
            i3 = i3;
            i4 = i4;
            if (i6 <= i2) {
                if (i2 >= i7) {
                    i = i;
                    i3 = i3;
                    i4 = i4;
                } else if (!z || iArr[i5 + 3] == 1) {
                    if (i >= 0) {
                        if (i3 < i7) {
                            i = i;
                            i3 = i3;
                            i4 = i4;
                        } else {
                            if (i4 > i6) {
                                Kit.codeBug();
                            }
                            if (i3 == i7) {
                                Kit.codeBug();
                            }
                        }
                    }
                    i = i5;
                    i4 = i6;
                    i3 = i7;
                } else {
                    i = i;
                    i3 = i3;
                    i4 = i4;
                }
            }
        }
        return i;
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getInt(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] getLineNumbers(InterpreterData interpreterData) {
        UintMap uintMap = new UintMap();
        byte[] bArr = interpreterData.itsICode;
        int length = bArr.length;
        int i = 0;
        while (i != length) {
            byte b = bArr[i];
            int bytecodeSpan = bytecodeSpan(b);
            if (b == -26) {
                if (bytecodeSpan != 3) {
                    Kit.codeBug();
                }
                uintMap.put(getIndex(bArr, i + 1), 0);
            }
            i += bytecodeSpan;
        }
        return uintMap.getKeys();
    }

    private static int getShort(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | (bArr[i] << 8);
    }

    private static void initFrame(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, double[] dArr, int i, int i2, InterpretedFunction interpretedFunction, CallFrame callFrame, CallFrame callFrame2) {
        DebugFrame debugFrame;
        int i3;
        double[] dArr2;
        boolean z;
        int[] iArr;
        Object[] objArr2;
        double[] dArr3;
        InterpreterData interpreterData = interpretedFunction.idata;
        boolean z2 = interpreterData.itsNeedsActivation;
        if (context.debugger != null) {
            DebugFrame frame = context.debugger.getFrame(context, interpreterData);
            debugFrame = frame;
            if (frame != null) {
                z2 = true;
                debugFrame = frame;
            }
        } else {
            debugFrame = null;
        }
        if (z2) {
            if (dArr != null) {
                objArr = getArgsArray(objArr, dArr, i, i2);
            }
            i3 = 0;
            dArr2 = null;
        } else {
            dArr2 = dArr;
            i3 = i;
            objArr = objArr;
        }
        if (interpreterData.itsFunctionType != 0) {
            Scriptable parentScope = interpretedFunction.getParentScope();
            scriptable = parentScope;
            if (z2) {
                scriptable = ScriptRuntime.createFunctionActivation(interpretedFunction, parentScope, objArr);
            }
        } else {
            ScriptRuntime.initScript(interpretedFunction, scriptable2, context, scriptable, interpretedFunction.idata.evalScriptFlag);
        }
        if (interpreterData.itsNestedFunctions != null) {
            if (interpreterData.itsFunctionType != 0 && !interpreterData.itsNeedsActivation) {
                Kit.codeBug();
            }
            for (int i4 = 0; i4 < interpreterData.itsNestedFunctions.length; i4++) {
                if (interpreterData.itsNestedFunctions[i4].itsFunctionType == 1) {
                    initFunction(context, scriptable, interpretedFunction, i4);
                }
            }
        }
        int i5 = (interpreterData.itsMaxVars + interpreterData.itsMaxLocals) - 1;
        int i6 = interpreterData.itsMaxFrameArray;
        if (i6 != interpreterData.itsMaxStack + i5 + 1) {
            Kit.codeBug();
        }
        if (callFrame2.stack == null || i6 > callFrame2.stack.length) {
            objArr2 = new Object[i6];
            iArr = new int[i6];
            dArr3 = new double[i6];
            z = false;
        } else {
            objArr2 = callFrame2.stack;
            iArr = callFrame2.stackAttributes;
            dArr3 = callFrame2.sDbl;
            z = true;
        }
        int paramAndVarCount = interpreterData.getParamAndVarCount();
        for (int i7 = 0; i7 < paramAndVarCount; i7++) {
            if (interpreterData.getParamOrVarConst(i7)) {
                iArr[i7] = 13;
            }
        }
        int i8 = interpreterData.argCount;
        int i9 = i8;
        if (i8 > i2) {
            i9 = i2;
        }
        callFrame2.parentFrame = callFrame;
        callFrame2.frameIndex = callFrame == null ? 0 : callFrame.frameIndex + 1;
        if (callFrame2.frameIndex > context.getMaximumInterpreterStackDepth()) {
            throw Context.reportRuntimeError("Exceeded maximum stack depth");
        }
        callFrame2.frozen = false;
        callFrame2.fnOrScript = interpretedFunction;
        callFrame2.idata = interpreterData;
        callFrame2.stack = objArr2;
        callFrame2.stackAttributes = iArr;
        callFrame2.sDbl = dArr3;
        callFrame2.varSource = callFrame2;
        callFrame2.localShift = interpreterData.itsMaxVars;
        callFrame2.emptyStackTop = i5;
        callFrame2.debuggerFrame = debugFrame;
        callFrame2.useActivation = z2;
        callFrame2.thisObj = scriptable2;
        callFrame2.result = Undefined.instance;
        callFrame2.f773pc = 0;
        callFrame2.pcPrevBranch = 0;
        callFrame2.pcSourceLineStart = interpreterData.firstLinePC;
        callFrame2.scope = scriptable;
        callFrame2.savedStackTop = i5;
        callFrame2.savedCallOp = 0;
        System.arraycopy(objArr, i3, objArr2, 0, i9);
        int i10 = i9;
        if (dArr2 != null) {
            System.arraycopy(dArr2, i3, dArr3, 0, i9);
            i10 = i9;
        }
        while (i10 != interpreterData.itsMaxVars) {
            objArr2[i10] = Undefined.instance;
            i10++;
        }
        if (z) {
            for (int i11 = i5 + 1; i11 != objArr2.length; i11++) {
                objArr2[i11] = null;
            }
        }
        enterFrame(context, callFrame2, objArr, false);
    }

    private static CallFrame initFrameForApplyOrCall(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2, int i3, Scriptable scriptable, IdFunctionObject idFunctionObject, InterpretedFunction interpretedFunction) {
        Scriptable scriptable2;
        CallFrame callFrame2 = callFrame;
        if (i != 0) {
            int i4 = i2 + 2;
            Object obj = objArr[i4];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i4]);
            }
            scriptable2 = ScriptRuntime.toObjectOrNull(context, obj2, callFrame2.scope);
        } else {
            scriptable2 = null;
        }
        Scriptable scriptable3 = scriptable2;
        if (scriptable2 == null) {
            scriptable3 = ScriptRuntime.getTopCallScope(context);
        }
        if (i3 == -55) {
            exitFrame(context, callFrame2, null);
            callFrame2 = callFrame2.parentFrame;
        } else {
            callFrame2.savedStackTop = i2;
            callFrame2.savedCallOp = i3;
        }
        CallFrame callFrame3 = new CallFrame();
        if (BaseFunction.isApply(idFunctionObject)) {
            Object[] applyArguments = i < 2 ? ScriptRuntime.emptyArgs : ScriptRuntime.getApplyArguments(context, objArr[i2 + 3]);
            initFrame(context, scriptable, scriptable3, applyArguments, null, 0, applyArguments.length, interpretedFunction, callFrame2, callFrame3);
        } else {
            for (int i5 = 1; i5 < i; i5++) {
                int i6 = i2 + 1 + i5;
                int i7 = i2 + 2 + i5;
                objArr[i6] = objArr[i7];
                dArr[i6] = dArr[i7];
            }
            initFrame(context, scriptable, scriptable3, objArr, dArr, i2 + 2, i < 2 ? 0 : i - 1, interpretedFunction, callFrame2, callFrame3);
        }
        return callFrame3;
    }

    private static CallFrame initFrameForNoSuchMethod(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2, int i3, Scriptable scriptable, Scriptable scriptable2, ScriptRuntime.NoSuchMethodShim noSuchMethodShim, InterpretedFunction interpretedFunction) {
        CallFrame callFrame2;
        Object[] objArr2 = new Object[i];
        int i4 = i2 + 2;
        int i5 = 0;
        while (i5 < i) {
            Object obj = objArr[i4];
            Object obj2 = obj;
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i4]);
            }
            objArr2[i5] = obj2;
            i5++;
            i4++;
        }
        String str = noSuchMethodShim.methodName;
        Scriptable newArray = context.newArray(scriptable2, objArr2);
        CallFrame callFrame3 = new CallFrame();
        if (i3 == -55) {
            callFrame2 = callFrame.parentFrame;
            exitFrame(context, callFrame, null);
        } else {
            callFrame2 = callFrame;
        }
        initFrame(context, scriptable2, scriptable, new Object[]{str, newArray}, null, 0, 2, interpretedFunction, callFrame2, callFrame3);
        if (i3 != -55) {
            callFrame.savedStackTop = i2;
            callFrame.savedCallOp = i3;
        }
        return callFrame3;
    }

    private static void initFunction(Context context, Scriptable scriptable, InterpretedFunction interpretedFunction, int i) {
        InterpretedFunction createFunction = InterpretedFunction.createFunction(context, scriptable, interpretedFunction, i);
        ScriptRuntime.initFunction(context, scriptable, createFunction, createFunction.idata.itsFunctionType, interpretedFunction.idata.evalScriptFlag);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object interpret(InterpretedFunction interpretedFunction, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            Kit.codeBug();
        }
        if (context.interpreterSecurityDomain != interpretedFunction.securityDomain) {
            Object obj = context.interpreterSecurityDomain;
            context.interpreterSecurityDomain = interpretedFunction.securityDomain;
            try {
                return interpretedFunction.securityController.callWithDomain(interpretedFunction.securityDomain, context, interpretedFunction, scriptable, scriptable2, objArr);
            } finally {
                context.interpreterSecurityDomain = obj;
            }
        } else {
            CallFrame callFrame = new CallFrame();
            initFrame(context, scriptable, scriptable2, objArr, null, 0, objArr.length, interpretedFunction, null, callFrame);
            callFrame.isContinuationsTopFrame = context.isContinuationsTopCall;
            context.isContinuationsTopCall = false;
            return interpretLoop(context, callFrame, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x080a, code lost:
        r20 = r17;
        r17 = r16;
        r16 = r13;
        r13 = r22;
        r18 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0816, code lost:
        r22 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x081a, code lost:
        r21 = r14;
        r13 = null;
        r22 = r22;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0919, code lost:
        r19 = r19;
        r17 = r16;
        r16 = r16;
        r20 = r20;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x09a3, code lost:
        r28 = r21;
        r35 = r22;
        r21 = r16;
        r22 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x04e9, code lost:
        r28 = r21;
        r35 = r22;
        r21 = r16;
        r22 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:783:0x23ea, code lost:
        r20 = r17;
        r13 = null;
        r13 = null;
        r21 = r13;
        r18 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x2408, code lost:
        exitFrame(r15, r14, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x2413, code lost:
        r0 = r14.result;
     */
    /* JADX WARN: Code restructure failed: missing block: B:788:0x241c, code lost:
        r45 = r14.resultDbl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:791:0x2426, code lost:
        if (r14.parentFrame == null) goto L_0x2488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x2429, code lost:
        r0 = r14.parentFrame;
     */
    /* JADX WARN: Code restructure failed: missing block: B:793:0x2432, code lost:
        r13 = r0;
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:795:0x243b, code lost:
        if (r0.frozen == false) goto L_0x2447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:798:0x2441, code lost:
        r13 = r0.cloneFrozen();
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x2449, code lost:
        setCallResult(r13, r0, r45);
     */
    /* JADX WARN: Code restructure failed: missing block: B:802:0x2453, code lost:
        r24 = r45;
        r23 = null;
        r17 = r20;
        r19 = r19;
        r14 = r21;
        r21 = r13;
        r13 = r18;
        r16 = r27;
        r20 = null;
        r18 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:803:0x247c, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x247d, code lost:
        r24 = r45;
        r23 = r0;
        r13 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:805:0x2488, code lost:
        r12 = r0;
        r16 = r27;
        r45 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:806:0x2495, code lost:
        r13 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:807:0x2496, code lost:
        r24 = r45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x249d, code lost:
        r13 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:809:0x249e, code lost:
        r14 = r14;
        r23 = r0;
        r13 = r13;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:838:0x2648, code lost:
        if (r22 != null) goto L_0x264f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:839:0x264b, code lost:
        org.mozilla.javascript.Kit.codeBug();
     */
    /* JADX WARN: Code restructure failed: missing block: B:841:0x2651, code lost:
        if (r18 == null) goto L_0x2670;
     */
    /* JADX WARN: Code restructure failed: missing block: B:843:0x265a, code lost:
        if (r18.operation != 2) goto L_0x2670;
     */
    /* JADX WARN: Code restructure failed: missing block: B:845:0x2664, code lost:
        if (r22 != r18.value) goto L_0x2670;
     */
    /* JADX WARN: Code restructure failed: missing block: B:846:0x2667, code lost:
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:847:0x266a, code lost:
        r26 = 1;
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:849:0x2675, code lost:
        if ((r22 instanceof org.mozilla.javascript.JavaScriptException) == false) goto L_0x2681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:850:0x2678, code lost:
        r16 = r13;
        r26 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:852:0x2686, code lost:
        if ((r22 instanceof org.mozilla.javascript.EcmaError) == false) goto L_0x268c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:854:0x2691, code lost:
        if ((r22 instanceof org.mozilla.javascript.EvaluatorException) == false) goto L_0x2697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:856:0x269c, code lost:
        if ((r22 instanceof org.mozilla.javascript.ContinuationPending) == false) goto L_0x26a8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:857:0x269f, code lost:
        r16 = r13;
        r26 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:859:0x26ad, code lost:
        if ((r22 instanceof java.lang.RuntimeException) == false) goto L_0x26c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:861:0x26b6, code lost:
        if (r15.hasFeature(13) == false) goto L_0x26bf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:862:0x26b9, code lost:
        r26 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:863:0x26bf, code lost:
        r26 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:0x26c2, code lost:
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:866:0x26cd, code lost:
        if ((r22 instanceof java.lang.Error) == false) goto L_0x26e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:868:0x26d6, code lost:
        if (r15.hasFeature(13) == false) goto L_0x26dc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:869:0x26dc, code lost:
        r26 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:871:0x26e7, code lost:
        if ((r22 instanceof org.mozilla.javascript.Interpreter.ContinuationJump) == false) goto L_0x26f4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:872:0x26ea, code lost:
        r16 = (org.mozilla.javascript.Interpreter.ContinuationJump) r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:874:0x26fa, code lost:
        if (r15.hasFeature(13) == false) goto L_0x26bf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:875:0x2700, code lost:
        r28 = r22;
        r35 = r16 == 1 ? 1 : 0;
        r34 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:876:0x270e, code lost:
        if (r19 == false) goto L_0x273c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:877:0x2711, code lost:
        addInstructionCount(r15, r21, 100);
     */
    /* JADX WARN: Code restructure failed: missing block: B:878:0x271b, code lost:
        r28 = r22;
        r35 = r16;
        r34 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:879:0x2728, code lost:
        r28 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:880:0x272a, code lost:
        r35 = r13;
        r34 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:881:0x2733, code lost:
        r28 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:882:0x2735, code lost:
        r34 = 1;
        r35 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:935:0x2869, code lost:
        r22 = r18;
        r18 = r17;
        r26 = -1;
        r17 = r20;
        r20 = r13;
        r28 = r14;
        r21 = r0;
        r35 = r16;
        r24 = r24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1043:0x2326 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1054:0x2628 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1056:0x27c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1188:0x258d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x17f3  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x181a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:606:0x1cd1  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x1cf9  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x1d13  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x1d50  */
    /* JADX WARN: Removed duplicated region for block: B:628:0x1da5  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x1ddd  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x1e07 A[Catch: Throwable -> 0x214b, TRY_ENTER, TryCatch #13 {Throwable -> 0x214b, blocks: (B:632:0x1dc0, B:638:0x1e07), top: B:961:0x1dc0 }] */
    /* JADX WARN: Removed duplicated region for block: B:762:0x2335  */
    /* JADX WARN: Removed duplicated region for block: B:836:0x2638  */
    /* JADX WARN: Removed duplicated region for block: B:894:0x277b  */
    /* JADX WARN: Removed duplicated region for block: B:920:0x282d  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x2841  */
    /* JADX WARN: Removed duplicated region for block: B:931:0x2852  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v396, types: [double] */
    /* JADX WARN: Type inference failed for: r22v40, types: [org.mozilla.javascript.Interpreter$ContinuationJump] */
    /* JADX WARN: Type inference failed for: r22v44 */
    /* JADX WARN: Type inference failed for: r22v49 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v29 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v30 */
    /* JADX WARN: Type inference failed for: r24v31 */
    /* JADX WARN: Type inference failed for: r24v32 */
    /* JADX WARN: Type inference failed for: r24v33 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [int] */
    /* JADX WARN: Type inference failed for: r26v119 */
    /* JADX WARN: Type inference failed for: r26v12 */
    /* JADX WARN: Type inference failed for: r26v14 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v20 */
    /* JADX WARN: Type inference failed for: r26v28 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v30, types: [int] */
    /* JADX WARN: Type inference failed for: r26v36 */
    /* JADX WARN: Type inference failed for: r26v38 */
    /* JADX WARN: Type inference failed for: r26v42 */
    /* JADX WARN: Type inference failed for: r26v43 */
    /* JADX WARN: Type inference failed for: r26v44 */
    /* JADX WARN: Type inference failed for: r26v45 */
    /* JADX WARN: Type inference failed for: r26v46 */
    /* JADX WARN: Type inference failed for: r26v47 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Type inference failed for: r26v6, types: [int] */
    /* JADX WARN: Type inference failed for: r26v65, types: [int] */
    /* JADX WARN: Type inference failed for: r26v66, types: [int] */
    /* JADX WARN: Type inference failed for: r26v67 */
    /* JADX WARN: Type inference failed for: r26v68 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r26v72 */
    /* JADX WARN: Type inference failed for: r26v74 */
    /* JADX WARN: Type inference failed for: r26v75, types: [int] */
    /* JADX WARN: Type inference failed for: r26v83 */
    /* JADX WARN: Type inference failed for: r26v84 */
    /* JADX WARN: Type inference failed for: r26v85 */
    /* JADX WARN: Type inference failed for: r26v86 */
    /* JADX WARN: Type inference failed for: r26v87 */
    /* JADX WARN: Type inference failed for: r26v88 */
    /* JADX WARN: Type inference failed for: r26v89 */
    /* JADX WARN: Type inference failed for: r26v90 */
    /* JADX WARN: Type inference failed for: r26v91 */
    /* JADX WARN: Type inference failed for: r26v92 */
    /* JADX WARN: Type inference failed for: r26v93 */
    /* JADX WARN: Type inference failed for: r26v94 */
    /* JADX WARN: Type inference failed for: r26v95 */
    /* JADX WARN: Type inference failed for: r26v96 */
    /* JADX WARN: Type inference failed for: r26v97 */
    /* JADX WARN: Type inference failed for: r26v98 */
    /* JADX WARN: Type inference failed for: r26v99 */
    /* JADX WARN: Type inference failed for: r36v63 */
    /* JADX WARN: Type inference failed for: r36v64 */
    /* JADX WARN: Type inference failed for: r45v0, types: [double] */
    /* JADX WARN: Type inference failed for: r45v10 */
    /* JADX WARN: Type inference failed for: r45v11 */
    /* JADX WARN: Type inference failed for: r45v2 */
    /* JADX WARN: Type inference failed for: r45v3 */
    /* JADX WARN: Type inference failed for: r45v6, types: [double] */
    /* JADX WARN: Type inference failed for: r45v7 */
    /* JADX WARN: Type inference failed for: r45v9 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object interpretLoop(org.mozilla.javascript.Context r12, org.mozilla.javascript.Interpreter.CallFrame r13, java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 10387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.interpretLoop(org.mozilla.javascript.Context, org.mozilla.javascript.Interpreter$CallFrame, java.lang.Object):java.lang.Object");
    }

    private static boolean isFrameEnterExitRequired(CallFrame callFrame) {
        return callFrame.debuggerFrame != null || callFrame.idata.itsNeedsActivation;
    }

    private static CallFrame processThrowable(Context context, Object obj, CallFrame callFrame, int i, boolean z) {
        CallFrame callFrame2;
        int i2;
        if (i >= 0) {
            callFrame2 = callFrame;
            if (callFrame.frozen) {
                callFrame2 = callFrame.cloneFrozen();
            }
            int[] iArr = callFrame2.idata.itsExceptionTable;
            callFrame2.f773pc = iArr[i + 2];
            if (z) {
                callFrame2.pcPrevBranch = callFrame2.f773pc;
            }
            callFrame2.savedStackTop = callFrame2.emptyStackTop;
            int i3 = callFrame2.localShift;
            int i4 = iArr[i + 5];
            int i5 = callFrame2.localShift;
            int i6 = iArr[i + 4];
            callFrame2.scope = (Scriptable) callFrame2.stack[i3 + i4];
            callFrame2.stack[i5 + i6] = obj;
        } else {
            ContinuationJump continuationJump = (ContinuationJump) obj;
            if (continuationJump.branchFrame != callFrame) {
                Kit.codeBug();
            }
            if (continuationJump.capturedFrame == null) {
                Kit.codeBug();
            }
            int i7 = continuationJump.capturedFrame.frameIndex + 1;
            int i8 = i7;
            if (continuationJump.branchFrame != null) {
                i8 = i7 - continuationJump.branchFrame.frameIndex;
            }
            CallFrame callFrame3 = continuationJump.capturedFrame;
            int i9 = 0;
            CallFrame[] callFrameArr = null;
            int i10 = 0;
            while (true) {
                i2 = i10;
                if (i9 != i8) {
                    if (!callFrame3.frozen) {
                        Kit.codeBug();
                    }
                    i10 = i10;
                    callFrameArr = callFrameArr;
                    if (isFrameEnterExitRequired(callFrame3)) {
                        callFrameArr = callFrameArr;
                        if (callFrameArr == null) {
                            callFrameArr = new CallFrame[i8 - i9];
                        }
                        callFrameArr[i10] = callFrame3;
                        i10++;
                    }
                    callFrame3 = callFrame3.parentFrame;
                    i9++;
                }
            }
            while (i2 != 0) {
                i2--;
                enterFrame(context, callFrameArr[i2], ScriptRuntime.emptyArgs, true);
            }
            callFrame2 = continuationJump.capturedFrame.cloneFrozen();
            setCallResult(callFrame2, continuationJump.result, continuationJump.resultDbl);
        }
        callFrame2.throwable = null;
        return callFrame2;
    }

    public static Object restartContinuation(NativeContinuation nativeContinuation, Context context, Scriptable scriptable, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            return ScriptRuntime.doTopCall(nativeContinuation, context, scriptable, null, objArr);
        }
        Object obj = objArr.length == 0 ? Undefined.instance : objArr[0];
        if (((CallFrame) nativeContinuation.getImplementation()) == null) {
            return obj;
        }
        ContinuationJump continuationJump = new ContinuationJump(nativeContinuation, null);
        continuationJump.result = obj;
        return interpretLoop(context, null, continuationJump);
    }

    public static Object resumeGenerator(Context context, Scriptable scriptable, int i, Object obj, Object obj2) {
        CallFrame callFrame = (CallFrame) obj;
        GeneratorState generatorState = new GeneratorState(i, obj2);
        if (i == 2) {
            try {
                return interpretLoop(context, callFrame, generatorState);
            } catch (RuntimeException e) {
                if (e == obj2) {
                    return Undefined.instance;
                }
                throw e;
            }
        } else {
            Object interpretLoop = interpretLoop(context, callFrame, generatorState);
            if (generatorState.returnedException == null) {
                return interpretLoop;
            }
            throw generatorState.returnedException;
        }
    }

    private static void setCallResult(CallFrame callFrame, Object obj, double d) {
        if (callFrame.savedCallOp == 38) {
            callFrame.stack[callFrame.savedStackTop] = obj;
            callFrame.sDbl[callFrame.savedStackTop] = d;
        } else if (callFrame.savedCallOp != 30) {
            Kit.codeBug();
        } else if (obj instanceof Scriptable) {
            callFrame.stack[callFrame.savedStackTop] = obj;
        }
        callFrame.savedCallOp = 0;
    }

    private static boolean stack_boolean(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        boolean z = true;
        boolean z2 = true;
        if (obj == Boolean.TRUE) {
            return true;
        }
        if (obj == Boolean.FALSE) {
            return false;
        }
        if (obj == UniqueTag.DOUBLE_MARK) {
            double d = callFrame.sDbl[i];
            if (d != d || d == 0.0d) {
                z2 = false;
            }
            return z2;
        } else if (obj == null || obj == Undefined.instance) {
            return false;
        } else {
            if (!(obj instanceof Number)) {
                return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : ScriptRuntime.toBoolean(obj);
            }
            double doubleValue = ((Number) obj).doubleValue();
            if (doubleValue != doubleValue || doubleValue == 0.0d) {
                z = false;
            }
            return z;
        }
    }

    private static double stack_double(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj != UniqueTag.DOUBLE_MARK ? ScriptRuntime.toNumber(obj) : callFrame.sDbl[i];
    }

    private static int stack_int32(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj == UniqueTag.DOUBLE_MARK ? ScriptRuntime.toInt32(callFrame.sDbl[i]) : ScriptRuntime.toInt32(obj);
    }

    private static Object thawGenerator(CallFrame callFrame, int i, GeneratorState generatorState, int i2) {
        callFrame.frozen = false;
        int index = getIndex(callFrame.idata.itsICode, callFrame.f773pc);
        callFrame.f773pc += 2;
        if (generatorState.operation == 1) {
            return new JavaScriptException(generatorState.value, callFrame.idata.itsSourceFile, index);
        }
        if (generatorState.operation == 2) {
            return generatorState.value;
        }
        if (generatorState.operation != 0) {
            throw Kit.codeBug();
        }
        if (i2 == 72) {
            callFrame.stack[i] = generatorState.value;
        }
        return Scriptable.NOT_FOUND;
    }

    @Override // org.mozilla.javascript.Evaluator
    public void captureStackInfo(RhinoException rhinoException) {
        CallFrame[] callFrameArr;
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.lastInterpreterFrame == null) {
            rhinoException.interpreterStackInfo = null;
            rhinoException.interpreterLineData = null;
            return;
        }
        if (currentContext.previousInterpreterInvocations == null || currentContext.previousInterpreterInvocations.size() == 0) {
            callFrameArr = new CallFrame[1];
        } else {
            int size = currentContext.previousInterpreterInvocations.size();
            int i = size;
            if (currentContext.previousInterpreterInvocations.peek() == currentContext.lastInterpreterFrame) {
                i = size - 1;
            }
            callFrameArr = new CallFrame[i + 1];
            currentContext.previousInterpreterInvocations.toArray(callFrameArr);
        }
        callFrameArr[callFrameArr.length - 1] = (CallFrame) currentContext.lastInterpreterFrame;
        int i2 = 0;
        for (int i3 = 0; i3 != callFrameArr.length; i3++) {
            i2 += callFrameArr[i3].frameIndex + 1;
        }
        int[] iArr = new int[i2];
        int length = callFrameArr.length;
        while (length != 0) {
            int i4 = length - 1;
            CallFrame callFrame = callFrameArr[i4];
            int i5 = i2;
            while (true) {
                length = i4;
                i2 = i5;
                if (callFrame != null) {
                    i5--;
                    iArr[i5] = callFrame.pcSourceLineStart;
                    callFrame = callFrame.parentFrame;
                }
            }
        }
        if (i2 != 0) {
            Kit.codeBug();
        }
        rhinoException.interpreterStackInfo = callFrameArr;
        rhinoException.interpreterLineData = iArr;
    }

    @Override // org.mozilla.javascript.Evaluator
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        this.itsData = new CodeGenerator().compile(compilerEnvirons, scriptNode, str, z);
        return this.itsData;
    }

    @Override // org.mozilla.javascript.Evaluator
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createFunction(context, scriptable, this.itsData, obj2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public Script createScriptObject(Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createScript(this.itsData, obj2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getPatchedStack(RhinoException rhinoException, String str) {
        char charAt;
        StringBuilder sb = new StringBuilder(str.length() + 1000);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        int i = 0;
        while (length != 0) {
            int i2 = length - 1;
            int indexOf = str.indexOf("org.mozilla.javascript.Interpreter.interpretLoop", i);
            if (indexOf < 0) {
                break;
            }
            int length3 = indexOf + "org.mozilla.javascript.Interpreter.interpretLoop".length();
            while (length3 != str.length() && (charAt = str.charAt(length3)) != '\n' && charAt != '\r') {
                length3++;
            }
            sb.append(str.substring(i, length3));
            for (CallFrame callFrame = callFrameArr[i2]; callFrame != null; callFrame = callFrame.parentFrame) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                length2--;
                InterpreterData interpreterData = callFrame.idata;
                sb.append(systemProperty);
                sb.append("\tat script");
                if (!(interpreterData.itsName == null || interpreterData.itsName.length() == 0)) {
                    sb.append('.');
                    sb.append(interpreterData.itsName);
                }
                sb.append('(');
                sb.append(interpreterData.itsSourceFile);
                int i3 = iArr[length2];
                if (i3 >= 0) {
                    sb.append(':');
                    sb.append(getIndex(interpreterData.itsICode, i3));
                }
                sb.append(')');
            }
            i = length3;
            length = i2;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    @Override // org.mozilla.javascript.Evaluator
    public List<String> getScriptStack(RhinoException rhinoException) {
        ScriptStackElement[][] scriptStackElements = getScriptStackElements(rhinoException);
        ArrayList arrayList = new ArrayList(scriptStackElements.length);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        for (ScriptStackElement[] scriptStackElementArr : scriptStackElements) {
            StringBuilder sb = new StringBuilder();
            for (ScriptStackElement scriptStackElement : scriptStackElementArr) {
                scriptStackElement.renderJavaStyle(sb);
                sb.append(systemProperty);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public ScriptStackElement[][] getScriptStackElements(RhinoException rhinoException) {
        if (rhinoException.interpreterStackInfo == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        while (length != 0) {
            length--;
            CallFrame callFrame = callFrameArr[length];
            ArrayList arrayList2 = new ArrayList();
            while (callFrame != null) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                int i = length2 - 1;
                InterpreterData interpreterData = callFrame.idata;
                String str = interpreterData.itsSourceFile;
                int i2 = iArr[i];
                int index = i2 >= 0 ? getIndex(interpreterData.itsICode, i2) : -1;
                String str2 = (interpreterData.itsName == null || interpreterData.itsName.length() == 0) ? null : interpreterData.itsName;
                callFrame = callFrame.parentFrame;
                arrayList2.add(new ScriptStackElement(str, str2, index));
                length2 = i;
            }
            arrayList.add(arrayList2.toArray(new ScriptStackElement[arrayList2.size()]));
        }
        return (ScriptStackElement[][]) arrayList.toArray(new ScriptStackElement[arrayList.size()]);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        CallFrame callFrame = (CallFrame) context.lastInterpreterFrame;
        InterpreterData interpreterData = callFrame.idata;
        if (callFrame.pcSourceLineStart >= 0) {
            iArr[0] = getIndex(interpreterData.itsICode, callFrame.pcSourceLineStart);
        } else {
            iArr[0] = 0;
        }
        return interpreterData.itsSourceFile;
    }

    @Override // org.mozilla.javascript.Evaluator
    public void setEvalScriptFlag(Script script) {
        ((InterpretedFunction) script).idata.evalScriptFlag = true;
    }
}
