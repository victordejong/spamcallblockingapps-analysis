package p1727n3.p1758e.p1767b;

import android.os.Build;
import android.util.Log;
/* renamed from: n3.e.b.y0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/y0.class */
public final class C26103y0 {

    /* renamed from: a */
    public static int f72812a = 3;

    /* renamed from: a */
    public static void m2724a(String str, String str2, Throwable th) {
        if (m2722c(str)) {
            m2721d(str);
        }
    }

    /* renamed from: b */
    public static void m2723b(String str, String str2, Throwable th) {
        if (f72812a <= 6 || Log.isLoggable(m2721d(str), 6)) {
            m2721d(str);
        }
    }

    /* renamed from: c */
    public static boolean m2722c(String str) {
        return f72812a <= 3 || Log.isLoggable(m2721d(str), 3);
    }

    /* renamed from: d */
    public static String m2721d(String str) {
        String str2 = str;
        if (23 < str.length()) {
            str2 = str;
            if (Build.VERSION.SDK_INT < 24) {
                str2 = str.substring(0, 23);
            }
        }
        return str2;
    }

    /* renamed from: e */
    public static void m2720e(String str, String str2, Throwable th) {
        if (f72812a <= 5 || Log.isLoggable(m2721d(str), 5)) {
            m2721d(str);
        }
    }
}
