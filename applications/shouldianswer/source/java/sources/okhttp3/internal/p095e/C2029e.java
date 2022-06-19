package okhttp3.internal.p095e;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: okhttp3.internal.e.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/e.class */
class C2029e<T> {

    /* renamed from: a */
    private final Class<?> f5099a;

    /* renamed from: b */
    private final String f5100b;

    /* renamed from: c */
    private final Class[] f5101c;

    public C2029e(Class<?> cls, String str, Class... clsArr) {
        this.f5099a = cls;
        this.f5100b = str;
        this.f5101c = clsArr;
    }

    /* renamed from: a */
    private Method m2244a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f5100b;
        Method method = null;
        if (str != null) {
            method = m2243a(cls, str, this.f5101c);
            if (method != null && (cls2 = this.f5099a) != null && !cls2.isAssignableFrom(method.getReturnType())) {
                method = null;
            }
        }
        return method;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if ((r4.getModifiers() & 1) == 0) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Method m2243a(java.lang.Class<?> r4, java.lang.String r5, java.lang.Class[] r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L16
            r4 = r0
            r0 = r4
            int r0 = r0.getModifiers()     // Catch: java.lang.NoSuchMethodException -> L1a
            r7 = r0
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L14
        L12:
            r0 = 0
            r4 = r0
        L14:
            r0 = r4
            return r0
        L16:
            r4 = move-exception
            goto L12
        L1a:
            r5 = move-exception
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p095e.C2029e.m2243a(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    /* renamed from: a */
    public Object m2241a(T t, Object... objArr) {
        Method m2244a = m2244a(t.getClass());
        if (m2244a == null) {
            return null;
        }
        try {
            return m2244a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    /* renamed from: a */
    public boolean m2242a(T t) {
        return m2244a(t.getClass()) != null;
    }

    /* renamed from: b */
    public Object m2240b(T t, Object... objArr) {
        try {
            return m2241a(t, objArr);
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
    public Object m2239c(T t, Object... objArr) {
        Method m2244a = m2244a(t.getClass());
        if (m2244a == null) {
            throw new AssertionError("Method " + this.f5100b + " not supported for object " + t);
        }
        try {
            return m2244a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m2244a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: d */
    public Object m2238d(T t, Object... objArr) {
        try {
            return m2239c(t, objArr);
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
