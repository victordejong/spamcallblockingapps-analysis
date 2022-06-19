package io.opencensus.p507b;

import java.util.ServiceConfigurationError;
/* renamed from: io.opencensus.b.a */
/* loaded from: classes5-dex2jar.jar:io/opencensus/b/a.class */
public final class C17992a {
    private C17992a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> T m4563a(Class<?> cls, Class<T> cls2) {
        try {
            return (T) cls.asSubclass(cls2).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new ServiceConfigurationError("Provider " + cls.getName() + " could not be instantiated.", e);
        }
    }
}
