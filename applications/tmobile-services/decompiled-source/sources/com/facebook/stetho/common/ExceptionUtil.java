package com.facebook.stetho.common;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ExceptionUtil.class */
public class ExceptionUtil {
    public static RuntimeException propagate(Throwable th) {
        propagateIfInstanceOf(th, Error.class);
        propagateIfInstanceOf(th, RuntimeException.class);
        throw new RuntimeException(th);
    }

    public static <T extends Throwable> void propagateIfInstanceOf(Throwable th, Class<T> cls) throws Throwable {
        if (cls.isInstance(th)) {
            throw th;
        }
    }

    public static <T extends Throwable> void sneakyThrow(Throwable th) throws Throwable {
        throw th;
    }
}
