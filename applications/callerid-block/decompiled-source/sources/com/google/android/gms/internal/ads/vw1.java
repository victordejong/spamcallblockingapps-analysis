package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vw1.class */
public final class vw1 {
    @NullableDecl

    /* renamed from: a */
    private static final Object f8965a;

    static {
        Object c = m5174c();
        f8965a = c;
        if (c != null) {
            m5172e("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (c != null) {
            m5173d();
        }
    }

    /* renamed from: a */
    public static void m5176a(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    /* renamed from: b */
    public static String m5175b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        ab2.m8149c(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @NullableDecl
    /* renamed from: c */
    private static Object m5174c() {
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
    /* renamed from: d */
    private static Method m5173d() {
        try {
            Method e = m5172e("getStackTraceDepth", Throwable.class);
            if (e == null) {
                return null;
            }
            e.invoke(m5174c(), new Throwable());
            return e;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e2) {
            return null;
        }
    }

    @NullableDecl
    /* renamed from: e */
    private static Method m5172e(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }
}
