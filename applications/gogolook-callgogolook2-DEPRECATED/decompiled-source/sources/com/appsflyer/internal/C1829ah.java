package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* renamed from: com.appsflyer.internal.ah */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah.class */
public final class C1829ah {

    /* renamed from: Ι */
    public static String f1789;

    /* renamed from: ι */
    public static String f1790;

    /* renamed from: ǃ */
    public static void m36175(String str) {
        f1789 = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f1790 = sb.toString();
    }

    /* renamed from: Ι */
    public static void m36174(String str) {
        if (f1789 == null) {
            m36175(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = f1789;
        if (str2 != null && str.contains(str2)) {
            AFLogger.afInfoLog(str.replace(f1789, f1790));
        }
    }
}
