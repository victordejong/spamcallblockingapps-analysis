package com.freshchat.consumer.sdk.p057j;

import android.util.Patterns;
/* renamed from: com.freshchat.consumer.sdk.j.av */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/av.class */
public class C1629av {
    /* renamed from: a */
    private static boolean m40216a(String str, int i, String... strArr) {
        boolean m40233a = C1626as.m40233a(str);
        boolean z = m40233a;
        if (m40233a) {
            z = m40233a;
            if (i != 0) {
                z = m40233a;
                if (str.length() > i) {
                    z = false;
                }
            }
        }
        if (z && strArr != null) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                String str2 = strArr[i2];
                if (C1626as.m40233a(str2)) {
                    try {
                        if (!str.matches(str2)) {
                            z = false;
                            break;
                        }
                    } catch (Exception e) {
                        C1613ai.m40283e("FRESHCHAT_WARNING", e.toString());
                    }
                }
                i2++;
            }
        }
        return z;
    }

    /* renamed from: aK */
    public static boolean m40215aK(String str) {
        return m40216a(str, 384, Patterns.EMAIL_ADDRESS.pattern());
    }

    /* renamed from: aL */
    public static boolean m40214aL(String str) {
        return m40216a(str, 6, "\\+?[0-9]+");
    }

    /* renamed from: aM */
    public static boolean m40213aM(String str) {
        return m40216a(str, 16, Patterns.PHONE.pattern());
    }

    /* renamed from: aN */
    public static boolean m40212aN(String str) {
        return m40216a(str, 256, new String[0]);
    }

    /* renamed from: aO */
    public static boolean m40211aO(String str) {
        return m40216a(str, 32, "[\\w -]+");
    }

    /* renamed from: d */
    public static boolean m40210d(String str, int i) {
        return m40216a(str, i, new String[0]);
    }

    /* renamed from: e */
    public static boolean m40209e(Object obj) {
        return (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Double) || (obj instanceof String);
    }
}
