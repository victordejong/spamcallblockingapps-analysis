package p012b.p076s.p078b.p079a.p080a1;

import android.text.TextUtils;
import android.util.Log;
/* renamed from: b.s.b.a.a1.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/j.class */
public final class C1175j {

    /* renamed from: a */
    public static int f4706a = 0;

    /* renamed from: b */
    public static boolean f4707b = true;

    /* renamed from: a */
    public static String m34418a(String str, Throwable th) {
        if (th == null) {
            return str;
        }
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(message).length());
            sb.append(str);
            sb.append(" - ");
            sb.append(message);
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: a */
    public static void m34420a(String str, String str2) {
        if (f4706a == 0) {
            Log.d(str, str2);
        }
    }

    /* renamed from: a */
    public static void m34419a(String str, String str2, Throwable th) {
        if (!f4707b) {
            m34417b(str, m34418a(str2, th));
        } else if (f4706a <= 3) {
            Log.e(str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m34417b(String str, String str2) {
        if (f4706a <= 3) {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public static void m34416b(String str, String str2, Throwable th) {
        if (!f4707b) {
            m34414d(str, m34418a(str2, th));
        } else if (f4706a <= 2) {
            Log.w(str, str2, th);
        }
    }

    /* renamed from: c */
    public static void m34415c(String str, String str2) {
        if (f4706a <= 1) {
            Log.i(str, str2);
        }
    }

    /* renamed from: d */
    public static void m34414d(String str, String str2) {
        if (f4706a <= 2) {
            Log.w(str, str2);
        }
    }
}
