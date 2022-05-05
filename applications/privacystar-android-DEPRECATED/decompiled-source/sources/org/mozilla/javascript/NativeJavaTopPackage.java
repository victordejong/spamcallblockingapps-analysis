package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJavaTopPackage.class */
public class NativeJavaTopPackage extends NativeJavaPackage implements Function, IdFunctionCall {
    private static final int Id_getClass = 1;
    static final long serialVersionUID = -1455787259477709999L;
    private static final String[][] commonPackages = {new String[]{"java", "lang", "reflect"}, new String[]{"java", "io"}, new String[]{"java", "math"}, new String[]{"java", "net"}, new String[]{"java", "util", "zip"}, new String[]{"java", "text", "resources"}, new String[]{"java", "applet"}, new String[]{"javax", "swing"}};
    private static final Object FTAG = "JavaTopPackage";

    NativeJavaTopPackage(ClassLoader classLoader) {
        super(true, "", classLoader);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeJavaTopPackage nativeJavaTopPackage = new NativeJavaTopPackage(context.getApplicationClassLoader());
        nativeJavaTopPackage.setPrototype(getObjectPrototype(scriptable));
        nativeJavaTopPackage.setParentScope(scriptable);
        for (int i = 0; i != commonPackages.length; i++) {
            NativeJavaPackage nativeJavaPackage = nativeJavaTopPackage;
            for (int i2 = 0; i2 != commonPackages[i].length; i2++) {
                nativeJavaPackage = nativeJavaPackage.forcePackage(commonPackages[i][i2], scriptable);
            }
        }
        IdFunctionObject idFunctionObject = new IdFunctionObject(nativeJavaTopPackage, FTAG, 1, "getClass", 1, scriptable);
        String[] topPackageNames = ScriptRuntime.getTopPackageNames();
        Object[] objArr = new NativeJavaPackage[topPackageNames.length];
        for (int i3 = 0; i3 < topPackageNames.length; i3++) {
            objArr[i3] = (NativeJavaPackage) nativeJavaTopPackage.get(topPackageNames[i3], nativeJavaTopPackage);
        }
        ScriptableObject scriptableObject = (ScriptableObject) scriptable;
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
        scriptableObject.defineProperty("Packages", nativeJavaTopPackage, 2);
        for (int i4 = 0; i4 < topPackageNames.length; i4++) {
            scriptableObject.defineProperty(topPackageNames[i4], objArr[i4], 2);
        }
    }

    private Scriptable js_getClass(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length > 0) {
            int i = 0;
            if (objArr[0] instanceof Wrapper) {
                String name = ((Wrapper) objArr[0]).unwrap().getClass().getName();
                Scriptable scriptable2 = this;
                while (true) {
                    int indexOf = name.indexOf(46, i);
                    Object obj = scriptable2.get(indexOf == -1 ? name.substring(i) : name.substring(i, indexOf), scriptable2);
                    if (!(obj instanceof Scriptable)) {
                        break;
                    }
                    scriptable2 = (Scriptable) obj;
                    if (indexOf == -1) {
                        return scriptable2;
                    }
                    i = indexOf + 1;
                }
            }
        }
        throw Context.reportRuntimeError0("msg.not.java.obj");
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return construct(context, scriptable, objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @Override // org.mozilla.javascript.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.Scriptable construct(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, java.lang.Object[] r9) {
        /*
            r6 = this;
            r0 = r9
            int r0 = r0.length
            if (r0 == 0) goto L_0x002b
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0 instanceof org.mozilla.javascript.Wrapper
            if (r0 == 0) goto L_0x001c
            r0 = r9
            org.mozilla.javascript.Wrapper r0 = (org.mozilla.javascript.Wrapper) r0
            java.lang.Object r0 = r0.unwrap()
            r7 = r0
        L_0x001c:
            r0 = r7
            boolean r0 = r0 instanceof java.lang.ClassLoader
            if (r0 == 0) goto L_0x002b
            r0 = r7
            java.lang.ClassLoader r0 = (java.lang.ClassLoader) r0
            r7 = r0
            goto L_0x002d
        L_0x002b:
            r0 = 0
            r7 = r0
        L_0x002d:
            r0 = r7
            if (r0 != 0) goto L_0x0039
            java.lang.String r0 = "msg.not.classloader"
            org.mozilla.javascript.EvaluatorException r0 = org.mozilla.javascript.Context.reportRuntimeError0(r0)
            r0 = 0
            return r0
        L_0x0039:
            org.mozilla.javascript.NativeJavaPackage r0 = new org.mozilla.javascript.NativeJavaPackage
            r1 = r0
            r2 = 1
            java.lang.String r3 = ""
            r4 = r7
            r1.<init>(r2, r3, r4)
            r7 = r0
            r0 = r7
            r1 = r8
            org.mozilla.javascript.ScriptRuntime.setObjectProtoAndParent(r0, r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaTopPackage.construct(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):org.mozilla.javascript.Scriptable");
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1) {
            return js_getClass(context, scriptable, objArr);
        }
        throw idFunctionObject.unknown();
    }
}
