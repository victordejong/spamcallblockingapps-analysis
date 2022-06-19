package kotlin.jvm.internal;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;
/* renamed from: kotlin.jvm.internal.p */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/p.class */
public class C18524p {
    private C18524p() {
    }

    /* renamed from: a */
    public static int m3854a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    /* renamed from: a */
    public static String m3847a(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: a */
    private static <T extends Throwable> T m3846a(T t) {
        return (T) m3845a((Throwable) t, C18524p.class.getName());
    }

    /* renamed from: a */
    public static <T extends Throwable> T m3845a(T t, String str) {
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
    public static void m3855a() {
        throw ((KotlinNullPointerException) m3846a(new KotlinNullPointerException()));
    }

    /* renamed from: a */
    public static void m3851a(Object obj) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) m3846a(new NullPointerException()));
    }

    /* renamed from: a */
    public static void m3849a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) m3846a(new IllegalStateException(str + " must not be null")));
    }

    /* renamed from: a */
    public static void m3848a(String str) {
        throw ((UninitializedPropertyAccessException) m3846a(new UninitializedPropertyAccessException("lateinit property " + str + " has not been initialized")));
    }

    /* renamed from: a */
    public static boolean m3853a(Double d) {
        return d != null && d.doubleValue() == 0.0d;
    }

    /* renamed from: a */
    public static boolean m3852a(Float f) {
        return f != null && f.floatValue() == BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    public static boolean m3850a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    private static String m3842b(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        return "Parameter specified as non-null is null: method " + className + "." + methodName + ", parameter " + str;
    }

    /* renamed from: b */
    public static void m3844b() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    /* renamed from: b */
    public static void m3843b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) m3846a(new NullPointerException(str + " must not be null")));
    }

    /* renamed from: c */
    public static void m3841c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalArgumentException) m3846a(new IllegalArgumentException(m3842b(str))));
    }

    /* renamed from: d */
    public static void m3840d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) m3846a(new NullPointerException(m3842b(str))));
    }
}
