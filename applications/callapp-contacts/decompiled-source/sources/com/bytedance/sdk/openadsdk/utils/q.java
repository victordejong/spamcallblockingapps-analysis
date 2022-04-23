package com.bytedance.sdk.openadsdk.utils;

import android.util.Log;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10309a = false;

    /* renamed from: b  reason: collision with root package name */
    private static int f10310b = 4;

    private static String a(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append(" null ");
            }
            sb.append(StringUtils.SPACE);
        }
        return sb.toString();
    }

    public static void a(int i) {
        f10310b = i;
    }

    public static void a(String str) {
        if (f10309a) {
            b("Logger", str);
        }
    }

    public static void a(String str, String str2) {
        if (f10309a && str2 == null) {
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (f10309a && str2 == null && th == null) {
        }
    }

    public static void a(String str, Object... objArr) {
        if (f10309a && objArr != null && f10310b <= 4) {
            a(objArr);
        }
    }

    public static boolean a() {
        return f10310b <= 3;
    }

    public static void b() {
        f10309a = true;
        a(3);
    }

    public static void b(String str) {
        if (f10309a) {
            e("Logger", str);
        }
    }

    public static void b(String str, String str2) {
        if (f10309a && str2 == null) {
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (f10309a) {
            if (!(str2 == null && th == null) && f10310b <= 5) {
                Log.w(str, str2, th);
            }
        }
    }

    public static void c(String str, String str2) {
        if (f10309a && str2 == null) {
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (f10309a) {
            if (!(str2 == null && th == null) && f10310b <= 6) {
                Log.e(str, str2, th);
            }
        }
    }

    public static boolean c() {
        return f10309a;
    }

    public static void d(String str, String str2) {
        if (f10309a && str2 != null && f10310b <= 5) {
            Log.w(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (f10309a && str2 != null && f10310b <= 6) {
            Log.e(str, str2);
        }
    }
}
