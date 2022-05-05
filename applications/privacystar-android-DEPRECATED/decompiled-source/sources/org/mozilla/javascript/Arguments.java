package org.mozilla.javascript;

import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Arguments.class */
public final class Arguments extends IdScriptableObject {
    private static final String FTAG = "Arguments";
    private static final int Id_callee = 1;
    private static final int Id_caller = 3;
    private static final int Id_length = 2;
    private static final int MAX_INSTANCE_ID = 3;
    static final long serialVersionUID = 4275508002492040609L;
    private NativeCall activation;
    private Object[] args;
    private Object calleeObj;
    private Object callerObj;
    private Object lengthObj;
    private int callerAttr = 2;
    private int calleeAttr = 2;
    private int lengthAttr = 2;

    public Arguments(NativeCall nativeCall) {
        this.activation = nativeCall;
        Scriptable parentScope = nativeCall.getParentScope();
        setParentScope(parentScope);
        setPrototype(ScriptableObject.getObjectPrototype(parentScope));
        this.args = nativeCall.originalArgs;
        this.lengthObj = Integer.valueOf(this.args.length);
        NativeFunction nativeFunction = nativeCall.function;
        this.calleeObj = nativeFunction;
        int languageVersion = nativeFunction.getLanguageVersion();
        if (languageVersion > 130 || languageVersion == 0) {
            this.callerObj = NOT_FOUND;
        } else {
            this.callerObj = null;
        }
    }

    private Object arg(int i) {
        return (i < 0 || this.args.length <= i) ? NOT_FOUND : this.args[i];
    }

    private Object getFromActivation(int i) {
        return this.activation.get(this.activation.function.getParamOrVarName(i), this.activation);
    }

    private void putIntoActivation(int i, Object obj) {
        this.activation.put(this.activation.function.getParamOrVarName(i), this.activation, obj);
    }

    private void removeArg(int i) {
        synchronized (this) {
            if (this.args[i] != NOT_FOUND) {
                if (this.args == this.activation.originalArgs) {
                    this.args = (Object[]) this.args.clone();
                }
                this.args[i] = NOT_FOUND;
            }
        }
    }

    private void replaceArg(int i, Object obj) {
        if (sharedWithActivation(i)) {
            putIntoActivation(i, obj);
        }
        synchronized (this) {
            if (this.args == this.activation.originalArgs) {
                this.args = (Object[]) this.args.clone();
            }
            this.args[i] = obj;
        }
    }

