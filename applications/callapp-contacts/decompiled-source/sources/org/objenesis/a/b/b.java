package org.objenesis.a.b;

import java.lang.reflect.Constructor;
import org.objenesis.ObjenesisException;
import org.objenesis.a.a;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/b.class */
public class b<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    protected Constructor<T> f39378a;

    public b(Class<T> cls) {
        try {
            this.f39378a = cls.getDeclaredConstructor(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            return this.f39378a.newInstance(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
