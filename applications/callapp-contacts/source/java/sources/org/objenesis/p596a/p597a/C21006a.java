package org.objenesis.p596a.p597a;

import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.a.a */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/a/a.class */
public final class C21006a<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Class<T> f67596a;

    /* renamed from: b */
    private final Method f67597b = m144b();

    public C21006a(Class<T> cls) {
        this.f67596a = cls;
    }

    /* renamed from: b */
    private static Method m144b() {
        try {
            Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            Class<T> cls = this.f67596a;
            return cls.cast(this.f67597b.invoke(null, cls, Object.class));
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
