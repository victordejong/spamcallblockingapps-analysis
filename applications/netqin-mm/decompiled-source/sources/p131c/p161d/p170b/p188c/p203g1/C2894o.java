package p131c.p161d.p170b.p188c.p203g1;

import android.text.TextUtils;
import android.util.Log;
/* renamed from: c.d.b.c.g1.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/o.class */
public final class C2894o {

    /* renamed from: a */
    public static int f10498a = 0;

    /* renamed from: b */
    public static boolean f10499b = true;

    /* renamed from: a */
    public static String m28598a(String str, Throwable th) {
        if (th == null) {
            return str;
        }
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            str = str + " - " + message;
        }
        return str;
    }

    /* renamed from: a */
    public static void m28600a(String str, String str2) {
        if (f10498a == 0) {
            Log.d(str, str2);
        }
    }

    /* renamed from: a */
    public static void m28599a(String str, String str2, Throwable th) {
        if (!f10499b) {
            m28597b(str, m28598a(str2, th));
        } else if (f10498a <= 3) {
            Log.e(str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m28597b(String str, String str2) {
        if (f10498a <= 3) {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public static void m28596b(String str, String str2, Throwable th) {
        if (!f10499b) {
            m28594d(str, m28598a(str2, th));
        } else if (f10498a <= 2) {
            Log.w(str, str2, th);
        }
    }

    /* renamed from: c */
    public static void m28595c(String str, String str2) {
        if (f10498a <= 1) {
            Log.i(str, str2);
        }
    }

    /* renamed from: d */
    public static void m28594d(String str, String str2) {
        if (f10498a <= 2) {
            Log.w(str, str2);
        }
    }
}
