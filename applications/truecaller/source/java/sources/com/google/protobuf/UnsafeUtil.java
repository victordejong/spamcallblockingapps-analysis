package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/UnsafeUtil.class */
public final class UnsafeUtil {
    private static final int BYTE_ARRAY_ALIGNMENT;
    public static final long BYTE_ARRAY_BASE_OFFSET;
    public static final boolean IS_BIG_ENDIAN;
    private static final int STRIDE = 8;
    private static final int STRIDE_ALIGNMENT_MASK = 7;
    private static final Unsafe UNSAFE = getUnsafe();
    private static final Class<?> MEMORY_CLASS = Android.getMemoryClass();
    private static final boolean IS_ANDROID_64 = determineAndroidSupportByAddressSize(Long.TYPE);
    private static final boolean IS_ANDROID_32 = determineAndroidSupportByAddressSize(Integer.TYPE);
    private static final MemoryAccessor MEMORY_ACCESSOR = getMemoryAccessor();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = supportsUnsafeByteBufferOperations();
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = supportsUnsafeArrayOperations();
    private static final long BOOLEAN_ARRAY_BASE_OFFSET = arrayBaseOffset(boolean[].class);
    private static final long BOOLEAN_ARRAY_INDEX_SCALE = arrayIndexScale(boolean[].class);
    private static final long INT_ARRAY_BASE_OFFSET = arrayBaseOffset(int[].class);
    private static final long INT_ARRAY_INDEX_SCALE = arrayIndexScale(int[].class);
    private static final long LONG_ARRAY_BASE_OFFSET = arrayBaseOffset(long[].class);
    private static final long LONG_ARRAY_INDEX_SCALE = arrayIndexScale(long[].class);
    private static final long FLOAT_ARRAY_BASE_OFFSET = arrayBaseOffset(float[].class);
    private static final long FLOAT_ARRAY_INDEX_SCALE = arrayIndexScale(float[].class);
    private static final long DOUBLE_ARRAY_BASE_OFFSET = arrayBaseOffset(double[].class);
    private static final long DOUBLE_ARRAY_INDEX_SCALE = arrayIndexScale(double[].class);
    private static final long OBJECT_ARRAY_BASE_OFFSET = arrayBaseOffset(Object[].class);
    private static final long OBJECT_ARRAY_INDEX_SCALE = arrayIndexScale(Object[].class);
    private static final long BUFFER_ADDRESS_OFFSET = fieldOffset(bufferAddressField());

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/UnsafeUtil$MemoryAccessor.class */
    public static abstract class MemoryAccessor {
        public Unsafe unsafe;

        public MemoryAccessor(Unsafe unsafe) {
            this.unsafe = unsafe;
        }

        public final int arrayBaseOffset(Class<?> cls) {
            return this.unsafe.arrayBaseOffset(cls);
        }

        public final int arrayIndexScale(Class<?> cls) {
            return this.unsafe.arrayIndexScale(cls);
        }

        public abstract void copyMemory(long j, byte[] bArr, long j2, long j3);

        public abstract void copyMemory(byte[] bArr, long j, long j2, long j3);

        public abstract boolean getBoolean(Object obj, long j);

        public abstract byte getByte(long j);

        public abstract byte getByte(Object obj, long j);

        public abstract double getDouble(Object obj, long j);

        public abstract float getFloat(Object obj, long j);

        public abstract int getInt(long j);

        public final int getInt(Object obj, long j) {
            return this.unsafe.getInt(obj, j);
        }

        public abstract long getLong(long j);

        public final long getLong(Object obj, long j) {
            return this.unsafe.getLong(obj, j);
        }

        public final Object getObject(Object obj, long j) {
            return this.unsafe.getObject(obj, j);
        }

        public abstract Object getStaticObject(Field field);

        public final long objectFieldOffset(Field field) {
            return this.unsafe.objectFieldOffset(field);
        }

        public abstract void putBoolean(Object obj, long j, boolean z);

        public abstract void putByte(long j, byte b);

        public abstract void putByte(Object obj, long j, byte b);

        public abstract void putDouble(Object obj, long j, double d);

        public abstract void putFloat(Object obj, long j, float f);

        public abstract void putInt(long j, int i);

        public final void putInt(Object obj, long j, int i) {
            this.unsafe.putInt(obj, j, i);
        }

        public abstract void putLong(long j, long j2);

