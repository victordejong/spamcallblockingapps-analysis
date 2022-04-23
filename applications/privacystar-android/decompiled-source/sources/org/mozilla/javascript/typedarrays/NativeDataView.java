package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/typedarrays/NativeDataView.class */
public class NativeDataView extends NativeArrayBufferView {
    public static final String CLASS_NAME = "DataView";
    private static final int Id_constructor = 1;
    private static final int Id_getFloat32 = 8;
    private static final int Id_getFloat64 = 9;
    private static final int Id_getInt16 = 4;
    private static final int Id_getInt32 = 6;
    private static final int Id_getInt8 = 2;
    private static final int Id_getUint16 = 5;
    private static final int Id_getUint32 = 7;
    private static final int Id_getUint8 = 3;
    private static final int Id_setFloat32 = 16;
    private static final int Id_setFloat64 = 17;
    private static final int Id_setInt16 = 12;
    private static final int Id_setInt32 = 14;
    private static final int Id_setInt8 = 10;
    private static final int Id_setUint16 = 13;
    private static final int Id_setUint32 = 15;
    private static final int Id_setUint8 = 11;
    private static final int MAX_PROTOTYPE_ID = 17;
    private static final long serialVersionUID = 1427967607557438968L;

    public NativeDataView() {
    }

    public NativeDataView(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        super(nativeArrayBuffer, i, i2);
    }

    private void checkOffset(Object[] objArr, int i) {
        if (objArr.length <= i) {
            throw ScriptRuntime.constructError("TypeError", "missing required offset parameter");
        } else if (Undefined.instance.equals(objArr[i])) {
            throw ScriptRuntime.constructError("RangeError", "invalid offset");
        }
    }

    private void checkValue(Object[] objArr, int i) {
        if (objArr.length <= i) {
            throw ScriptRuntime.constructError("TypeError", "missing required value parameter");
        } else if (Undefined.instance.equals(objArr[i])) {
            throw ScriptRuntime.constructError("RangeError", "invalid value parameter");
        }
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeDataView().exportAsJSClass(17, scriptable, z);
    }

    private NativeDataView js_constructor(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        if (i2 < 0) {
            throw ScriptRuntime.constructError("RangeError", "length out of range");
        } else if (i >= 0 && i + i2 <= nativeArrayBuffer.getLength()) {
            return new NativeDataView(nativeArrayBuffer, i, i2);
        } else {
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        }
    }

    private Object js_getFloat(int i, Object[] objArr) {
        checkOffset(objArr, 0);
        int int32 = ScriptRuntime.toInt32(objArr[0]);
        rangeCheck(int32, i);
        boolean z = false;
        if (isArg(objArr, 1)) {
            z = false;
            if (i > 1) {
                z = false;
                if (ScriptRuntime.toBoolean(objArr[1])) {
                    z = true;
                }
            }
        }
        if (i == 4) {
            return ByteIo.readFloat32(this.arrayBuffer.buffer, int32, z);
        }
        if (i == 8) {
            return ByteIo.readFloat64(this.arrayBuffer.buffer, int32, z);
        }
        throw new AssertionError();
    }

    private Object js_getInt(int i, boolean z, Object[] objArr) {
        checkOffset(objArr, 0);
        int int32 = ScriptRuntime.toInt32(objArr[0]);
        rangeCheck(int32, i);
        boolean z2 = false;
        if (isArg(objArr, 1)) {
            z2 = false;
            if (i > 1) {
                z2 = false;
                if (ScriptRuntime.toBoolean(objArr[1])) {
                    z2 = true;
                }
            }
        }
        if (i != 4) {
            switch (i) {
                case 1:
                    return z ? ByteIo.readInt8(this.arrayBuffer.buffer, int32) : ByteIo.readUint8(this.arrayBuffer.buffer, int32);
                case 2:
                    return z ? ByteIo.readInt16(this.arrayBuffer.buffer, int32, z2) : ByteIo.readUint16(this.arrayBuffer.buffer, int32, z2);
                default:
                    throw new AssertionError();
            }
        } else {
            return z ? ByteIo.readInt32(this.arrayBuffer.buffer, int32, z2) : ByteIo.readUint32(this.arrayBuffer.buffer, int32, z2);
        }
    }

