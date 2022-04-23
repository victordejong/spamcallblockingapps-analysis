package org.objenesis.a.a;

import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.a.a;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/b.class */
public final class b<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f39372a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f39373b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Integer f39374c = c();

    public b(Class<T> cls) {
        this.f39372a = cls;
    }

    private static Method b() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    private static Integer c() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
            declaredMethod.setAccessible(true);
            return (Integer) declaredMethod.invoke(null, Object.class);
        } catch (IllegalAccessException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            Class<T> cls = this.f39372a;
            return cls.cast(this.f39373b.invoke(null, cls, this.f39374c));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
