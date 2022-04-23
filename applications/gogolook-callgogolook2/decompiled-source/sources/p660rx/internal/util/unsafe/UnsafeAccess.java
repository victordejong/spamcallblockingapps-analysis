package p660rx.internal.util.unsafe;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: rx.internal.util.unsafe.UnsafeAccess */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/UnsafeAccess.class */
public final class UnsafeAccess {
    public static final boolean DISABLED_BY_USER;
    public static final Unsafe UNSAFE;

    static {
        DISABLED_BY_USER = System.getProperty("rx.unsafe-disable") != null;
        Unsafe unsafe = null;
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            unsafe = (Unsafe) declaredField.get(null);
        } catch (Throwable th) {
        }
        UNSAFE = unsafe;
    }

    public static long addressOf(Class<?> cls, String str) {
        try {
            return UNSAFE.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            InternalError internalError = new InternalError();
            internalError.initCause(e);
            throw internalError;
        }
    }

    public static boolean isUnsafeAvailable() {
        return UNSAFE != null && !DISABLED_BY_USER;
    }
}
