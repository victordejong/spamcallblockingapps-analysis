package com.squareup.okhttp.p089u;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: com.squareup.okhttp.u.f */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/f.class */
class C2969f<T> {

    /* renamed from: a */
    private final Class<?> f12500a;

    /* renamed from: b */
    private final String f12501b;

    /* renamed from: c */
    private final Class[] f12502c;

    public C2969f(Class<?> cls, String str, Class... clsArr) {
        this.f12500a = cls;
        this.f12501b = str;
        this.f12502c = clsArr;
    }

    /* renamed from: a */
    private Method m682a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f12501b;
        Method method = null;
        if (str != null) {
            method = m681b(cls, str, this.f12502c);
            if (!(method == null || (cls2 = this.f12500a) == null || cls2.isAssignableFrom(method.getReturnType()))) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: b */
    private static Method m681b(Class<?> cls, String str, Class[] clsArr) {
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

    /* renamed from: c */
    public Object m680c(T t, Object... objArr) {
        Method a = m682a(t.getClass());
        if (a != null) {
            try {
                return a.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a);
                assertionError.initCause(e);
                throw assertionError;
            }
        } else {
            throw new AssertionError("Method " + this.f12501b + " not supported for object " + t);
        }
    }

    /* renamed from: d */
    public Object m679d(T t, Object... objArr) {
        Method a = m682a(t.getClass());
        if (a == null) {
            return null;
        }
        try {
            return a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    /* renamed from: e */
    public Object m678e(T t, Object... objArr) {
        try {
            return m679d(t, objArr);
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

    /* renamed from: f */
    public Object m677f(T t, Object... objArr) {
        try {
            return m680c(t, objArr);
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

    /* renamed from: g */
    public boolean m676g(T t) {
        return m682a(t.getClass()) != null;
    }
}
