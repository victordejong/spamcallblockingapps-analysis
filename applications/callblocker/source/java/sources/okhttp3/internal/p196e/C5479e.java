package okhttp3.internal.p196e;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: okhttp3.internal.e.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/e.class */
class C5479e<T> {

    /* renamed from: a */
    private final Class<?> f22873a;

    /* renamed from: b */
    private final String f22874b;

    /* renamed from: c */
    private final Class[] f22875c;

    public C5479e(Class<?> cls, String str, Class... clsArr) {
        this.f22873a = cls;
        this.f22874b = str;
        this.f22875c = clsArr;
    }

    /* renamed from: a */
    private Method m562a(Class<?> cls) {
        Method method = null;
        if (this.f22874b != null) {
            method = m561a(cls, this.f22874b, this.f22875c);
            if (method != null && this.f22873a != null && !this.f22873a.isAssignableFrom(method.getReturnType())) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    private static Method m561a(Class<?> cls, String str, Class[] clsArr) {
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
    public Object m559a(T t, Object... objArr) {
        Object obj;
        Method m562a = m562a(t.getClass());
        if (m562a == null) {
            obj = null;
        } else {
            try {
                obj = m562a.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                obj = null;
            }
        }
        return obj;
    }

    /* renamed from: a */
    public boolean m560a(T t) {
        return m562a(t.getClass()) != null;
    }

    /* renamed from: b */
    public Object m558b(T t, Object... objArr) {
        try {
            return m559a(t, objArr);
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
    public Object m557c(T t, Object... objArr) {
        Method m562a = m562a(t.getClass());
        if (m562a == null) {
            throw new AssertionError("Method " + this.f22874b + " not supported for object " + t);
        }
        try {
            return m562a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m562a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: d */
    public Object m556d(T t, Object... objArr) {
        try {
            return m557c(t, objArr);
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
