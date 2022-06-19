package com.google.common.base;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: com.google.common.base.r */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/r.class */
public final class C15400r {

    /* renamed from: a */
    private static final Object f55649a;

    /* renamed from: b */
    private static final Method f55650b;

    /* renamed from: c */
    private static final Method f55651c;

    static {
        Object m8920a = m8920a();
        f55649a = m8920a;
        f55650b = m8920a == null ? null : m8919a("getStackTraceElement", Throwable.class, Integer.TYPE);
        f55651c = m8920a == null ? null : m8917b();
    }

    private C15400r() {
    }

    /* renamed from: a */
    private static Object m8920a() {
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
    /* renamed from: a */
    public static RuntimeException m8918a(Throwable th) {
        C15391m.m8946a(th);
        throw new RuntimeException(th);
    }

    /* renamed from: a */
    private static Method m8919a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Method m8917b() {
        try {
            Method m8919a = m8919a("getStackTraceDepth", Throwable.class);
            if (m8919a == null) {
                return null;
            }
            m8919a.invoke(m8920a(), new Throwable());
            return m8919a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }
}
