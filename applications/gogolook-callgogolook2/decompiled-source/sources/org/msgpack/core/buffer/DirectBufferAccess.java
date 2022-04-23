package org.msgpack.core.buffer;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/DirectBufferAccess.class */
public class DirectBufferAccess {
    public static Constructor byteBufferConstructor;
    public static DirectBufferConstructorType directBufferConstructorType;
    public static Class<?> directByteBufferClass;
    public static Method mClean;
    public static Method mCleaner;
    public static Method mGetAddress;
    public static Method memoryBlockWrapFromJni;

    /* renamed from: org.msgpack.core.buffer.DirectBufferAccess$1 */
    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/DirectBufferAccess$1.class */
    public static /* synthetic */ class C153731 {

        /* renamed from: $SwitchMap$org$msgpack$core$buffer$DirectBufferAccess$DirectBufferConstructorType */
        public static final /* synthetic */ int[] f33438x6d3725bd = new int[DirectBufferConstructorType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f33438x6d3725bd[DirectBufferConstructorType.ARGS_LONG_INT_REF.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33438x6d3725bd[DirectBufferConstructorType.ARGS_LONG_INT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33438x6d3725bd[DirectBufferConstructorType.ARGS_INT_INT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33438x6d3725bd[DirectBufferConstructorType.ARGS_MB_INT_INT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/DirectBufferAccess$DirectBufferConstructorType.class */
    public enum DirectBufferConstructorType {
        ARGS_LONG_INT_REF,
        ARGS_LONG_INT,
        ARGS_INT_INT,
        ARGS_MB_INT_INT
    }

    static {
        DirectBufferConstructorType directBufferConstructorType2;
        Constructor<?> constructor;
        try {
            directByteBufferClass = ClassLoader.getSystemClassLoader().loadClass("java.nio.DirectByteBuffer");
            Method method = null;
            try {
                constructor = directByteBufferClass.getDeclaredConstructor(Long.TYPE, Integer.TYPE, Object.class);
                directBufferConstructorType2 = DirectBufferConstructorType.ARGS_LONG_INT_REF;
            } catch (NoSuchMethodException e) {
                try {
                    constructor = directByteBufferClass.getDeclaredConstructor(Long.TYPE, Integer.TYPE);
                    directBufferConstructorType2 = DirectBufferConstructorType.ARGS_LONG_INT;
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = directByteBufferClass.getDeclaredConstructor(Integer.TYPE, Integer.TYPE);
                        directBufferConstructorType2 = DirectBufferConstructorType.ARGS_INT_INT;
                    } catch (NoSuchMethodException e3) {
                        Class<?> cls = Class.forName("java.nio.MemoryBlock");
                        method = cls.getDeclaredMethod("wrapFromJni", Integer.TYPE, Long.TYPE);
                        method.setAccessible(true);
                        constructor = directByteBufferClass.getDeclaredConstructor(cls, Integer.TYPE, Integer.TYPE);
                        directBufferConstructorType2 = DirectBufferConstructorType.ARGS_MB_INT_INT;
                    }
                }
            }
            byteBufferConstructor = constructor;
            directBufferConstructorType = directBufferConstructorType2;
            memoryBlockWrapFromJni = method;
            if (byteBufferConstructor != null) {
                byteBufferConstructor.setAccessible(true);
                mGetAddress = directByteBufferClass.getDeclaredMethod("address", new Class[0]);
                mGetAddress.setAccessible(true);
                mCleaner = directByteBufferClass.getDeclaredMethod("cleaner", new Class[0]);
                mCleaner.setAccessible(true);
                mClean = mCleaner.getReturnType().getDeclaredMethod("clean", new Class[0]);
                mClean.setAccessible(true);
                return;
            }
            throw new RuntimeException("Constructor of DirectByteBuffer is not found");
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static void clean(Object obj) {
        try {
            mClean.invoke(mCleaner.invoke(obj, new Object[0]), new Object[0]);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static long getAddress(Object obj) {
        try {
            return ((Long) mGetAddress.invoke(obj, new Object[0])).longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean isDirectByteBufferInstance(Object obj) {
        return directByteBufferClass.isInstance(obj);
    }

    public static ByteBuffer newByteBuffer(long j, int i, int i2, ByteBuffer byteBuffer) {
        try {
            int i3 = C153731.f33438x6d3725bd[directBufferConstructorType.ordinal()];
            if (i3 == 1) {
                return (ByteBuffer) byteBufferConstructor.newInstance(Long.valueOf(j + i), Integer.valueOf(i2), byteBuffer);
            }
            if (i3 == 2) {
                return (ByteBuffer) byteBufferConstructor.newInstance(Long.valueOf(j + i), Integer.valueOf(i2));
            }
            if (i3 == 3) {
                return (ByteBuffer) byteBufferConstructor.newInstance(Integer.valueOf(((int) j) + i), Integer.valueOf(i2));
            }
            if (i3 == 4) {
                return (ByteBuffer) byteBufferConstructor.newInstance(memoryBlockWrapFromJni.invoke(null, Long.valueOf(j + i), Integer.valueOf(i2)), Integer.valueOf(i2), 0);
            }
            throw new IllegalStateException("Unexpected value");
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }
}
