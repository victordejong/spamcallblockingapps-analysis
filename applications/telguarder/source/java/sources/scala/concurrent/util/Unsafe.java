package scala.concurrent.util;

import java.lang.reflect.Field;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/util/Unsafe.class */
public final class Unsafe {
    public static final sun.misc.Unsafe instance;

    static {
        sun.misc.Unsafe unsafe;
        try {
            Field[] declaredFields = sun.misc.Unsafe.class.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (true) {
                unsafe = null;
                if (i >= length) {
                    break;
                }
                Field field = declaredFields[i];
                if (field.getType() == sun.misc.Unsafe.class) {
                    field.setAccessible(true);
                    unsafe = (sun.misc.Unsafe) field.get(null);
                    break;
                }
                i++;
            }
            if (unsafe == null) {
                throw new IllegalStateException("Can't find instance of sun.misc.Unsafe");
            }
            instance = unsafe;
        } catch (Throwable th) {
            throw new ExceptionInInitializerError(th);
        }
    }
}
