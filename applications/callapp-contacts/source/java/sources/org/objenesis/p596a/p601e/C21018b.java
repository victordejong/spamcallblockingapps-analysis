package org.objenesis.p596a.p601e;

import java.lang.reflect.Constructor;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.e.b */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/e/b.class */
public final class C21018b<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Constructor<T> f67618a;

    public C21018b(Class<T> cls) {
        Constructor<T> m136a = C21017a.m136a(cls, m134b());
        this.f67618a = m136a;
        m136a.setAccessible(true);
    }

    /* renamed from: b */
    private static Constructor<Object> m134b() {
        try {
            return Object.class.getConstructor(null);
        } catch (NoSuchMethodException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            return this.f67618a.newInstance(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