        public final void putLong(Object obj, long j, long j2) {
            this.unsafe.putLong(obj, j, j2);
        }

        public final void putObject(Object obj, long j, Object obj2) {
            this.unsafe.putObject(obj, j, obj2);
        }

        public boolean supportsUnsafeArrayOperations() {
            Unsafe unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                UnsafeUtil.logMissingMethod(th);
                return false;
            }
        }

        public boolean supportsUnsafeByteBufferOperations() {
            Unsafe unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return UnsafeUtil.bufferAddressField() != null;
            } catch (Throwable th) {
                UnsafeUtil.logMissingMethod(th);
                return false;
            }
        }
    }

    static {
        long arrayBaseOffset = arrayBaseOffset(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = arrayBaseOffset;
        BYTE_ARRAY_ALIGNMENT = (int) (7 & arrayBaseOffset);
        IS_BIG_ENDIAN = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private UnsafeUtil() {
    }

    public static long addressOffset(ByteBuffer byteBuffer) {
        return MEMORY_ACCESSOR.getLong(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    public static <T> T allocateInstance(Class<T> cls) {
        try {
            return (T) UNSAFE.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int arrayBaseOffset(Class<?> cls) {
        return HAS_UNSAFE_ARRAY_OPERATIONS ? MEMORY_ACCESSOR.arrayBaseOffset(cls) : -1;
    }

    private static int arrayIndexScale(Class<?> cls) {
        return HAS_UNSAFE_ARRAY_OPERATIONS ? MEMORY_ACCESSOR.arrayIndexScale(cls) : -1;
    }

    public static Field bufferAddressField() {
        Field field;
        if (!Android.isOnAndroidDevice() || (field = field(Buffer.class, "effectiveDirectAddress")) == null) {
            Field field2 = field(Buffer.class, "address");
            if (field2 == null || field2.getType() != Long.TYPE) {
                field2 = null;
            }
            return field2;
        }
        return field;
    }

    public static void copyMemory(long j, byte[] bArr, long j2, long j3) {
        MEMORY_ACCESSOR.copyMemory(j, bArr, j2, j3);
    }

    public static void copyMemory(byte[] bArr, long j, long j2, long j3) {
        MEMORY_ACCESSOR.copyMemory(bArr, j, j2, j3);
    }

    public static void copyMemory(byte[] bArr, long j, byte[] bArr2, long j2, long j3) {
        System.arraycopy(bArr, (int) j, bArr2, (int) j2, (int) j3);
    }

    private static boolean determineAndroidSupportByAddressSize(Class<?> cls) {
        if (!Android.isOnAndroidDevice()) {
            return false;
        }
        try {
            Class<?> cls2 = MEMORY_CLASS;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static Field field(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    private static long fieldOffset(Field field) {
        MemoryAccessor memoryAccessor;
        return (field == null || (memoryAccessor = MEMORY_ACCESSOR) == null) ? (char) 65535 : memoryAccessor.objectFieldOffset(field);
    }

    private static int firstDifferingByteIndexNativeEndian(long j, long j2) {
        return (IS_BIG_ENDIAN ? Long.numberOfLeadingZeros(j ^ j2) : Long.numberOfTrailingZeros(j ^ j2)) >> 3;
    }

    public static boolean getBoolean(Object obj, long j) {
        return MEMORY_ACCESSOR.getBoolean(obj, j);
    }

    public static boolean getBoolean(boolean[] zArr, long j) {
        return MEMORY_ACCESSOR.getBoolean(zArr, (j * BOOLEAN_ARRAY_INDEX_SCALE) + BOOLEAN_ARRAY_BASE_OFFSET);
    }

    public static boolean getBooleanBigEndian(Object obj, long j) {
        return getByteBigEndian(obj, j) != 0;
    }

    public static boolean getBooleanLittleEndian(Object obj, long j) {
        return getByteLittleEndian(obj, j) != 0;
    }

    public static byte getByte(long j) {
        return MEMORY_ACCESSOR.getByte(j);
    }

    public static byte getByte(Object obj, long j) {
        return MEMORY_ACCESSOR.getByte(obj, j);
    }

    public static byte getByte(byte[] bArr, long j) {
        return MEMORY_ACCESSOR.getByte(bArr, BYTE_ARRAY_BASE_OFFSET + j);
    }

    public static byte getByteBigEndian(Object obj, long j) {
        return (byte) ((getInt(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    public static byte getByteLittleEndian(Object obj, long j) {
        return (byte) ((getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    public static double getDouble(Object obj, long j) {
        return MEMORY_ACCESSOR.getDouble(obj, j);
    }

    public static double getDouble(double[] dArr, long j) {
        return MEMORY_ACCESSOR.getDouble(dArr, (j * DOUBLE_ARRAY_INDEX_SCALE) + DOUBLE_ARRAY_BASE_OFFSET);
    }

    public static float getFloat(Object obj, long j) {
        return MEMORY_ACCESSOR.getFloat(obj, j);
    }

    public static float getFloat(float[] fArr, long j) {
        return MEMORY_ACCESSOR.getFloat(fArr, (j * FLOAT_ARRAY_INDEX_SCALE) + FLOAT_ARRAY_BASE_OFFSET);
    }

    public static int getInt(long j) {
        return MEMORY_ACCESSOR.getInt(j);
    }

    public static int getInt(Object obj, long j) {
        return MEMORY_ACCESSOR.getInt(obj, j);
    }

    public static int getInt(int[] iArr, long j) {
        return MEMORY_ACCESSOR.getInt(iArr, (j * INT_ARRAY_INDEX_SCALE) + INT_ARRAY_BASE_OFFSET);
    }

    public static long getLong(long j) {
        return MEMORY_ACCESSOR.getLong(j);
    }

    public static long getLong(Object obj, long j) {
        return MEMORY_ACCESSOR.getLong(obj, j);
    }

    public static long getLong(long[] jArr, long j) {
        return MEMORY_ACCESSOR.getLong(jArr, (j * LONG_ARRAY_INDEX_SCALE) + LONG_ARRAY_BASE_OFFSET);
    }

    private static MemoryAccessor getMemoryAccessor() {
        Unsafe unsafe = UNSAFE;
        Android32MemoryAccessor android32MemoryAccessor = null;
        if (unsafe == null) {
            return null;
        }
        if (!Android.isOnAndroidDevice()) {
            return new JvmMemoryAccessor(unsafe);
        }
        if (IS_ANDROID_64) {
            return new Android64MemoryAccessor(unsafe);
        }
        if (IS_ANDROID_32) {
            android32MemoryAccessor = new Android32MemoryAccessor(unsafe);
        }
        return android32MemoryAccessor;
    }

    public static Object getObject(Object obj, long j) {
        return MEMORY_ACCESSOR.getObject(obj, j);
    }

    public static Object getObject(Object[] objArr, long j) {
        return MEMORY_ACCESSOR.getObject(objArr, (j * OBJECT_ARRAY_INDEX_SCALE) + OBJECT_ARRAY_BASE_OFFSET);
    }

    public static Object getStaticObject(Field field) {
        return MEMORY_ACCESSOR.getStaticObject(field);
    }

    public static Unsafe getUnsafe() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.protobuf.UnsafeUtil.1
                @Override // java.security.PrivilegedExceptionAction
                public Unsafe run() throws Exception {
                    Field[] declaredFields;
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    return null;
                }
            });
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static boolean hasUnsafeArrayOperations() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    public static boolean hasUnsafeByteBufferOperations() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    public static boolean isAndroid64() {
        return IS_ANDROID_64;
    }

    public static void logMissingMethod(Throwable th) {
        Logger logger = Logger.getLogger(UnsafeUtil.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static int mismatch(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (i < 0 || i2 < 0 || i3 < 0 || i + i3 > bArr.length || i2 + i3 > bArr2.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        int i5 = 0;
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            for (int i6 = (BYTE_ARRAY_ALIGNMENT + i) & 7; i5 < i3 && (i6 & 7) != 0; i6++) {
                if (bArr[i + i5] != bArr2[i2 + i5]) {
                    return i5;
                }
                i5++;
            }
            int i7 = i5;
            while (true) {
                int i8 = i7;
                i4 = i8;
                if (i8 >= ((i3 - i5) & (-8)) + i5) {
                    break;
                }
                long j = BYTE_ARRAY_BASE_OFFSET;
                long j2 = i8;
                long j3 = getLong((Object) bArr, i + j + j2);
                long j4 = getLong((Object) bArr2, j + i2 + j2);
                if (j3 != j4) {
                    return i8 + firstDifferingByteIndexNativeEndian(j3, j4);
                }
                i7 = i8 + 8;
            }
        }
        while (i4 < i3) {
            if (bArr[i + i4] != bArr2[i2 + i4]) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    public static long objectFieldOffset(Field field) {
        return MEMORY_ACCESSOR.objectFieldOffset(field);
    }

    public static void putBoolean(Object obj, long j, boolean z) {
        MEMORY_ACCESSOR.putBoolean(obj, j, z);
    }

    public static void putBoolean(boolean[] zArr, long j, boolean z) {
        MEMORY_ACCESSOR.putBoolean(zArr, (j * BOOLEAN_ARRAY_INDEX_SCALE) + BOOLEAN_ARRAY_BASE_OFFSET, z);
    }

    public static void putBooleanBigEndian(Object obj, long j, boolean z) {
        putByteBigEndian(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static void putBooleanLittleEndian(Object obj, long j, boolean z) {
        putByteLittleEndian(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static void putByte(long j, byte b) {
        MEMORY_ACCESSOR.putByte(j, b);
    }

    public static void putByte(Object obj, long j, byte b) {
        MEMORY_ACCESSOR.putByte(obj, j, b);
    }

    public static void putByte(byte[] bArr, long j, byte b) {
        MEMORY_ACCESSOR.putByte(bArr, BYTE_ARRAY_BASE_OFFSET + j, b);
    }

    public static void putByteBigEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = getInt(obj, j2);
        int i2 = ((((int) j) ^ (-1)) & 3) << 3;
        putInt(obj, j2, ((255 & b) << i2) | (i & ((255 << i2) ^ (-1))));
    }

    public static void putByteLittleEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = getInt(obj, j2);
        int i2 = (((int) j) & 3) << 3;
        putInt(obj, j2, ((255 & b) << i2) | (i & ((255 << i2) ^ (-1))));
    }

    public static void putDouble(Object obj, long j, double d) {
        MEMORY_ACCESSOR.putDouble(obj, j, d);
    }

    public static void putDouble(double[] dArr, long j, double d) {
        MEMORY_ACCESSOR.putDouble(dArr, (j * DOUBLE_ARRAY_INDEX_SCALE) + DOUBLE_ARRAY_BASE_OFFSET, d);
    }

    public static void putFloat(Object obj, long j, float f) {
        MEMORY_ACCESSOR.putFloat(obj, j, f);
    }

    public static void putFloat(float[] fArr, long j, float f) {
        MEMORY_ACCESSOR.putFloat(fArr, (j * FLOAT_ARRAY_INDEX_SCALE) + FLOAT_ARRAY_BASE_OFFSET, f);
    }

    public static void putInt(long j, int i) {
        MEMORY_ACCESSOR.putInt(j, i);
    }

    public static void putInt(Object obj, long j, int i) {
        MEMORY_ACCESSOR.putInt(obj, j, i);
    }

    public static void putInt(int[] iArr, long j, int i) {
        MEMORY_ACCESSOR.putInt(iArr, (j * INT_ARRAY_INDEX_SCALE) + INT_ARRAY_BASE_OFFSET, i);
    }

    public static void putLong(long j, long j2) {
        MEMORY_ACCESSOR.putLong(j, j2);
    }

    public static void putLong(Object obj, long j, long j2) {
        MEMORY_ACCESSOR.putLong(obj, j, j2);
    }

    public static void putLong(long[] jArr, long j, long j2) {
        MEMORY_ACCESSOR.putLong(jArr, (j * LONG_ARRAY_INDEX_SCALE) + LONG_ARRAY_BASE_OFFSET, j2);
    }

    public static void putObject(Object obj, long j, Object obj2) {
        MEMORY_ACCESSOR.putObject(obj, j, obj2);
    }

    public static void putObject(Object[] objArr, long j, Object obj) {
        MEMORY_ACCESSOR.putObject(objArr, (j * OBJECT_ARRAY_INDEX_SCALE) + OBJECT_ARRAY_BASE_OFFSET, obj);
    }

    private static boolean supportsUnsafeArrayOperations() {
        MemoryAccessor memoryAccessor = MEMORY_ACCESSOR;
        if (memoryAccessor == null) {
            return false;
        }
        return memoryAccessor.supportsUnsafeArrayOperations();
    }

    private static boolean supportsUnsafeByteBufferOperations() {
        MemoryAccessor memoryAccessor = MEMORY_ACCESSOR;
        if (memoryAccessor == null) {
            return false;
        }
        return memoryAccessor.supportsUnsafeByteBufferOperations();
    }
}
