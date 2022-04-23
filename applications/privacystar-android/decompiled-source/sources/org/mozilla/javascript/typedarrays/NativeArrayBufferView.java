package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/typedarrays/NativeArrayBufferView.class */
public abstract class NativeArrayBufferView extends IdScriptableObject {
    private static final int Id_buffer = 1;
    private static final int Id_byteLength = 3;
    private static final int Id_byteOffset = 2;
    private static final int MAX_INSTANCE_ID = 3;
    private static final long serialVersionUID = 6884475582973958419L;
    protected final NativeArrayBuffer arrayBuffer;
    protected final int byteLength;
    protected final int offset;

    public NativeArrayBufferView() {
        this.arrayBuffer = NativeArrayBuffer.EMPTY_BUFFER;
        this.offset = 0;
        this.byteLength = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NativeArrayBufferView(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        this.offset = i;
        this.byteLength = i2;
        this.arrayBuffer = nativeArrayBuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isArg(Object[] objArr, int i) {
        return objArr.length > i && !Undefined.instance.equals(objArr[i]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 6) {
            str2 = "buffer";
            i = 1;
        } else {
            if (length == 10) {
                char charAt = str.charAt(4);
                if (charAt == 'L') {
                    str2 = "byteLength";
                    i = 3;
                } else if (charAt == 'O') {
                    str2 = "byteOffset";
                    i = 2;
                }
            }
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        return i == 0 ? super.findInstanceIdInfo(str) : instanceIdInfo(5, i);
    }

    public NativeArrayBuffer getBuffer() {
        return this.arrayBuffer;
    }

    public int getByteLength() {
        return this.byteLength;
    }

    public int getByteOffset() {
        return this.offset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 1:
                return "buffer";
            case 2:
                return "byteOffset";
            case 3:
                return "byteLength";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i) {
            case 1:
                return this.arrayBuffer;
            case 2:
                return ScriptRuntime.wrapInt(this.offset);
            case 3:
                return ScriptRuntime.wrapInt(this.byteLength);
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 3;
    }
}
