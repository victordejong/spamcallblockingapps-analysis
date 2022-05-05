package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/platform/OptionalMethod.class */
public class OptionalMethod<T> {
    public final String methodName;
    public final Class[] methodParams;
    public final Class<?> returnType;

    public OptionalMethod(Class<?> cls, String str, Class... clsArr) {
        this.returnType = cls;
        this.methodName = str;
        this.methodParams = clsArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if ((r4.getModifiers() & 1) == 0) goto L_0x0012;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Method getPublicMethod(java.lang.Class<?> r4, java.lang.String r5, java.lang.Class[] r6) {
        /*
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: NoSuchMethodException -> 0x0016
            r4 = r0
            r0 = r4
            int r0 = r0.getModifiers()     // Catch: NoSuchMethodException -> 0x001a
            r7 = r0
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0014
        L_0x0012:
            r0 = 0
            r4 = r0
        L_0x0014:
            r0 = r4
            return r0
        L_0x0016:
            r4 = move-exception
            goto L_0x0012
        L_0x001a:
            r5 = move-exception
            goto L_0x0014
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.OptionalMethod.getPublicMethod(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    public final Method getMethod(Class<?> cls) {
        Class<?> cls2;
        String str = this.methodName;
        Method method = null;
        if (str != null) {
            method = getPublicMethod(cls, str, this.methodParams);
            if (!(method == null || (cls2 = this.returnType) == null || cls2.isAssignableFrom(method.getReturnType()))) {
                method = null;
            }
        }
        return method;
    }

    public Object invoke(T t, Object... objArr) throws InvocationTargetException {
        Method method = getMethod(t.getClass());
        if (method != null) {
            try {
                return method.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + method);
                assertionError.initCause(e);
                throw assertionError;
            }
        } else {
            throw new AssertionError("Method " + this.methodName + " not supported for object " + t);
        }
    }

    public Object invokeOptional(T t, Object... objArr) throws InvocationTargetException {
        Method method = getMethod(t.getClass());
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    public Object invokeOptionalWithoutCheckedException(T t, Object... objArr) {
        try {
            return invokeOptional(t, objArr);
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

    public Object invokeWithoutCheckedException(T t, Object... objArr) {
        try {
            return invoke(t, objArr);
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

    public boolean isSupported(T t) {
        return getMethod(t.getClass()) != null;
    }
}
