package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/c.class */
public final class c {
    public static final boolean a(Throwable th) {
        p.d(th, "<this>");
        Class<?> cls = th.getClass();
        while (!p.a((Object) cls.getCanonicalName(), (Object) "com.intellij.openapi.progress.ProcessCanceledException")) {
            Class<? super Object> superclass = cls.getSuperclass();
            cls = superclass;
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }
}
