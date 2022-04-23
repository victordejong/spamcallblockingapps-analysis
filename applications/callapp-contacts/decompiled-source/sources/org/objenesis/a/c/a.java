package org.objenesis.a.c;

import java.lang.reflect.InvocationTargetException;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/a.class */
public final class a<T> extends b<T> {
    public a(Class<T> cls) {
        super(cls);
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            return this.f39386c.cast(f39384a.invoke(f39385b, this.f39386c, Object.class));
        } catch (IllegalAccessException | RuntimeException | InvocationTargetException e) {
            throw new ObjenesisException(e);
        }
    }
}
