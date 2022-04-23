package org.objenesis.a.f;

import java.lang.reflect.Field;
import org.objenesis.ObjenesisException;
import sun.misc.Unsafe;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/f/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f39392a;

    static {
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            try {
                f39392a = (Unsafe) declaredField.get(null);
            } catch (IllegalAccessException e) {
                throw new ObjenesisException(e);
            }
        } catch (NoSuchFieldException e2) {
            throw new ObjenesisException(e2);
        }
    }

    private a() {
    }

    public static Unsafe a() {
        return f39392a;
    }
}
