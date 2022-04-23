package com.google.common.base;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f31945a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f31946b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f31947c;

    static {
        Object a2 = a();
        f31945a = a2;
        Method method = null;
        f31946b = a2 == null ? null : a("getStackTraceElement", Throwable.class, Integer.TYPE);
        if (a2 != null) {
            method = b();
        }
        f31947c = method;
    }

    private r() {
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

    @Deprecated
    public static RuntimeException a(Throwable th) {
        m.a(th);
        throw new RuntimeException(th);
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
}
