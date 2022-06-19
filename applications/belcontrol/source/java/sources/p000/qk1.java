package p000;

import java.util.Arrays;
/* renamed from: qk1 */
/* loaded from: classes3-dex2jar.jar:qk1.class */
public class qk1 {
    /* renamed from: a */
    public static boolean m746a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static void m745b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
        m742e(illegalStateException);
        throw illegalStateException;
    }

    /* renamed from: c */
    public static void m744c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        m740g(str);
        throw null;
    }

    /* renamed from: d */
    public static int m743d(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    /* renamed from: e */
    public static <T extends Throwable> T m742e(T t) {
        m741f(t, qk1.class.getName());
        return t;
    }

    /* renamed from: f */
    public static <T extends Throwable> T m741f(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    /* renamed from: g */
    public static void m740g(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str);
        m742e(illegalArgumentException);
        throw illegalArgumentException;
    }

    /* renamed from: h */
    public static void m739h(String str) {
        nj1 nj1Var = new nj1(str);
        m742e(nj1Var);
        throw nj1Var;
    }

    /* renamed from: i */
    public static void m738i(String str) {
        m739h("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
