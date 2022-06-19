package org.objenesis.p596a.p599c;

import java.lang.reflect.InvocationTargetException;
import org.objenesis.ObjenesisException;
/* renamed from: org.objenesis.a.c.a */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/a.class */
public final class C21013a<T> extends AbstractC21014b<T> {
    public C21013a(Class<T> cls) {
        super(cls);
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            return this.f67615c.cast(f67613a.invoke(f67614b, this.f67615c, Object.class));
        } catch (IllegalAccessException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }
}
