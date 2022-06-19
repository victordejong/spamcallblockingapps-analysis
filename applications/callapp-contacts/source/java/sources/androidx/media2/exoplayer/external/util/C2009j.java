package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import android.util.Log;
/* renamed from: androidx.media2.exoplayer.external.util.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/j.class */
public final class C2009j {

    /* renamed from: a */
    private static int f8099a = 0;

    /* renamed from: b */
    private static boolean f8100b = true;

    private C2009j() {
    }

    /* renamed from: a */
    private static String m41582a(String str, Throwable th) {
        if (th == null) {
            return str;
        }
        String message = th.getMessage();
        if (TextUtils.isEmpty(message)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(message).length());
        sb.append(str);
        sb.append(" - ");
        sb.append(message);
        return sb.toString();
    }

    /* renamed from: a */
    public static void m41585a() {
    }

    /* renamed from: a */
    public static void m41584a(String str, String str2) {
        if (f8099a <= 2) {
            Log.w(str, str2);
        }
    }

    /* renamed from: a */
    public static void m41583a(String str, String str2, Throwable th) {
        if (!f8100b) {
            m41584a(str, m41582a(str2, th));
        } else if (f8099a > 2) {
        } else {
            Log.w(str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m41581b() {
    }

    /* renamed from: b */
    public static void m41580b(String str, String str2) {
        if (f8099a <= 3) {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public static void m41579b(String str, String str2, Throwable th) {
        if (!f8100b) {
            m41580b(str, m41582a(str2, th));
        } else if (f8099a > 3) {
        } else {
            Log.e(str, str2, th);
        }
    }
}
