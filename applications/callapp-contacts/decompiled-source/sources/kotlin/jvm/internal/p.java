package kotlin.jvm.internal;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/p.class */
public class p {
    private p() {
    }

    public static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static String a(String str, Object obj) {
        return str + obj;
    }

    private static <T extends Throwable> T a(T t) {
        return (T) a((Throwable) t, p.class.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Throwable> T a(T t, String str) {
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

    public static void a() {
        throw ((KotlinNullPointerException) a(new KotlinNullPointerException()));
    }

    public static void a(Object obj) {
        if (obj == null) {
            throw ((NullPointerException) a(new NullPointerException()));
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalStateException) a(new IllegalStateException(str + " must not be null")));
        }
    }

    public static void a(String str) {
        throw ((UninitializedPropertyAccessException) a(new UninitializedPropertyAccessException("lateinit property " + str + " has not been initialized")));
    }

    public static boolean a(Double d2) {
        return d2 != null && d2.doubleValue() == 0.0d;
    }

    public static boolean a(Float f) {
        return f != null && f.floatValue() == BitmapDescriptorFactory.HUE_RED;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    private static String b(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    public static void b() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void b(Object obj, String str) {
        if (obj == null) {
            throw ((NullPointerException) a(new NullPointerException(str + " must not be null")));
        }
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalArgumentException) a(new IllegalArgumentException(b(str))));
        }
    }

    public static void d(Object obj, String str) {
        if (obj == null) {
            throw ((NullPointerException) a(new NullPointerException(b(str))));
        }
    }
}
