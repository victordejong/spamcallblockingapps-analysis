package org.objenesis.p596a.p597a;

import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.a.c */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/c.class */
public final class C21008c<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Class<T> f67601a;

    /* renamed from: b */
    private final Method f67602b = m141b();

    /* renamed from: c */
    private final Long f67603c = m140c();

    public C21008c(Class<T> cls) {
        this.f67601a = cls;
    }

    /* renamed from: b */
    private static Method m141b() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Long.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    /* renamed from: c */
    private static Long m140c() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
            declaredMethod.setAccessible(true);
            return (Long) declaredMethod.invoke(null, Object.class);
        } catch (IllegalAccessException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            Class<T> cls = this.f67601a;
            return cls.cast(this.f67602b.invoke(null, cls, this.f67603c));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
