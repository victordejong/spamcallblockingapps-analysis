package p193e.p1451f.p1452a.p1474p;

import java.lang.reflect.InvocationTargetException;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* renamed from: e.f.a.p.e */
/* loaded from: classes-dex2jar.jar:e/f/a/p/e.class */
public final class C22574e {
    /* renamed from: a */
    public static AbstractC22572c m8120a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (!(newInstance instanceof AbstractC22572c)) {
                    throw new RuntimeException(C22128a.m8551x2("Expected instanceof GlideModule, but found: ", newInstance));
                }
                return (AbstractC22572c) newInstance;
            } catch (IllegalAccessException e) {
                m8119b(cls, e);
                throw null;
            } catch (InstantiationException e2) {
                m8119b(cls, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                m8119b(cls, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                m8119b(cls, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    /* renamed from: b */
    public static void m8119b(Class<?> cls, Exception exc) {
        throw new RuntimeException(C22128a.m8555w2("Unable to instantiate GlideModule implementation for ", cls), exc);
    }
}
