package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static int f4143a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f4144b = true;

    private j() {
    }

    private static String a(String str, Throwable th) {
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

    public static void a() {
    }

    public static void a(String str, String str2) {
        if (f4143a <= 2) {
            Log.w(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (!f4144b) {
            a(str, a(str2, th));
        } else if (f4143a <= 2) {
            Log.w(str, str2, th);
        }
    }

    public static void b() {
    }

    public static void b(String str, String str2) {
        if (f4143a <= 3) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (!f4144b) {
            b(str, a(str2, th));
        } else if (f4143a <= 3) {
            Log.e(str, str2, th);
        }
    }
}
