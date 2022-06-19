package org.objenesis.p596a.p602f;

import java.lang.reflect.Field;
import org.objenesis.ObjenesisException;
import sun.misc.Unsafe;
/* renamed from: org.objenesis.a.f.a */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/f/a.class */
public final class C21020a {

    /* renamed from: a */
    private static final Unsafe f67621a;

    static {
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            try {
                f67621a = (Unsafe) declaredField.get(null);
            } catch (IllegalAccessException e) {
                throw new ObjenesisException(e);
            }
        } catch (NoSuchFieldException e2) {
            throw new ObjenesisException(e2);
        }
    }

    private C21020a() {
    }

    /* renamed from: a */
    public static Unsafe m132a() {
        return f67621a;
    }
}
