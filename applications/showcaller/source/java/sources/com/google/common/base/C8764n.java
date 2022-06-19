package com.google.common.base;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: com.google.common.base.n */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/n.class */
public final class C8764n {

    /* renamed from: a */
    private static final Object f38643a;

    /* renamed from: b */
    private static final Method f38644b;

    /* renamed from: c */
    private static final Method f38645c;

    static {
        Object m2760b = m2760b();
        f38643a = m2760b;
        f38644b = m2760b == null ? null : m2761a();
        f38645c = m2760b == null ? null : m2758d();
    }

    /* renamed from: a */
    private static Method m2761a() {
        return m2759c("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    /* renamed from: b */
    private static Object m2760b() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: c */
    private static Method m2759c(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private static Method m2758d() {
        try {
            Method m2759c = m2759c("getStackTraceDepth", Throwable.class);
            if (m2759c == null) {
                return null;
            }
            m2759c.invoke(m2760b(), new Throwable());
            return m2759c;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    @Deprecated
    /* renamed from: e */
    public static RuntimeException m2757e(Throwable th) {
        m2756f(th);
        throw new RuntimeException(th);
    }

    /* renamed from: f */
    public static void m2756f(Throwable th) {
        C8756j.m2789l(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }
}
