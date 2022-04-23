package org.mozilla.javascript;

import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJavaMethod.class */
public class NativeJavaMethod extends BaseFunction {
    private static final int PREFERENCE_AMBIGUOUS = 3;
    private static final int PREFERENCE_EQUAL = 0;
    private static final int PREFERENCE_FIRST_ARG = 1;
    private static final int PREFERENCE_SECOND_ARG = 2;
    private static final boolean debug = false;
    static final long serialVersionUID = -3440381785576412928L;
    private String functionName;
    MemberBox[] methods;
    private transient CopyOnWriteArrayList<ResolvedOverload> overloadCache;

    public NativeJavaMethod(Method method, String str) {
        this(new MemberBox(method), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeJavaMethod(MemberBox memberBox, String str) {
        this.functionName = str;
        this.methods = new MemberBox[]{memberBox};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeJavaMethod(MemberBox[] memberBoxArr) {
        this.functionName = memberBoxArr[0].getName();
        this.methods = memberBoxArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeJavaMethod(MemberBox[] memberBoxArr, String str) {
        this.functionName = str;
        this.methods = memberBoxArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
        if (r15 > r8.length) goto L_0x008f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008f, code lost:
        r16 = r10;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
        if (r0 != r8.length) goto L_0x008f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a8, code lost:
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00af, code lost:
        if (r15 >= r16) goto L_0x00ca;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00be, code lost:
        if (org.mozilla.javascript.NativeJavaObject.canConvert(r8[r15], r0[r15]) != false) goto L_0x00c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c4, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
        if (r10 >= 0) goto L_0x00d2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d2, code lost:
        r17 = -1;
        r16 = 0;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
        if (r17 == r12) goto L_0x01c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e5, code lost:
        if (r17 != (-1)) goto L_0x00ef;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e8, code lost:
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ef, code lost:
        r18 = r11[r17];
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f6, code lost:
        r0 = r7[r18];
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0102, code lost:
        if (r6.hasFeature(13) == false) goto L_0x013b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x011d, code lost:
        if ((r0.member().getModifiers() & 1) == (r0.member().getModifiers() & 1)) goto L_0x013b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x012c, code lost:
        if ((r0.member().getModifiers() & 1) != 0) goto L_0x0135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012f, code lost:
        r16 = r16 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0135, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013b, code lost:
        r0 = preferSignature(r8, r0, r0.vararg, r0.argTypes, r0.vararg);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0155, code lost:
        if (r0 != 3) goto L_0x015b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x015e, code lost:
        if (r0 != 1) goto L_0x0167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0161, code lost:
        r16 = r16 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x016a, code lost:
        if (r0 != 2) goto L_0x0176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x016d, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0170, code lost:
        r17 = r17 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0178, code lost:
        if (r0 == 0) goto L_0x017f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x017b, code lost:
        org.mozilla.javascript.Kit.codeBug();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x017f, code lost:
        r16 = r10;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x018c, code lost:
        if (r0.isStatic() == false) goto L_0x01ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018f, code lost:
        r16 = r10;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01a4, code lost:
        if (r0.getDeclaringClass().isAssignableFrom(r0.getDeclaringClass()) == false) goto L_0x01ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01aa, code lost:
        if (r17 != (-1)) goto L_0x01b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ad, code lost:
        r16 = r9;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b7, code lost:
        r11[r17] = r9;
        r16 = r10;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c8, code lost:
        r0 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01d2, code lost:
        if (r16 != r0) goto L_0x01de;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01d5, code lost:
        r16 = r9;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e2, code lost:
        if (r15 != r0) goto L_0x01f8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e5, code lost:
        r15 = r12;
        r16 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01fa, code lost:
        if (r11 != null) goto L_0x0208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01fd, code lost:
        r11 = new int[r7.length - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0208, code lost:
        r11[r12] = r9;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0212, code lost:
        r9 = r9 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int findFunction(org.mozilla.javascript.Context r6, org.mozilla.javascript.MemberBox[] r7, java.lang.Object[] r8) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaMethod.findFunction(org.mozilla.javascript.Context, org.mozilla.javascript.MemberBox[], java.lang.Object[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x009f, code lost:
        if (r13.isAssignableFrom(r12) != false) goto L_0x00a8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int preferSignature(java.lang.Object[] r4, java.lang.Class<?>[] r5, boolean r6, java.lang.Class<?>[] r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaMethod.preferSignature(java.lang.Object[], java.lang.Class[], boolean, java.lang.Class[], boolean):int");
    }

    private static void printDebug(String str, MemberBox memberBox, Object[] objArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String scriptSignature(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            String name = obj == null ? "null" : obj instanceof Boolean ? "boolean" : obj instanceof String ? "string" : obj instanceof Number ? "number" : obj instanceof Scriptable ? obj instanceof Undefined ? "undefined" : obj instanceof Wrapper ? ((Wrapper) obj).unwrap().getClass().getName() : obj instanceof Function ? "function" : "object" : JavaMembers.javaSignature(obj.getClass());
            if (i != 0) {
                sb.append(',');
            }
            sb.append(name);
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        Object obj;
        Object obj2;
        if (this.methods.length == 0) {
            throw new RuntimeException("No methods defined for call");
        }
        int findCachedFunction = findCachedFunction(context, objArr);
        int i = 0;
        if (findCachedFunction < 0) {
            Class<?> declaringClass = this.methods[0].method().getDeclaringClass();
            throw Context.reportRuntimeError1("msg.java.no_such_method", declaringClass.getName() + '.' + getFunctionName() + '(' + scriptSignature(objArr) + ')');
        }
        MemberBox memberBox = this.methods[findCachedFunction];
        Class<?>[] clsArr = memberBox.argTypes;
        if (!memberBox.vararg) {
            Object[] objArr3 = objArr;
            while (true) {
                objArr2 = objArr3;
                if (i >= objArr3.length) {
                    break;
                }
                Object obj3 = objArr3[i];
                Object jsToJava = Context.jsToJava(obj3, clsArr[i]);
                objArr3 = objArr3;
                if (jsToJava != obj3) {
                    objArr3 = objArr3;
                    if (objArr == objArr3) {
                        objArr3 = (Object[]) objArr3.clone();
                    }
                    objArr3[i] = jsToJava;
                }
                i++;
            }
        } else {
            objArr2 = new Object[clsArr.length];
            for (int i2 = 0; i2 < clsArr.length - 1; i2++) {
                objArr2[i2] = Context.jsToJava(objArr[i2], clsArr[i2]);
            }
            if (objArr.length != clsArr.length || (objArr[objArr.length - 1] != null && !(objArr[objArr.length - 1] instanceof NativeArray) && !(objArr[objArr.length - 1] instanceof NativeJavaArray))) {
                Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
                Object newInstance = Array.newInstance(componentType, (objArr.length - clsArr.length) + 1);
                for (int i3 = 0; i3 < Array.getLength(newInstance); i3++) {
                    Array.set(newInstance, i3, Context.jsToJava(objArr[(clsArr.length - 1) + i3], componentType));
                }
                obj2 = newInstance;
            } else {
                obj2 = Context.jsToJava(objArr[objArr.length - 1], clsArr[clsArr.length - 1]);
            }
            objArr2[clsArr.length - 1] = obj2;
        }
        if (memberBox.isStatic()) {
            obj = null;
        } else {
            Class<?> declaringClass2 = memberBox.getDeclaringClass();
            for (Scriptable scriptable3 = scriptable2; scriptable3 != null; scriptable3 = scriptable3.getPrototype()) {
                if (scriptable3 instanceof Wrapper) {
                    Object unwrap = ((Wrapper) scriptable3).unwrap();
                    if (declaringClass2.isInstance(unwrap)) {
                        obj = unwrap;
                    }
                }
            }
            throw Context.reportRuntimeError3("msg.nonjava.method", getFunctionName(), ScriptRuntime.toString(scriptable2), declaringClass2.getName());
        }
        Object invoke = memberBox.invoke(obj, objArr2);
        Class<?> returnType = memberBox.method().getReturnType();
        Object wrap = context.getWrapFactory().wrap(context, scriptable, invoke, returnType);
        Object obj4 = wrap;
        if (wrap == null) {
            obj4 = wrap;
            if (returnType == Void.TYPE) {
                obj4 = Undefined.instance;
            }
        }
        return obj4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.BaseFunction
    public String decompile(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        if ((i2 & 1) == 0) {
            z = false;
        }
        if (!z) {
            sb.append("function ");
            sb.append(getFunctionName());
            sb.append("() {");
        }
        sb.append("/*\n");
        sb.append(toString());
        sb.append(z ? "*/\n" : "*/}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int findCachedFunction(Context context, Object[] objArr) {
        if (this.methods.length <= 1) {
            return findFunction(context, this.methods, objArr);
        }
        if (this.overloadCache != null) {
            Iterator<ResolvedOverload> it = this.overloadCache.iterator();
            while (it.hasNext()) {
                ResolvedOverload next = it.next();
                if (next.matches(objArr)) {
                    return next.index;
                }
            }
        } else {
            this.overloadCache = new CopyOnWriteArrayList<>();
        }
        int findFunction = findFunction(context, this.methods, objArr);
        if (this.overloadCache.size() < this.methods.length * 2) {
            synchronized (this.overloadCache) {
                ResolvedOverload resolvedOverload = new ResolvedOverload(objArr, findFunction);
                if (!this.overloadCache.contains(resolvedOverload)) {
                    this.overloadCache.add(0, resolvedOverload);
                }
            }
        }
        return findFunction;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String getFunctionName() {
        return this.functionName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.methods.length;
        for (int i = 0; i != length; i++) {
            if (this.methods[i].isMethod()) {
                Method method = this.methods[i].method();
                sb.append(JavaMembers.javaSignature(method.getReturnType()));
                sb.append(' ');
                sb.append(method.getName());
            } else {
                sb.append(this.methods[i].getName());
            }
            sb.append(JavaMembers.liveConnectSignature(this.methods[i].argTypes));
            sb.append('\n');
        }
        return sb.toString();
    }
}
