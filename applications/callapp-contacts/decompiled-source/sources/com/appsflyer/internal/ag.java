package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag.class */
public final class ag {

    /* renamed from: ı  reason: contains not printable characters */
    private static String f191;

    /* renamed from: ɩ  reason: contains not printable characters */
    private static String f192;

    ag() {
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    public static void m955(String str) {
        f192 = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f191 = sb.toString();
    }

    /* renamed from: Ι  reason: contains not printable characters */
    public static void m956(String str) {
        if (f192 == null) {
            m955(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = f192;
        if (str2 != null && str.contains(str2)) {
            AFLogger.afInfoLog(str.replace(f192, f191));
        }
    }
}