    private void js_setFloat(int i, Object[] objArr) {
        checkOffset(objArr, 0);
        checkValue(objArr, 1);
        int int32 = ScriptRuntime.toInt32(objArr[0]);
        rangeCheck(int32, i);
        boolean z = false;
        if (isArg(objArr, 2)) {
            z = false;
            if (i > 1) {
                z = false;
                if (ScriptRuntime.toBoolean(objArr[2])) {
                    z = true;
                }
            }
        }
        double number = ScriptRuntime.toNumber(objArr[1]);
        if (i == 4) {
            ByteIo.writeFloat32(this.arrayBuffer.buffer, int32, number, z);
        } else if (i != 8) {
            throw new AssertionError();
        } else {
            ByteIo.writeFloat64(this.arrayBuffer.buffer, int32, number, z);
        }
    }

    private void js_setInt(int i, boolean z, Object[] objArr) {
        checkOffset(objArr, 0);
        checkValue(objArr, 1);
        int int32 = ScriptRuntime.toInt32(objArr[0]);
        rangeCheck(int32, i);
        boolean z2 = false;
        if (isArg(objArr, 2)) {
            z2 = false;
            if (i > 1) {
                z2 = false;
                if (ScriptRuntime.toBoolean(objArr[2])) {
                    z2 = true;
                }
            }
        }
        if (i != 4) {
            switch (i) {
                case 1:
                    if (z) {
                        ByteIo.writeInt8(this.arrayBuffer.buffer, int32, Conversions.toInt8(objArr[1]));
                        return;
                    } else {
                        ByteIo.writeUint8(this.arrayBuffer.buffer, int32, Conversions.toUint8(objArr[1]));
                        return;
                    }
                case 2:
                    if (z) {
                        ByteIo.writeInt16(this.arrayBuffer.buffer, int32, Conversions.toInt16(objArr[1]), z2);
                        return;
                    } else {
                        ByteIo.writeUint16(this.arrayBuffer.buffer, int32, Conversions.toUint16(objArr[1]), z2);
                        return;
                    }
                default:
                    throw new AssertionError();
            }
        } else if (z) {
            ByteIo.writeInt32(this.arrayBuffer.buffer, int32, Conversions.toInt32(objArr[1]), z2);
        } else {
            ByteIo.writeUint32(this.arrayBuffer.buffer, int32, Conversions.toUint32(objArr[1]), z2);
        }
    }

    private void rangeCheck(int i, int i2) {
        if (i < 0 || i + i2 > this.byteLength) {
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        }
    }

