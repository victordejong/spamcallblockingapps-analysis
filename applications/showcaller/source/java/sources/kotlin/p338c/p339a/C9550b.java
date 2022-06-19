package kotlin.p338c.p339a;

import java.util.Arrays;
/* renamed from: kotlin.c.a.b */
/* loaded from: classes2-dex2jar.jar:kotlin/c/a/b.class */
public class C9550b {
    private C9550b() {
    }

    /* renamed from: a */
    public static void m376a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) m373d(new NullPointerException(str + " must not be null")));
    }

    /* renamed from: b */
    public static void m375b(Object obj, String str) {
        if (obj == null) {
            m370g(str);
        }
    }

    /* renamed from: c */
    private static String m374c(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    /* renamed from: d */
    private static <T extends Throwable> T m373d(T t) {
        return (T) m372e(t, C9550b.class.getName());
    }

    /* renamed from: e */
    static <T extends Throwable> T m372e(T t, String str) {
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

    /* renamed from: f */
    public static String m371f(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: g */
    private static void m370g(String str) {
        throw ((NullPointerException) m373d(new NullPointerException(m374c(str))));
    }
}
