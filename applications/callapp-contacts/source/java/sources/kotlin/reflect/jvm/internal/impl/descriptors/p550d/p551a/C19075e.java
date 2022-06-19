package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/e.class */
public final class C19075e {
    /* renamed from: a */
    public static final Class<?> m2668a(ClassLoader classLoader, String fqName) {
        Class<?> cls;
        C18524p.m3840d(classLoader, "<this>");
        C18524p.m3840d(fqName, "fqName");
        try {
            cls = Class.forName(fqName, false, classLoader);
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        return cls;
    }
}
