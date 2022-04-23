package io.opencensus.b;

import java.util.ServiceConfigurationError;
/* loaded from: classes5-dex2jar.jar:io/opencensus/b/a.class */
public final class a {
    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(Class<?> cls, Class<T> cls2) {
        try {
            return (T) cls.asSubclass(cls2).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new ServiceConfigurationError("Provider " + cls.getName() + " could not be instantiated.", e);
        }
    }
}
