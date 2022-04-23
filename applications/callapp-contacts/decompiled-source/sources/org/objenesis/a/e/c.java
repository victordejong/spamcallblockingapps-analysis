package org.objenesis.a.e;

import org.objenesis.ObjenesisException;
import org.objenesis.a.a;
import sun.misc.Unsafe;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/c.class */
public final class c<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Unsafe f39390a = org.objenesis.a.f.a.a();

    /* renamed from: b  reason: collision with root package name */
    private final Class<T> f39391b;

    public c(Class<T> cls) {
        this.f39391b = cls;
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            Class<T> cls = this.f39391b;
            return cls.cast(this.f39390a.allocateInstance(cls));
        } catch (InstantiationException e) {
            throw new ObjenesisException(e);
        }
    }
}
