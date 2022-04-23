package org.objenesis.a.c;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/b.class */
public abstract class b<T> implements org.objenesis.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    static Method f39384a;

    /* renamed from: b  reason: collision with root package name */
    static ObjectInputStream f39385b;

    /* renamed from: c  reason: collision with root package name */
    protected final Class<T> f39386c;

    /* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/b$a.class */
    static final class a extends ObjectInputStream {
    }

    public b(Class<T> cls) {
        this.f39386c = cls;
        if (f39384a == null) {
            try {
                Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newObject", Class.class, Class.class);
                f39384a = declaredMethod;
                declaredMethod.setAccessible(true);
                f39385b = new a();
            } catch (IOException | NoSuchMethodException | RuntimeException e) {
                throw new ObjenesisException(e);
            }
        }
    }
}
