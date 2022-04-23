package org.objenesis.a.e;

import java.lang.reflect.Constructor;
import org.objenesis.ObjenesisException;
import org.objenesis.a.a;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/b.class */
public final class b<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Constructor<T> f39389a;

    public b(Class<T> cls) {
        Constructor<T> a2 = a.a(cls, b());
        this.f39389a = a2;
        a2.setAccessible(true);
    }

    private static Constructor<Object> b() {
        try {
            return Object.class.getConstructor(null);
        } catch (NoSuchMethodException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            return this.f39389a.newInstance(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
