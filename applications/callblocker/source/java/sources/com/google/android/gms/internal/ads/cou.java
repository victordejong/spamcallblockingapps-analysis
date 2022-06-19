package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cou.class */
public final class cou {
    @NullableDecl

    /* renamed from: a */
    private static final Object f13477a;
    @NullableDecl

    /* renamed from: b */
    private static final Method f13478b;
    @NullableDecl

    /* renamed from: c */
    private static final Method f13479c;

    static {
        Object m10925a = m10925a();
        f13477a = m10925a;
        f13478b = m10925a == null ? null : m10924a("getStackTraceElement", Throwable.class, Integer.TYPE);
        f13479c = f13477a == null ? null : m10922b();
    }

    @NullableDecl
    /* renamed from: a */
    private static Object m10925a() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    @NullableDecl
    /* renamed from: a */
    private static Method m10924a(String str, Class<?>... clsArr) {
        Method method;
        try {
            method = Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public static void m10923a(Throwable th) {
        cor.m10936a(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            return;
        }
        throw ((Error) th);
    }

    @Deprecated
    /* renamed from: b */
    public static RuntimeException m10921b(Throwable th) {
        m10923a(th);
        throw new RuntimeException(th);
    }

    @NullableDecl
    /* renamed from: b */
    private static Method m10922b() {
        Method method = null;
        try {
            Method m10924a = m10924a("getStackTraceDepth", Throwable.class);
            if (m10924a != null) {
                m10924a.invoke(m10925a(), new Throwable());
                method = m10924a;
            }
        } catch (IllegalAccessException e) {
        } catch (UnsupportedOperationException e2) {
        } catch (InvocationTargetException e3) {
        }
        return method;
    }

    /* renamed from: c */
    public static String m10920c(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        dap.m10260a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
