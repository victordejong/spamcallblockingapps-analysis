package org.objenesis.a.a;

import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/a.class */
public final class a<T> implements org.objenesis.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f39370a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f39371b = b();

    public a(Class<T> cls) {
        this.f39370a = cls;
    }

    private static Method b() {
        try {
            Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            Class<T> cls = this.f39370a;
            return cls.cast(this.f39371b.invoke(null, cls, Object.class));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
