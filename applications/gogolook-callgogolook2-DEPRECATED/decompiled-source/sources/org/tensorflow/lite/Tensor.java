package org.tensorflow.lite;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.Arrays;
import p646n.p649b.p650a.EnumC15200a;
/* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/Tensor.class */
public final class Tensor {

    /* renamed from: a */
    public long f33449a;

    /* renamed from: b */
    public final EnumC15200a f33450b;

    /* renamed from: c */
    public int[] f33451c;

    /* renamed from: org.tensorflow.lite.Tensor$a */
    /* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/Tensor$a.class */
    public static class C15377a {
        public C15377a(float f, int i) {
        }
    }

    public Tensor(long j) {
        this.f33449a = j;
        this.f33450b = EnumC15200a.m246a(dtype(j));
        this.f33451c = shape(j);
        shapeSignature(j);
        new C15377a(quantizationScale(j), quantizationZeroPoint(j));
    }

    /* renamed from: a */
    public static Tensor m31a(long j, int i) {
        return new Tensor(create(j, i));
    }

    /* renamed from: a */
    public static void m29a(Object obj, int i, int[] iArr) {
        if (!(iArr == null || i == iArr.length)) {
            int length = Array.getLength(obj);
            if (iArr[i] == 0) {
                iArr[i] = length;
            } else if (iArr[i] != length) {
                throw new IllegalArgumentException(String.format("Mismatched lengths (%d and %d) in dimension %d", Integer.valueOf(iArr[i]), Integer.valueOf(length), Integer.valueOf(i)));
            }
            for (int i2 = 0; i2 < length; i2++) {
                m29a(Array.get(obj, i2), i + 1, iArr);
            }
        }
    }

    public static native ByteBuffer buffer(long j);

    public static native long create(long j, int i);

    public static native void delete(long j);

    public static native int dtype(long j);

    /* renamed from: g */
    public static int m17g(Object obj) {
        if (obj == null || !obj.getClass().isArray()) {
            return 0;
        }
        if (Array.getLength(obj) != 0) {
            return m17g(Array.get(obj, 0)) + 1;
        }
        throw new IllegalArgumentException("Array lengths cannot be 0.");
    }

    /* renamed from: h */
    public static int[] m16h(Object obj) {
        int[] iArr = new int[m17g(obj)];
        m29a(obj, 0, iArr);
        return iArr;
    }

    public static native boolean hasDelegateBufferHandle(long j);

    /* renamed from: i */
    public static EnumC15200a m15i(Object obj) {
        if (obj != null) {
            Class<?> cls = obj.getClass();
            if (cls.isArray()) {
                while (cls.isArray()) {
                    cls = cls.getComponentType();
                }
                if (Float.TYPE.equals(cls)) {
                    return EnumC15200a.FLOAT32;
                }
                if (Integer.TYPE.equals(cls)) {
                    return EnumC15200a.INT32;
                }
                if (Byte.TYPE.equals(cls)) {
                    return EnumC15200a.UINT8;
                }
                if (Long.TYPE.equals(cls)) {
                    return EnumC15200a.INT64;
                }
                if (String.class.equals(cls)) {
                    return EnumC15200a.STRING;
                }
            } else if (Float.class.equals(cls) || (obj instanceof FloatBuffer)) {
                return EnumC15200a.FLOAT32;
            } else {
                if (Integer.class.equals(cls) || (obj instanceof IntBuffer)) {
                    return EnumC15200a.INT32;
                }
                if (Byte.class.equals(cls)) {
                    return EnumC15200a.UINT8;
                }
                if (Long.class.equals(cls) || (obj instanceof LongBuffer)) {
                    return EnumC15200a.INT64;
                }
                if (String.class.equals(cls)) {
                    return EnumC15200a.STRING;
                }
            }
        }
        throw new IllegalArgumentException("DataType error: cannot resolve DataType of " + obj.getClass().getName());
    }

    /* renamed from: j */
    public static boolean m14j(Object obj) {
        return obj instanceof Buffer;
    }

    /* renamed from: k */
    public static boolean m13k(Object obj) {
        return obj instanceof ByteBuffer;
    }

    public static native String name(long j);

    public static native int numBytes(long j);

    public static native float quantizationScale(long j);

    public static native int quantizationZeroPoint(long j);

    public static native void readMultiDimensionalArray(long j, Object obj);

    public static native int[] shape(long j);

    public static native int[] shapeSignature(long j);

    public static native void writeDirectBuffer(long j, Buffer buffer);

    public static native void writeMultiDimensionalArray(long j, Object obj);

    public static native void writeScalar(long j, Object obj);

    /* renamed from: a */
    public Object m30a(Object obj) {
        if (obj != null) {
            m18f(obj);
            m21d(obj);
            if (m14j(obj)) {
                m28a((Buffer) obj);
            } else {
                readMultiDimensionalArray(this.f33449a, obj);
            }
            return obj;
        } else if (hasDelegateBufferHandle(this.f33449a)) {
            return obj;
        } else {
            throw new IllegalArgumentException("Null outputs are allowed only if the Tensor is bound to a buffer handle.");
        }
    }

    /* renamed from: a */
    public final ByteBuffer m32a() {
        return buffer(this.f33449a).order(ByteOrder.nativeOrder());
    }

