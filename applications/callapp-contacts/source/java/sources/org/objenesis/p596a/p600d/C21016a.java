package org.objenesis.p596a.p600d;

import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.d.a */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/d/a.class */
public final class C21016a<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final Method f67616a;

    /* renamed from: b */
    private final Object[] f67617b;

    public C21016a(Class<T> cls) {
        Object[] objArr = {null, Boolean.FALSE};
        this.f67617b = objArr;
        objArr[0] = cls;
        try {
            Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Boolean.TYPE);
            this.f67616a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            return (T) this.f67616a.invoke(null, this.f67617b);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
