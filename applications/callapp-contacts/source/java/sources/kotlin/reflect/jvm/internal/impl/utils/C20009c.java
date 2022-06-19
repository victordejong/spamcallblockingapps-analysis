package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/c.class */
public final class C20009c {
    /* renamed from: a */
    public static final boolean m1199a(Throwable th) {
        C18524p.m3840d(th, "<this>");
        Class<?> cls = th.getClass();
        while (!C18524p.m3850a((Object) cls.getCanonicalName(), (Object) "com.intellij.openapi.progress.ProcessCanceledException")) {
            Class<? super Object> superclass = cls.getSuperclass();
            cls = superclass;
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }
}