    private static NativeDataView realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeDataView) {
            return (NativeDataView) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(getClassName())) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        int i = 0;
        switch (methodId) {
            case 1:
                if (!isArg(objArr, 0) || !(objArr[0] instanceof NativeArrayBuffer)) {
                    throw ScriptRuntime.constructError("TypeError", "Missing parameters");
                }
                NativeArrayBuffer nativeArrayBuffer = (NativeArrayBuffer) objArr[0];
                if (isArg(objArr, 1)) {
                    i = ScriptRuntime.toInt32(objArr[1]);
                }
                return js_constructor(nativeArrayBuffer, i, isArg(objArr, 2) ? ScriptRuntime.toInt32(objArr[2]) : nativeArrayBuffer.getLength() - i);
            case 2:
                return realThis(scriptable2, idFunctionObject).js_getInt(1, true, objArr);
            case 3:
                return realThis(scriptable2, idFunctionObject).js_getInt(1, false, objArr);
            case 4:
                return realThis(scriptable2, idFunctionObject).js_getInt(2, true, objArr);
            case 5:
                return realThis(scriptable2, idFunctionObject).js_getInt(2, false, objArr);
            case 6:
                return realThis(scriptable2, idFunctionObject).js_getInt(4, true, objArr);
            case 7:
                return realThis(scriptable2, idFunctionObject).js_getInt(4, false, objArr);
            case 8:
                return realThis(scriptable2, idFunctionObject).js_getFloat(4, objArr);
            case 9:
                return realThis(scriptable2, idFunctionObject).js_getFloat(8, objArr);
            case 10:
                realThis(scriptable2, idFunctionObject).js_setInt(1, true, objArr);
                return Undefined.instance;
            case 11:
                realThis(scriptable2, idFunctionObject).js_setInt(1, false, objArr);
                return Undefined.instance;
            case 12:
                realThis(scriptable2, idFunctionObject).js_setInt(2, true, objArr);
                return Undefined.instance;
            case 13:
                realThis(scriptable2, idFunctionObject).js_setInt(2, false, objArr);
                return Undefined.instance;
            case 14:
                realThis(scriptable2, idFunctionObject).js_setInt(4, true, objArr);
                return Undefined.instance;
            case 15:
                realThis(scriptable2, idFunctionObject).js_setInt(4, false, objArr);
                return Undefined.instance;
            case 16:
                realThis(scriptable2, idFunctionObject).js_setFloat(4, objArr);
                return Undefined.instance;
            case 17:
                realThis(scriptable2, idFunctionObject).js_setFloat(8, objArr);
                return Undefined.instance;
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int i = 6;
        switch (str.length()) {
            case 7:
                char charAt = str.charAt(0);
                if (charAt != 'g') {
                    if (charAt == 's') {
                        str2 = "setInt8";
                        i = 10;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "getInt8";
                    i = 2;
                    break;
                }
            case 8:
                char charAt2 = str.charAt(6);
                if (charAt2 == '1') {
                    char charAt3 = str.charAt(0);
                    if (charAt3 != 'g') {
                        if (charAt3 == 's') {
                            str2 = "setInt16";
                            i = 12;
                            break;
                        }
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        str2 = "getInt16";
                        i = 4;
                        break;
                    }
                } else if (charAt2 == '3') {
                    char charAt4 = str.charAt(0);
                    if (charAt4 == 'g') {
                        str2 = "getInt32";
                        break;
                    } else {
                        if (charAt4 == 's') {
                            str2 = "setInt32";
                            i = 14;
                            break;
                        }
                        str2 = null;
                        i = 0;
                    }
                } else {
                    if (charAt2 == 't') {
                        char charAt5 = str.charAt(0);
                        if (charAt5 != 'g') {
                            if (charAt5 == 's') {
                                str2 = "setUint8";
                                i = 11;
                                break;
                            }
                        } else {
                            str2 = "getUint8";
                            i = 3;
                            break;
                        }
                    }
                    str2 = null;
                    i = 0;
                }
            case 9:
                char charAt6 = str.charAt(0);
                if (charAt6 == 'g') {
                    char charAt7 = str.charAt(8);
                    if (charAt7 != '2') {
                        if (charAt7 == '6') {
                            str2 = "getUint16";
                            i = 5;
                            break;
                        }
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        str2 = "getUint32";
                        i = 7;
                        break;
                    }
                } else {
                    if (charAt6 == 's') {
                        char charAt8 = str.charAt(8);
                        if (charAt8 != '2') {
                            if (charAt8 == '6') {
                                str2 = "setUint16";
                                i = 13;
                                break;
                            }
                        } else {
                            str2 = "setUint32";
                            i = 15;
                            break;
                        }
                    }
                    str2 = null;
                    i = 0;
                }
            case 10:
                char charAt9 = str.charAt(0);
                if (charAt9 == 'g') {
                    char charAt10 = str.charAt(9);
                    if (charAt10 != '2') {
                        if (charAt10 == '4') {
                            str2 = "getFloat64";
                            i = 9;
                            break;
                        }
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        str2 = "getFloat32";
                        i = 8;
                        break;
                    }
                } else {
                    if (charAt9 == 's') {
                        char charAt11 = str.charAt(9);
                        if (charAt11 != '2') {
                            if (charAt11 == '4') {
                                str2 = "setFloat64";
                                i = 17;
                                break;
                            }
                        } else {
                            str2 = "setFloat32";
                            i = 16;
                            break;
                        }
                    }
                    str2 = null;
                    i = 0;
                }
            case 11:
                str2 = "constructor";
                i = 1;
                break;
            default:
                str2 = null;
                i = 0;
                break;
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
        return CLASS_NAME;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                str = "getInt8";
                break;
            case 3:
                str = "getUint8";
                break;
            case 4:
                str = "getInt16";
                break;
            case 5:
                str = "getUint16";
                break;
            case 6:
                str = "getInt32";
                break;
            case 7:
                str = "getUint32";
                break;
            case 8:
                str = "getFloat32";
                break;
            case 9:
                str = "getFloat64";
                break;
            case 10:
                str = "setInt8";
                i2 = 2;
                break;
            case 11:
                str = "setUint8";
                i2 = 2;
                break;
            case 12:
                str = "setInt16";
                i2 = 2;
                break;
            case 13:
                str = "setUint16";
                i2 = 2;
                break;
            case 14:
                str = "setInt32";
                i2 = 2;
                break;
            case 15:
                str = "setUint32";
                i2 = 2;
                break;
            case 16:
                str = "setFloat32";
                i2 = 2;
                break;
            case 17:
                str = "setFloat64";
                i2 = 2;
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(getClassName(), i, str, i2);
    }
}
