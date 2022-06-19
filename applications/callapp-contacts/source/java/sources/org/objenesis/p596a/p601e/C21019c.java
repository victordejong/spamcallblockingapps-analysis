package org.objenesis.p596a.p601e;

import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
import org.objenesis.p596a.p602f.C21020a;
import sun.misc.Unsafe;
/* renamed from: org.objenesis.a.e.c */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/c.class */
public final class C21019c<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Unsafe f67619a = C21020a.m132a();

    /* renamed from: b */
    private final Class<T> f67620b;

    public C21019c(Class<T> cls) {
        this.f67620b = cls;
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            Class<T> cls = this.f67620b;
            return cls.cast(this.f67619a.allocateInstance(cls));
        } catch (InstantiationException e) {
            throw new ObjenesisException(e);
        }
    }
}
