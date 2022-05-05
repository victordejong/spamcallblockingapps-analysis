package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/typedarrays/NativeArrayBuffer.class */
public class NativeArrayBuffer extends IdScriptableObject {
    public static final String CLASS_NAME = "ArrayBuffer";
    private static final int ConstructorId_isView = -3;
    private static final byte[] EMPTY_BUF = new byte[0];
    public static final NativeArrayBuffer EMPTY_BUFFER = new NativeArrayBuffer();
    private static final int Id_byteLength = 1;
    private static final int Id_constructor = 1;
    private static final int Id_isView = 3;
    private static final int Id_slice = 2;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PROTOTYPE_ID = 3;
    private static final long serialVersionUID = 3110411773054879549L;
    final byte[] buffer;

    public NativeArrayBuffer() {
        this.buffer = EMPTY_BUF;
    }

    public NativeArrayBuffer(int i) {
        if (i < 0) {
            throw ScriptRuntime.constructError("RangeError", "Negative array length " + i);
        } else if (i == 0) {
            this.buffer = EMPTY_BUF;
        } else {
            this.buffer = new byte[i];
        }
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeArrayBuffer().exportAsJSClass(3, scriptable, z);
    }

    private static boolean isArg(Object[] objArr, int i) {
        return objArr.length > i && !Undefined.instance.equals(objArr[i]);
    }

    private static NativeArrayBuffer realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeArrayBuffer) {
            return (NativeArrayBuffer) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(CLASS_NAME)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        boolean z = true;
        int i = 0;
        int i2 = 0;
        if (methodId != -3) {
            switch (methodId) {
                case 1:
                    if (isArg(objArr, 0)) {
                        i = ScriptRuntime.toInt32(objArr[0]);
                    }
                    return new NativeArrayBuffer(i);
                case 2:
                    NativeArrayBuffer realThis = realThis(scriptable2, idFunctionObject);
                    if (isArg(objArr, 0)) {
                        i2 = ScriptRuntime.toInt32(objArr[0]);
                    }
                    return realThis.slice(i2, isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : realThis.buffer.length);
                default:
                    throw new IllegalArgumentException(String.valueOf(methodId));
            }
        } else {
            if (!isArg(objArr, 0) || !(objArr[0] instanceof NativeArrayBufferView)) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, CLASS_NAME, -3, "isView", 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return "byteLength".equals(str) ? instanceIdInfo(5, 1) : super.findInstanceIdInfo(str);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 5) {
            str2 = "slice";
            i = 2;
        } else if (length == 6) {
            str2 = "isView";
            i = 3;
        } else if (length == 11) {
            str2 = "constructor";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        return i;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CLASS_NAME;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "byteLength" : super.getInstanceIdName(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapInt(this.buffer.length) : super.getInstanceIdValue(i);
    }

    public int getLength() {
        return this.buffer.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                str = "slice";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(CLASS_NAME, i, str, 1);
    }

    public NativeArrayBuffer slice(int i, int i2) {
        int length = this.buffer.length;
        int i3 = i2;
        if (i2 < 0) {
            i3 = i2 + this.buffer.length;
        }
        int max = Math.max(0, Math.min(length, i3));
        int i4 = i;
        if (i < 0) {
            i4 = i + this.buffer.length;
        }
        int min = Math.min(max, Math.max(0, i4));
        int i5 = max - min;
        NativeArrayBuffer nativeArrayBuffer = new NativeArrayBuffer(i5);
        System.arraycopy(this.buffer, min, nativeArrayBuffer.buffer, 0, i5);
        return nativeArrayBuffer;
    }
}
