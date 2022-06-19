package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* renamed from: com.appsflyer.internal.ag */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag.class */
public final class C3408ag {

    /* renamed from: ı */
    private static String f12867;

    /* renamed from: ɩ */
    private static String f12868;

    C3408ag() {
    }

    /* renamed from: ɩ */
    public static void m38004(String str) {
        f12868 = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f12867 = sb.toString();
    }

    /* renamed from: Ι */
    public static void m38003(String str) {
        if (f12868 == null) {
            m38004(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = f12868;
        if (str2 == null || !str.contains(str2)) {
            return;
        }
        AFLogger.afInfoLog(str.replace(f12868, f12867));
    }
}
