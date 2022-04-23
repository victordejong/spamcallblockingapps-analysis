package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyq.class */
public final class cyq {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f26577a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f26578b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f26579c;

    static {
        Object a2 = a();
        f26577a = a2;
        Method method = null;
        f26578b = a2 == null ? null : a("getStackTraceElement", Throwable.class, Integer.TYPE);
        if (a2 != null) {
            method = b();
        }
        f26579c = method;
    }

    private static Object a() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    private static Method a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void a(Throwable th) {
        cyg.a(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @Deprecated
    public static RuntimeException b(Throwable th) {
        a(th);
        throw new RuntimeException(th);
    }

    private static Method b() {
        try {
            Method a2 = a("getStackTraceDepth", Throwable.class);
            if (a2 == null) {
                return null;
            }
            a2.invoke(a(), new Throwable());
            return a2;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    public static String c(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        dlf.a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
