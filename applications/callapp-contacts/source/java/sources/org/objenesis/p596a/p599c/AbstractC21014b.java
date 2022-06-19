package org.objenesis.p596a.p599c;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.c.b */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/b.class */
public abstract class AbstractC21014b<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    static Method f67613a;

    /* renamed from: b */
    static ObjectInputStream f67614b;

    /* renamed from: c */
    protected final Class<T> f67615c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.objenesis.a.c.b$a */
    /* loaded from: classes5-dex2jar.jar:org/objenesis/a/c/b$a.class */
    public static final class C21015a extends ObjectInputStream {
    }

    public AbstractC21014b(Class<T> cls) {
        this.f67615c = cls;
        if (f67613a == null) {
            try {
                Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newObject", Class.class, Class.class);
                f67613a = declaredMethod;
                declaredMethod.setAccessible(true);
                f67614b = new C21015a();
            } catch (IOException | NoSuchMethodException | RuntimeException e) {
                throw new ObjenesisException(e);
            }
        }
    }
}
