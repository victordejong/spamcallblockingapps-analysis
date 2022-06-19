package com.bytedance.sdk.openadsdk.utils;

import android.util.Log;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.utils.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/q.class */
public class C5478q {

    /* renamed from: a */
    private static boolean f19020a = false;

    /* renamed from: b */
    private static int f19021b = 4;

    /* renamed from: a */
    private static String m32115a(Object... objArr) {
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

    /* renamed from: a */
    public static void m32120a(int i) {
        f19021b = i;
    }

    /* renamed from: a */
    public static void m32119a(String str) {
        if (!f19020a) {
            return;
        }
        m32112b("Logger", str);
    }

    /* renamed from: a */
    public static void m32118a(String str, String str2) {
        if (f19020a && str2 == null) {
        }
    }

    /* renamed from: a */
    public static void m32117a(String str, String str2, Throwable th) {
        if (f19020a && str2 == null && th == null) {
        }
    }

    /* renamed from: a */
    public static void m32116a(String str, Object... objArr) {
        if (f19020a && objArr != null && f19021b <= 4) {
            m32115a(objArr);
        }
    }

    /* renamed from: a */
    public static boolean m32121a() {
        return f19021b <= 3;
    }

    /* renamed from: b */
    public static void m32114b() {
        f19020a = true;
        m32120a(3);
    }

    /* renamed from: b */
    public static void m32113b(String str) {
        if (!f19020a) {
            return;
        }
        m32106e("Logger", str);
    }

    /* renamed from: b */
    public static void m32112b(String str, String str2) {
        if (f19020a && str2 == null) {
        }
    }

    /* renamed from: b */
    public static void m32111b(String str, String str2, Throwable th) {
        if (!f19020a) {
            return;
        }
        if ((str2 == null && th == null) || f19021b > 5) {
            return;
        }
        Log.w(str, str2, th);
    }

    /* renamed from: c */
    public static void m32109c(String str, String str2) {
        if (f19020a && str2 == null) {
        }
    }

    /* renamed from: c */
    public static void m32108c(String str, String str2, Throwable th) {
        if (!f19020a) {
            return;
        }
        if ((str2 == null && th == null) || f19021b > 6) {
            return;
        }
        Log.e(str, str2, th);
    }

    /* renamed from: c */
    public static boolean m32110c() {
        return f19020a;
    }

    /* renamed from: d */
    public static void m32107d(String str, String str2) {
        if (f19020a && str2 != null && f19021b <= 5) {
            Log.w(str, str2);
        }
    }

    /* renamed from: e */
    public static void m32106e(String str, String str2) {
        if (f19020a && str2 != null && f19021b <= 6) {
            Log.e(str, str2);
        }
    }
}
