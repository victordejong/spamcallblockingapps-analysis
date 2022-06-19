package com.bytedance.sdk.p127a.p129b.p130a.p137g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.a.b.a.g.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/d.class */
class C4089d<T> {

    /* renamed from: a */
    private final Class<?> f14853a;

    /* renamed from: b */
    private final String f14854b;

    /* renamed from: c */
    private final Class[] f14855c;

    public C4089d(Class<?> cls, String str, Class... clsArr) {
        this.f14853a = cls;
        this.f14854b = str;
        this.f14855c = clsArr;
    }

    /* renamed from: a */
    private Method m36659a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f14854b;
        Method method = null;
        if (str != null) {
            method = m36658a(cls, str, this.f14855c);
            if (method != null && (cls2 = this.f14853a) != null && !cls2.isAssignableFrom(method.getReturnType())) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    private static Method m36658a(Class<?> cls, String str, Class[] clsArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    method = null;
                }
            } catch (NoSuchMethodException e) {
            }
        } catch (NoSuchMethodException e2) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public Object m36656a(T t, Object... objArr) throws InvocationTargetException {
        Method m36659a = m36659a(t.getClass());
        if (m36659a == null) {
            return null;
        }
        try {
            return m36659a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    /* renamed from: a */
    public boolean m36657a(T t) {
        return m36659a(t.getClass()) != null;
    }

    /* renamed from: b */
    public Object m36655b(T t, Object... objArr) {
        try {
            return m36656a(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: c */
    public Object m36654c(T t, Object... objArr) throws InvocationTargetException {
        Method m36659a = m36659a(t.getClass());
        if (m36659a != null) {
            try {
                return m36659a.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: ".concat(String.valueOf(m36659a)));
                assertionError.initCause(e);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.f14854b + " not supported for object " + t);
    }

    /* renamed from: d */
    public Object m36653d(T t, Object... objArr) {
        try {
            return m36654c(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
