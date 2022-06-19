package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyq.class */
public final class cyq {

    /* renamed from: a */
    private static final Object f46772a;

    /* renamed from: b */
    private static final Method f46773b;

    /* renamed from: c */
    private static final Method f46774c;

    static {
        Object m17047a = m17047a();
        f46772a = m17047a;
        f46773b = m17047a == null ? null : m17046a("getStackTraceElement", Throwable.class, Integer.TYPE);
        f46774c = m17047a == null ? null : m17044b();
    }

    /* renamed from: a */
    private static Object m17047a() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: a */
    private static Method m17046a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m17045a(Throwable th) {
        cyg.m17060a(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }

    @Deprecated
    /* renamed from: b */
    public static RuntimeException m17043b(Throwable th) {
        m17045a(th);
        throw new RuntimeException(th);
    }

    /* renamed from: b */
    private static Method m17044b() {
        try {
            Method m17046a = m17046a("getStackTraceDepth", Throwable.class);
            if (m17046a == null) {
                return null;
            }
            m17046a.invoke(m17047a(), new Throwable());
            return m17046a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static String m17042c(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        dlf.m16512a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
