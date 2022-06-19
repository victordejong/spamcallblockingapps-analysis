package p321d.p323b.p327b;

import java.util.ServiceConfigurationError;
/* renamed from: d.b.b.a */
/* loaded from: classes2-dex2jar.jar:d/b/b/a.class */
public final class C9474a {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> T m514a(Class<?> cls, Class<T> cls2) {
        try {
            return (T) cls.asSubclass(cls2).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new ServiceConfigurationError("Provider " + cls.getName() + " could not be instantiated.", e);
        }
    }
}
