package com.bytedance.sdk.a.b.a.g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/d.class */
class d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f8045a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8046b;

    /* renamed from: c  reason: collision with root package name */
    private final Class[] f8047c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Class<?> cls, String str, Class... clsArr) {
        this.f8045a = cls;
        this.f8046b = str;
        this.f8047c = clsArr;
    }

    private Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f8046b;
        Method method = null;
        if (str != null) {
            method = a(cls, str, this.f8047c);
            if (!(method == null || (cls2 = this.f8045a) == null || cls2.isAssignableFrom(method.getReturnType()))) {
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

    public Object a(T t, Object... objArr) throws InvocationTargetException {
        Method a2 = a(t.getClass());
        if (a2 == null) {
            return null;
        }
        try {
            return a2.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    public boolean a(T t) {
        return a(t.getClass()) != null;
    }

    public Object b(T t, Object... objArr) {
        try {
            return a(t, objArr);
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

    public Object c(T t, Object... objArr) throws InvocationTargetException {
        Method a2 = a(t.getClass());
        if (a2 != null) {
            try {
                return a2.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: ".concat(String.valueOf(a2)));
                assertionError.initCause(e);
                throw assertionError;
            }
        } else {
            throw new AssertionError("Method " + this.f8046b + " not supported for object " + t);
        }
    }

    public Object d(T t, Object... objArr) {
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
}