    private boolean sharedWithActivation(int i) {
        NativeFunction nativeFunction = this.activation.function;
        int paramCount = nativeFunction.getParamCount();
        if (i >= paramCount) {
            return false;
        }
        if (i >= paramCount - 1) {
            return true;
        }
        String paramOrVarName = nativeFunction.getParamOrVarName(i);
        while (true) {
            i++;
            if (i >= paramCount) {
                return true;
            }
            if (paramOrVarName.equals(nativeFunction.getParamOrVarName(i))) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.ScriptableObject
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        super.defineOwnProperty(context, obj, scriptableObject, z);
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number != i || arg(i) == NOT_FOUND) {
            return;
        }
        if (isAccessorDescriptor(scriptableObject)) {
            removeArg(i);
            return;
        }
        Object property = getProperty(scriptableObject, FirebaseAnalytics.Param.VALUE);
        if (property != NOT_FOUND) {
            replaceArg(i, property);
            if (isFalse(getProperty(scriptableObject, "writable"))) {
                removeArg(i);
            }
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        if (i >= 0 && i < this.args.length) {
            removeArg(i);
        }
        super.delete(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int findInstanceIdInfo(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.length()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            r1 = 6
            if (r0 != r1) goto L_0x0040
            r0 = r4
            r1 = 5
            char r0 = r0.charAt(r1)
            r5 = r0
            r0 = r5
            r1 = 101(0x65, float:1.42E-43)
            if (r0 != r1) goto L_0x0022
            java.lang.String r0 = "callee"
            r7 = r0
            r0 = 1
            r5 = r0
            goto L_0x0045
        L_0x0022:
            r0 = r5
            r1 = 104(0x68, float:1.46E-43)
            if (r0 != r1) goto L_0x0031
            java.lang.String r0 = "length"
            r7 = r0
            r0 = 2
            r5 = r0
            goto L_0x0045
        L_0x0031:
            r0 = r5
            r1 = 114(0x72, float:1.6E-43)
            if (r0 != r1) goto L_0x0040
            java.lang.String r0 = "caller"
            r7 = r0
            r0 = 3
            r5 = r0
            goto L_0x0045
        L_0x0040:
            r0 = 0
            r7 = r0
            r0 = 0
            r5 = r0
        L_0x0045:
            r0 = r7
            if (r0 == 0) goto L_0x005c
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x005c
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x005c
            goto L_0x005e
        L_0x005c:
            r0 = r5
            r6 = r0
        L_0x005e:
            r0 = r6
            if (r0 != 0) goto L_0x0068
            r0 = r3
            r1 = r4
            int r0 = super.findInstanceIdInfo(r1)
            return r0
        L_0x0068:
            r0 = r6
            switch(r0) {
                case 1: goto L_0x009c;
                case 2: goto L_0x0094;
                case 3: goto L_0x008c;
                default: goto L_0x0084;
            }
        L_0x0084:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x008c:
            r0 = r3
            int r0 = r0.callerAttr
            r5 = r0
            goto L_0x00a1
        L_0x0094:
            r0 = r3
            int r0 = r0.lengthAttr
            r5 = r0
            goto L_0x00a1
        L_0x009c:
            r0 = r3
            int r0 = r0.calleeAttr
            r5 = r0
        L_0x00a1:
            r0 = r5
            r1 = r6
            int r0 = instanceIdInfo(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Arguments.findInstanceIdInfo(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        Object arg = arg(i);
        return arg == NOT_FOUND ? super.get(i, scriptable) : sharedWithActivation(i) ? getFromActivation(i) : arg;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return FTAG;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z) {
        Object[] ids = super.getIds(z);
        if (this.args.length != 0) {
            boolean[] zArr = new boolean[this.args.length];
            int length = this.args.length;
            for (int i = 0; i != ids.length; i++) {
                Object obj = ids[i];
                length = length;
                if (obj instanceof Integer) {
                    int intValue = ((Integer) obj).intValue();
                    length = length;
                    if (intValue >= 0) {
                        length = length;
                        if (intValue < this.args.length) {
                            length = length;
                            if (!zArr[intValue]) {
                                zArr[intValue] = true;
                                length--;
                            }
                        }
                    }
                }
            }
            int i2 = length;
            if (!z) {
                int i3 = 0;
                while (true) {
                    i2 = length;
                    if (i3 >= zArr.length) {
                        break;
                    }
                    length = length;
                    if (!zArr[i3]) {
                        length = length;
                        if (super.has(i3, this)) {
                            zArr[i3] = true;
                            length--;
                        }
                    }
                    i3++;
                }
            }
            if (i2 != 0) {
                Object[] objArr = new Object[ids.length + i2];
                System.arraycopy(ids, 0, objArr, i2, ids.length);
                int i4 = 0;
                for (int i5 = 0; i5 != this.args.length; i5++) {
                    if (zArr != null) {
                        i4 = i4;
                        if (zArr[i5]) {
                        }
                    }
                    objArr[i4] = Integer.valueOf(i5);
                    i4++;
                }
                ids = objArr;
                if (i4 != i2) {
                    Kit.codeBug();
                    ids = objArr;
                }
            }
        }
        return ids;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 1:
                return "callee";
            case 2:
                return "length";
            case 3:
                return "caller";
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        Object obj;
        switch (i) {
            case 1:
                return this.calleeObj;
            case 2:
                return this.lengthObj;
            case 3:
                Object obj2 = this.callerObj;
                if (obj2 == UniqueTag.NULL_VALUE) {
                    obj = null;
                } else {
                    obj = obj2;
                    if (obj2 == null) {
                        Scriptable scriptable = this.activation.parentActivationCall;
                        obj = obj2;
                        if (scriptable != null) {
                            obj = scriptable.get("arguments", scriptable);
                        }
                    }
                }
                return obj;
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number != i) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        Object arg = arg(i);
        if (arg == NOT_FOUND) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        if (sharedWithActivation(i)) {
            arg = getFromActivation(i);
        }
        if (super.has(i, this)) {
            ScriptableObject ownPropertyDescriptor = super.getOwnPropertyDescriptor(context, obj);
            ownPropertyDescriptor.put(FirebaseAnalytics.Param.VALUE, ownPropertyDescriptor, arg);
            return ownPropertyDescriptor;
        }
        Scriptable parentScope = getParentScope();
        Scriptable scriptable = parentScope;
        if (parentScope == null) {
            scriptable = this;
        }
        return buildDataDescriptor(scriptable, arg, 0);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        if (arg(i) != NOT_FOUND) {
            return true;
        }
        return super.has(i, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (arg(i) == NOT_FOUND) {
            super.put(i, scriptable, obj);
        } else {
            replaceArg(i, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        switch (i) {
            case 1:
                this.calleeAttr = i2;
                return;
            case 2:
                this.lengthAttr = i2;
                return;
            case 3:
                this.callerAttr = i2;
                return;
            default:
                super.setInstanceIdAttributes(i, i2);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        switch (i) {
            case 1:
                this.calleeObj = obj;
                return;
            case 2:
                this.lengthObj = obj;
                return;
            case 3:
                if (obj == null) {
                    obj = UniqueTag.NULL_VALUE;
                }
                this.callerObj = obj;
                return;
            default:
                super.setInstanceIdValue(i, obj);
                return;
        }
    }
}
