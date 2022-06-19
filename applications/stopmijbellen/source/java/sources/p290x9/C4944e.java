package p290x9;

import android.support.p012v4.media.C0082b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: x9.e */
/* loaded from: classes2-dex2jar.jar:x9/e.class */
public class C4944e<T> {

    /* renamed from: a */
    public final Class<?> f15075a;

    /* renamed from: b */
    public final String f15076b;

    /* renamed from: c */
    public final Class[] f15077c;

    public C4944e(Class<?> cls, String str, Class... clsArr) {
        this.f15075a = cls;
        this.f15076b = str;
        this.f15077c = clsArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
        if ((r5.getModifiers() & 1) == 0) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Method m225a(java.lang.Class<?> r5) {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r0 = r0.f15076b
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L57
            r0 = r4
            java.lang.Class[] r0 = r0.f15077c
            r8 = r0
            r0 = r5
            r1 = r6
            r2 = r8
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L5a
            r5 = r0
            r0 = r5
            int r0 = r0.getModifiers()     // Catch: java.lang.NoSuchMethodException -> L2c
            r9 = r0
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L33
            goto L31
        L2c:
            r8 = move-exception
            goto L33
        L31:
            r0 = 0
            r5 = r0
        L33:
            r0 = r5
            if (r0 == 0) goto L54
            r0 = r4
            java.lang.Class<?> r0 = r0.f15075a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L54
            r0 = r8
            r1 = r5
            java.lang.Class r1 = r1.getReturnType()
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 != 0) goto L54
            r0 = r7
            r8 = r0
            goto L57
        L54:
            r0 = r5
            r8 = r0
        L57:
            r0 = r8
            return r0
        L5a:
            r5 = move-exception
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: p290x9.C4944e.m225a(java.lang.Class):java.lang.reflect.Method");
    }

    /* renamed from: b */
    public Object m224b(T t, Object... objArr) throws InvocationTargetException {
        Method m225a = m225a(t.getClass());
        if (m225a == null) {
            StringBuilder m8752j = C0082b.m8752j("Method ");
            m8752j.append(this.f15076b);
            m8752j.append(" not supported for object ");
            m8752j.append(t);
            throw new AssertionError(m8752j.toString());
        }
        try {
            return m225a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m225a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: c */
    public Object m223c(T t, Object... objArr) {
        Object obj;
        try {
            Method m225a = m225a(t.getClass());
            if (m225a == null) {
                obj = null;
            } else {
                try {
                    obj = m225a.invoke(t, objArr);
                } catch (IllegalAccessException e) {
                    obj = null;
                }
            }
            return obj;
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: d */
    public Object m222d(T t, Object... objArr) {
        try {
            return m224b(t, objArr);
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
