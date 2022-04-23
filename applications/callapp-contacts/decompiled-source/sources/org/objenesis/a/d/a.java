package org.objenesis.a.d;

import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/d/a.class */
public final class a<T> implements org.objenesis.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Method f39387a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f39388b;

    public a(Class<T> cls) {
        Object[] objArr = {null, Boolean.FALSE};
        this.f39388b = objArr;
        objArr[0] = cls;
        try {
            Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Boolean.TYPE);
            this.f39387a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException | RuntimeException e) {
            throw new ObjenesisException(e);
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            return (T) this.f39387a.invoke(null, this.f39388b);
        } catch (Exception e) {
            throw new ObjenesisException(e);
        }
    }
}
