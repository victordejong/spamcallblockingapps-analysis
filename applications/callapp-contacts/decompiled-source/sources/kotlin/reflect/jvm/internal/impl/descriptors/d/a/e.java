package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/e.class */
public final class e {
    public static final Class<?> a(ClassLoader classLoader, String fqName) {
        Class<?> cls;
        p.d(classLoader, "<this>");
        p.d(fqName, "fqName");
        try {
            cls = Class.forName(fqName, false, classLoader);
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        return cls;
    }
}
