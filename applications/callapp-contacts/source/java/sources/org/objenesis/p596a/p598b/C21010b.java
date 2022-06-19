package org.objenesis.p596a.p598b;

import java.lang.reflect.Constructor;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.b.b */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/b.class */
public class C21010b<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    protected Constructor<T> f67604a;

    public C21010b(Class<T> cls) {
        try {
            this.f67604a = cls.getDeclaredConstructor(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            return this.f67604a.newInstance(null);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
