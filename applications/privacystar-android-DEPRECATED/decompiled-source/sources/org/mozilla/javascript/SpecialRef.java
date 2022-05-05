package org.mozilla.javascript;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/SpecialRef.class */
public class SpecialRef extends Ref {
    private static final int SPECIAL_NONE = 0;
    private static final int SPECIAL_PARENT = 2;
    private static final int SPECIAL_PROTO = 1;
    static final long serialVersionUID = -7521596632456797847L;
    private String name;
    private Scriptable target;
    private int type;

    private SpecialRef(Scriptable scriptable, int i, String str) {
        this.target = scriptable;
        this.type = i;
        this.name = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Ref createSpecial(Context context, Scriptable scriptable, Object obj, String str) {
        int i;
        Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw ScriptRuntime.undefReadError(obj, str);
        }
        if (str.equals("__proto__")) {
            i = 1;
        } else if (str.equals("__parent__")) {
            i = 2;
        } else {
            throw new IllegalArgumentException(str);
        }
        if (!context.hasFeature(5)) {
            i = 0;
        }
        return new SpecialRef(objectOrNull, i, str);
    }

    @Override // org.mozilla.javascript.Ref
    public boolean delete(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.deleteObjectElem(this.target, this.name, context);
        }
        return false;
    }

    @Override // org.mozilla.javascript.Ref
    public Object get(Context context) {
        switch (this.type) {
            case 0:
                return ScriptRuntime.getObjectProp(this.target, this.name, context);
            case 1:
                return this.target.getPrototype();
            case 2:
                return this.target.getParentScope();
            default:
                throw Kit.codeBug();
        }
    }

    @Override // org.mozilla.javascript.Ref
    public boolean has(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.hasObjectElem(this.target, this.name, context);
        }
        return true;
    }

    @Override // org.mozilla.javascript.Ref
    @Deprecated
    public Object set(Context context, Object obj) {
        throw new IllegalStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    @Override // org.mozilla.javascript.Ref
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object set(org.mozilla.javascript.Context r6, org.mozilla.javascript.Scriptable r7, java.lang.Object r8) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.type
            switch(r0) {
                case 0: goto L_0x0083;
                case 1: goto L_0x0024;
                case 2: goto L_0x0024;
                default: goto L_0x0020;
            }
        L_0x0020:
            java.lang.RuntimeException r0 = org.mozilla.javascript.Kit.codeBug()
            throw r0
        L_0x0024:
            r0 = r6
            r1 = r8
            r2 = r7
            org.mozilla.javascript.Scriptable r0 = org.mozilla.javascript.ScriptRuntime.toObjectOrNull(r0, r1, r2)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0062
            r0 = r8
            r7 = r0
        L_0x0031:
            r0 = r7
            r1 = r5
            org.mozilla.javascript.Scriptable r1 = r1.target
            if (r0 != r1) goto L_0x0043
            java.lang.String r0 = "msg.cyclic.value"
            r1 = r5
            java.lang.String r1 = r1.name
            org.mozilla.javascript.EvaluatorException r0 = org.mozilla.javascript.Context.reportRuntimeError1(r0, r1)
            throw r0
        L_0x0043:
            r0 = r5
            int r0 = r0.type
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r7
            org.mozilla.javascript.Scriptable r0 = r0.getPrototype()
            r6 = r0
            goto L_0x005c
        L_0x0055:
            r0 = r7
            org.mozilla.javascript.Scriptable r0 = r0.getParentScope()
            r6 = r0
        L_0x005c:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0031
        L_0x0062:
            r0 = r5
            int r0 = r0.type
            r1 = 1
            if (r0 != r1) goto L_0x0077
            r0 = r5
            org.mozilla.javascript.Scriptable r0 = r0.target
            r1 = r8
            r0.setPrototype(r1)
            goto L_0x0081
        L_0x0077:
            r0 = r5
            org.mozilla.javascript.Scriptable r0 = r0.target
            r1 = r8
            r0.setParentScope(r1)
        L_0x0081:
            r0 = r8
            return r0
        L_0x0083:
            r0 = r5
            org.mozilla.javascript.Scriptable r0 = r0.target
            r1 = r5
            java.lang.String r1 = r1.name
            r2 = r8
            r3 = r6
            java.lang.Object r0 = org.mozilla.javascript.ScriptRuntime.setObjectProp(r0, r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.SpecialRef.set(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object):java.lang.Object");
    }
}
