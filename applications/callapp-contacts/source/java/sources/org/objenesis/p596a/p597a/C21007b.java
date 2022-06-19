package org.objenesis.p596a.p597a;

import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.a.b */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/b.class */
public final class C21007b<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Class<T> f67598a;

    /* renamed from: b */
    private final Method f67599b = m143b();

    /* renamed from: c */
    private final Integer f67600c = m142c();

    public C21007b(Class<T> cls) {
        this.f67598a = cls;
    }

    /* renamed from: b */
    private static Method m143b() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    /* renamed from: c */
    private static Integer m142c() {
        try {
            Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
            declaredMethod.setAccessible(true);
            return (Integer) declaredMethod.invoke(null, Object.class);
        } catch (IllegalAccessException | NoSuchMethodException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            Class<T> cls = this.f67598a;
            return cls.cast(this.f67599b.invoke(null, cls, this.f67600c));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
