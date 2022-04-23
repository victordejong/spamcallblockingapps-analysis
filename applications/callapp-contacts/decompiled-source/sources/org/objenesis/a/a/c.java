package org.objenesis.a.a;

import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.a.a;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/c.class */
public final class c<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f39375a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f39376b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Long f39377c = c();

    public c(Class<T> cls) {
        this.f39375a = cls;
    }

    private static Method b() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Long.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    private static Long c() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
            declaredMethod.setAccessible(true);
            return (Long) declaredMethod.invoke(null, Object.class);
        } catch (IllegalAccessException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            Class<T> cls = this.f39375a;
            return cls.cast(this.f39376b.invoke(null, cls, this.f39377c));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
