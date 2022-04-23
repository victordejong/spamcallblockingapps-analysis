package com.b.a.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/b/a/a/e.class */
final class e<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f3291a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3292b;
    private final Class[] c;

    public e(Class<?> cls, String str, Class... clsArr) {
        this.f3291a = cls;
        this.f3292b = str;
        this.c = clsArr;
    }

    private Method a(Class<?> cls) {
        Method method = null;
        if (this.f3292b != null) {
            method = a(cls, this.f3292b, this.c);
            if (!(method == null || this.f3291a == null || this.f3291a.isAssignableFrom(method.getReturnType()))) {
                method = null;
            }
        }
        return method;
    }

    private static Method a(Class<?> cls, String str, Class[] clsArr) {
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

    private Object c(T t, Object... objArr) {
        Object obj;
        Method a2 = a(t.getClass());
        if (a2 == null) {
            obj = null;
        } else {
            try {
                obj = a2.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                obj = null;
            }
        }
        return obj;
    }

    private Object d(T t, Object... objArr) {
        Method a2 = a(t.getClass());
        if (a2 == null) {
            throw new AssertionError("Method " + this.f3292b + " not supported for object " + t);
        }
        try {
            return a2.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a2);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    public final Object a(T t, Object... objArr) {
        try {
            return c(t, objArr);
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

    public final boolean a(T t) {
        return a(t.getClass()) != null;
    }

    public final Object b(T t, Object... objArr) {
        try {
            return d(t, objArr);
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
