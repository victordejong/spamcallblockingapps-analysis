package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kv2.class */
public final class kv2 {

    /* renamed from: a */
    private static final Object f25425a;

    /* renamed from: b */
    private static final Method f25426b;

    /* renamed from: c */
    private static final Method f25427c;

    static {
        Object m13776c = m13776c();
        f25425a = m13776c;
        f25426b = m13776c == null ? null : m13774e("getStackTraceElement", Throwable.class, Integer.TYPE);
        f25427c = m13776c == null ? null : m13775d(m13776c);
    }

    /* renamed from: a */
    public static void m13778a(Throwable th) {
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }

    /* renamed from: b */
    public static String m13777b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        qc3.m11956c(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: c */
    private static Object m13776c() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: d */
    private static Method m13775d(Object obj) {
        try {
            Method m13774e = m13774e("getStackTraceDepth", Throwable.class);
            if (m13774e == null) {
                return null;
            }
            m13774e.invoke(obj, new Throwable());
            return m13774e;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: e */
    private static Method m13774e(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }
}