    /* renamed from: a */
    public final void m28a(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            ((ByteBuffer) buffer).put(m32a());
        } else if (buffer instanceof FloatBuffer) {
            ((FloatBuffer) buffer).put(m32a().asFloatBuffer());
        } else if (buffer instanceof LongBuffer) {
            ((LongBuffer) buffer).put(m32a().asLongBuffer());
        } else if (buffer instanceof IntBuffer) {
            ((IntBuffer) buffer).put(m32a().asIntBuffer());
        } else {
            throw new IllegalArgumentException("Unexpected output buffer type: " + buffer);
        }
    }

    /* renamed from: b */
    public void m27b() {
        delete(this.f33449a);
        this.f33449a = 0L;
    }

    /* renamed from: b */
    public final void m25b(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) buffer;
            if (!byteBuffer.isDirect() || byteBuffer.order() != ByteOrder.nativeOrder()) {
                m32a().put(byteBuffer);
            } else {
                writeDirectBuffer(this.f33449a, buffer);
            }
        } else if (buffer instanceof LongBuffer) {
            LongBuffer longBuffer = (LongBuffer) buffer;
            if (!longBuffer.isDirect() || longBuffer.order() != ByteOrder.nativeOrder()) {
                m32a().asLongBuffer().put(longBuffer);
            } else {
                writeDirectBuffer(this.f33449a, buffer);
            }
        } else if (buffer instanceof FloatBuffer) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer;
            if (!floatBuffer.isDirect() || floatBuffer.order() != ByteOrder.nativeOrder()) {
                m32a().asFloatBuffer().put(floatBuffer);
            } else {
                writeDirectBuffer(this.f33449a, buffer);
            }
        } else if (buffer instanceof IntBuffer) {
            IntBuffer intBuffer = (IntBuffer) buffer;
            if (!intBuffer.isDirect() || intBuffer.order() != ByteOrder.nativeOrder()) {
                m32a().asIntBuffer().put(intBuffer);
            } else {
                writeDirectBuffer(this.f33449a, buffer);
            }
        } else {
            throw new IllegalArgumentException("Unexpected input buffer type: " + buffer);
        }
    }

    /* renamed from: b */
    public int[] m26b(Object obj) {
        if (obj == null || m14j(obj)) {
            return null;
        }
        m18f(obj);
        int[] h = m16h(obj);
        if (Arrays.equals(this.f33451c, h)) {
            return null;
        }
        return h;
    }

    /* renamed from: c */
    public String m24c() {
        return name(this.f33449a);
    }

    /* renamed from: c */
    public void m23c(Object obj) {
        if (obj != null) {
            m18f(obj);
            m19e(obj);
            if (m14j(obj)) {
                m25b((Buffer) obj);
            } else if (obj.getClass().isArray()) {
                writeMultiDimensionalArray(this.f33449a, obj);
            } else {
                writeScalar(this.f33449a, obj);
            }
        } else if (!hasDelegateBufferHandle(this.f33449a)) {
            throw new IllegalArgumentException("Null inputs are allowed only if the Tensor is bound to a buffer handle.");
        }
    }

    /* renamed from: d */
    public int m22d() {
        return numBytes(this.f33449a);
    }

    /* renamed from: d */
    public final void m21d(Object obj) {
        if (m14j(obj)) {
            Buffer buffer = (Buffer) obj;
            int d = m22d();
            int capacity = m13k(obj) ? buffer.capacity() : buffer.capacity() * this.f33450b.m247a();
            if (d > capacity) {
                throw new IllegalArgumentException(String.format("Cannot copy from a TensorFlowLite tensor (%s) with %d bytes to a Java Buffer with %d bytes.", m24c(), Integer.valueOf(d), Integer.valueOf(capacity)));
            }
            return;
        }
        int[] h = m16h(obj);
        if (!Arrays.equals(h, this.f33451c)) {
            throw new IllegalArgumentException(String.format("Cannot copy from a TensorFlowLite tensor (%s) with shape %s to a Java object with shape %s.", m24c(), Arrays.toString(this.f33451c), Arrays.toString(h)));
        }
    }

    /* renamed from: e */
    public void m20e() {
        this.f33451c = shape(this.f33449a);
    }

    /* renamed from: e */
    public final void m19e(Object obj) {
        if (m14j(obj)) {
            Buffer buffer = (Buffer) obj;
            int d = m22d();
            int capacity = m13k(obj) ? buffer.capacity() : buffer.capacity() * this.f33450b.m247a();
            if (d != capacity) {
                throw new IllegalArgumentException(String.format("Cannot copy to a TensorFlowLite tensor (%s) with %d bytes from a Java Buffer with %d bytes.", m24c(), Integer.valueOf(d), Integer.valueOf(capacity)));
            }
            return;
        }
        int[] h = m16h(obj);
        if (!Arrays.equals(h, this.f33451c)) {
            throw new IllegalArgumentException(String.format("Cannot copy to a TensorFlowLite tensor (%s) with shape %s from a Java object with shape %s.", m24c(), Arrays.toString(this.f33451c), Arrays.toString(h)));
        }
    }

    /* renamed from: f */
    public final void m18f(Object obj) {
        EnumC15200a i;
        if (!m13k(obj) && (i = m15i(obj)) != this.f33450b && !i.m245b().equals(this.f33450b.m245b())) {
            throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s).", this.f33450b, obj.getClass().getName(), i));
        }
    }
}
