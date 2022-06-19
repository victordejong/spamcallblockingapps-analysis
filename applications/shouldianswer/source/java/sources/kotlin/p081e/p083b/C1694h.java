package kotlin.p081e.p083b;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;
/* renamed from: kotlin.e.b.h */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/h.class */
public class C1694h {
    private C1694h() {
    }

    /* renamed from: a */
    public static String m3120a(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: a */
    private static <T extends Throwable> T m3119a(T t) {
        return (T) m3118a((Throwable) t, C1694h.class.getName());
    }

    /* renamed from: a */
    public static <T extends Throwable> T m3118a(T t, String str) {
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

    /* renamed from: a */
    public static void m3124a() {
        throw ((KotlinNullPointerException) m3119a(new KotlinNullPointerException()));
    }

    /* renamed from: a */
    public static void m3122a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) m3119a(new IllegalStateException(str + " must not be null")));
    }

    /* renamed from: a */
    public static void m3121a(String str) {
        throw ((UninitializedPropertyAccessException) m3119a(new UninitializedPropertyAccessException(str)));
    }

    /* renamed from: a */
    public static boolean m3123a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static void m3117b(Object obj, String str) {
        if (obj == null) {
            m3115c(str);
        }
    }

    /* renamed from: b */
    public static void m3116b(String str) {
        m3121a("lateinit property " + str + " has not been initialized");
    }

    /* renamed from: c */
    private static void m3115c(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        throw ((IllegalArgumentException) m3119a(new IllegalArgumentException("Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str)));
    }
}
