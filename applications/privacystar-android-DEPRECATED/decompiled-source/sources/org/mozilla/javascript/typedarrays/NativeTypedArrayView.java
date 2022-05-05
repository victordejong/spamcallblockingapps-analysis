package org.mozilla.javascript.typedarrays;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ExternalArrayData;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/typedarrays/NativeTypedArrayView.class */
public abstract class NativeTypedArrayView<T> extends NativeArrayBufferView implements List<T>, RandomAccess, ExternalArrayData {
    private static final int Id_BYTES_PER_ELEMENT = 11;
    private static final int Id_constructor = 1;
    private static final int Id_get = 2;
    private static final int Id_length = 10;
    private static final int Id_set = 3;
    private static final int Id_subarray = 4;
    private static final int MAX_INSTANCE_ID = 11;
    protected static final int MAX_PROTOTYPE_ID = 4;
    protected final int length;

    /* JADX INFO: Access modifiers changed from: protected */
    public NativeTypedArrayView() {
        this.length = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NativeTypedArrayView(NativeArrayBuffer nativeArrayBuffer, int i, int i2, int i3) {
        super(nativeArrayBuffer, i, i3);
        this.length = i2;
    }

    private NativeTypedArrayView js_constructor(Context context, Scriptable scriptable, Object[] objArr) {
        int i = 0;
        int i2 = 0;
        if (!isArg(objArr, 0)) {
            return construct(NativeArrayBuffer.EMPTY_BUFFER, 0, 0);
        }
        if ((objArr[0] instanceof Number) || (objArr[0] instanceof String)) {
            int int32 = ScriptRuntime.toInt32(objArr[0]);
            return construct(makeArrayBuffer(context, scriptable, getBytesPerElement() * int32), 0, int32);
        } else if (objArr[0] instanceof NativeTypedArrayView) {
            NativeTypedArrayView nativeTypedArrayView = (NativeTypedArrayView) objArr[0];
            NativeTypedArrayView construct = construct(makeArrayBuffer(context, scriptable, nativeTypedArrayView.length * getBytesPerElement()), 0, nativeTypedArrayView.length);
            for (int i3 = 0; i3 < nativeTypedArrayView.length; i3++) {
                construct.js_set(i3, nativeTypedArrayView.js_get(i3));
            }
            return construct;
        } else if (objArr[0] instanceof NativeArrayBuffer) {
            NativeArrayBuffer nativeArrayBuffer = (NativeArrayBuffer) objArr[0];
            if (isArg(objArr, 1)) {
                i = ScriptRuntime.toInt32(objArr[1]);
            }
            int int322 = isArg(objArr, 2) ? ScriptRuntime.toInt32(objArr[2]) * getBytesPerElement() : nativeArrayBuffer.getLength() - i;
            if (i < 0 || i > nativeArrayBuffer.buffer.length) {
                throw ScriptRuntime.constructError("RangeError", "offset out of range");
            } else if (int322 < 0 || i + int322 > nativeArrayBuffer.buffer.length) {
                throw ScriptRuntime.constructError("RangeError", "length out of range");
            } else if (i % getBytesPerElement() != 0) {
                throw ScriptRuntime.constructError("RangeError", "offset must be a multiple of the byte size");
            } else if (int322 % getBytesPerElement() == 0) {
                return construct(nativeArrayBuffer, i, int322 / getBytesPerElement());
            } else {
                throw ScriptRuntime.constructError("RangeError", "offset and buffer must be a multiple of the byte size");
            }
        } else if (objArr[0] instanceof NativeArray) {
            List<Object> list = (List) objArr[0];
            NativeTypedArrayView construct2 = construct(makeArrayBuffer(context, scriptable, list.size() * getBytesPerElement()), 0, list.size());
            for (Object obj : list) {
                construct2.js_set(i2, obj);
                i2++;
            }
            return construct2;
        } else {
            throw ScriptRuntime.constructError("Error", "invalid argument");
        }
    }

    private Object js_subarray(Context context, Scriptable scriptable, int i, int i2) {
        int i3 = i;
        if (i < 0) {
            i3 = i + this.length;
        }
        int i4 = i2;
        if (i2 < 0) {
            i4 = i2 + this.length;
        }
        int max = Math.max(0, i3);
        int max2 = Math.max(0, Math.min(this.length, i4) - max);
        return context.newObject(scriptable, getClassName(), new Object[]{this.arrayBuffer, Integer.valueOf(Math.min(max * getBytesPerElement(), this.arrayBuffer.getLength())), Integer.valueOf(max2)});
    }

    private NativeArrayBuffer makeArrayBuffer(Context context, Scriptable scriptable, int i) {
        return (NativeArrayBuffer) context.newObject(scriptable, NativeArrayBuffer.CLASS_NAME, new Object[]{Integer.valueOf(i)});
    }

    private void setRange(NativeArray nativeArray, int i) {
        if (i > this.length) {
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        } else if (nativeArray.size() + i > this.length) {
            throw ScriptRuntime.constructError("RangeError", "offset + length out of range");
        } else {
            Iterator it = nativeArray.iterator();
            while (it.hasNext()) {
                js_set(i, it.next());
                i++;
            }
        }
    }

    private void setRange(NativeTypedArrayView nativeTypedArrayView, int i) {
        if (i >= this.length) {
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        } else if (nativeTypedArrayView.length > this.length - i) {
            throw ScriptRuntime.constructError("RangeError", "source array too long");
        } else {
            if (nativeTypedArrayView.arrayBuffer == this.arrayBuffer) {
                Object[] objArr = new Object[nativeTypedArrayView.length];
                for (int i2 = 0; i2 < nativeTypedArrayView.length; i2++) {
                    objArr[i2] = nativeTypedArrayView.js_get(i2);
                }
                for (int i3 = 0; i3 < nativeTypedArrayView.length; i3++) {
                    js_set(i3 + i, objArr[i3]);
                }
                return;
            }
            for (int i4 = 0; i4 < nativeTypedArrayView.length; i4++) {
                js_set(i4 + i, nativeTypedArrayView.js_get(i4));
            }
        }
    }

    @Override // java.util.List
    public void add(int i, T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkIndex(int i) {
        return i < 0 || i >= this.length;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    protected abstract NativeTypedArrayView construct(NativeArrayBuffer nativeArrayBuffer, int i, int i2);

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        try {
            NativeTypedArrayView nativeTypedArrayView = (NativeTypedArrayView) obj;
            if (this.length != nativeTypedArrayView.length) {
                return false;
            }
            for (int i = 0; i < this.length; i++) {
                if (!js_get(i).equals(nativeTypedArrayView.js_get(i))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(getClassName())) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return js_constructor(context, scriptable, objArr);
            case 2:
                if (objArr.length > 0) {
                    return realThis(scriptable2, idFunctionObject).js_get(ScriptRuntime.toInt32(objArr[0]));
                }
                throw ScriptRuntime.constructError("Error", "invalid arguments");
            case 3:
                if (objArr.length > 0) {
                    NativeTypedArrayView realThis = realThis(scriptable2, idFunctionObject);
                    if (objArr[0] instanceof NativeTypedArrayView) {
                        realThis.setRange((NativeTypedArrayView) objArr[0], isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : 0);
                        return Undefined.instance;
                    } else if (objArr[0] instanceof NativeArray) {
                        realThis.setRange((NativeArray) objArr[0], isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : 0);
                        return Undefined.instance;
                    } else if (objArr[0] instanceof Scriptable) {
                        return Undefined.instance;
                    } else {
                        if (isArg(objArr, 2)) {
                            return realThis.js_set(ScriptRuntime.toInt32(objArr[0]), objArr[1]);
                        }
                    }
                }
                throw ScriptRuntime.constructError("Error", "invalid arguments");
            case 4:
                if (objArr.length > 0) {
                    NativeTypedArrayView realThis2 = realThis(scriptable2, idFunctionObject);
                    return realThis2.js_subarray(context, scriptable, ScriptRuntime.toInt32(objArr[0]), isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : realThis2.length);
                }
                throw ScriptRuntime.constructError("Error", "invalid arguments");
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        idFunctionObject.put("BYTES_PER_ELEMENT", idFunctionObject, ScriptRuntime.wrapInt(getBytesPerElement()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 6) {
            str2 = "length";
            i = 10;
        } else if (length == 17) {
            str2 = "BYTES_PER_ELEMENT";
            i = 11;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        return i == 0 ? super.findInstanceIdInfo(str) : instanceIdInfo(5, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        if (r4.charAt(1) == 'e') goto L_0x008f;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.length()
            r5 = r0
            r0 = 3
            r6 = r0
            r0 = r5
            r1 = 3
            if (r0 != r1) goto L_0x004e
            r0 = r4
            r1 = 0
            char r0 = r0.charAt(r1)
            r5 = r0
            r0 = r5
            r1 = 103(0x67, float:1.44E-43)
            if (r0 != r1) goto L_0x0031
            r0 = r4
            r1 = 2
            char r0 = r0.charAt(r1)
            r1 = 116(0x74, float:1.63E-43)
            if (r0 != r1) goto L_0x006e
            r0 = r4
            r1 = 1
            char r0 = r0.charAt(r1)
            r1 = 101(0x65, float:1.42E-43)
            if (r0 != r1) goto L_0x006e
            r0 = 2
            r6 = r0
            goto L_0x008f
        L_0x0031:
            r0 = r5
            r1 = 115(0x73, float:1.61E-43)
            if (r0 != r1) goto L_0x006e
            r0 = r4
            r1 = 2
            char r0 = r0.charAt(r1)
            r1 = 116(0x74, float:1.63E-43)
            if (r0 != r1) goto L_0x006e
            r0 = r4
            r1 = 1
            char r0 = r0.charAt(r1)
            r1 = 101(0x65, float:1.42E-43)
            if (r0 != r1) goto L_0x006e
            goto L_0x008f
        L_0x004e:
            r0 = r5
            r1 = 8
            if (r0 != r1) goto L_0x005e
            java.lang.String r0 = "subarray"
            r7 = r0
            r0 = 4
            r5 = r0
            goto L_0x0073
        L_0x005e:
            r0 = r5
            r1 = 11
            if (r0 != r1) goto L_0x006e
            java.lang.String r0 = "constructor"
            r7 = r0
            r0 = 1
            r5 = r0
            goto L_0x0073
        L_0x006e:
            r0 = 0
            r7 = r0
            r0 = 0
            r5 = r0
        L_0x0073:
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x008f
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x008f
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x008f
            r0 = 0
            r6 = r0
        L_0x008f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.typedarrays.NativeTypedArrayView.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return js_get(i);
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public Object getArrayElement(int i) {
        return js_get(i);
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public int getArrayLength() {
        return this.length;
    }

    public abstract int getBytesPerElement();

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        Object[] objArr = new Object[this.length];
        for (int i = 0; i < this.length; i++) {
            objArr[i] = Integer.valueOf(i);
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 10:
                return "length";
            case 11:
                return "BYTES_PER_ELEMENT";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i) {
            case 10:
                return ScriptRuntime.wrapInt(this.length);
            case 11:
                return ScriptRuntime.wrapInt(getBytesPerElement());
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 11;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return i > 0 && i < this.length;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        for (int i = 0; i < this.length; i++) {
            js_get(i).hashCode();
        }
        return 0;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (obj.equals(js_get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 2;
        switch (i) {
            case 1:
                str = "constructor";
                i2 = 1;
                break;
            case 2:
                str = "get";
                i2 = 1;
                break;
            case 3:
                str = "set";
                break;
            case 4:
                str = "subarray";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(getClassName(), i, str, i2);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new NativeTypedArrayIterator(this, 0);
    }

    protected abstract Object js_get(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object js_set(int i, Object obj);

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (obj.equals(js_get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return new NativeTypedArrayIterator(this, 0);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i) {
        if (!checkIndex(i)) {
            return new NativeTypedArrayIterator(this, i);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        js_set(i, obj);
    }

    protected abstract NativeTypedArrayView realThis(Scriptable scriptable, IdFunctionObject idFunctionObject);

    @Override // java.util.List
    public T remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public void setArrayElement(int i, Object obj) {
        js_set(i, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public int size() {
        return this.length;
    }

    @Override // java.util.List
    public List<T> subList(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[this.length];
        for (int i = 0; i < this.length; i++) {
            objArr[i] = js_get(i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List, java.util.Collection
    public <U> U[] toArray(U[] uArr) {
        if (uArr.length < this.length) {
            uArr = (U[]) ((Object[]) Array.newInstance(uArr.getClass().getComponentType(), this.length));
        }
        for (int i = 0; i < this.length; i++) {
            try {
                uArr[i] = js_get(i);
            } catch (ClassCastException e) {
                throw new ArrayStoreException();
            }
        }
        return uArr;
    }
}
