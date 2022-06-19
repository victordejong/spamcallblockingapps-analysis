package com.appsflyer.internal;

import android.support.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
/* renamed from: com.appsflyer.internal.al */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/al.class */
public final class C0741al {
    @VisibleForTesting
    private static String AFInAppEventParameterName;
    @VisibleForTesting
    private static String AFKeystoreWrapper;

    public static void AFInAppEventParameterName(String str) {
        AFKeystoreWrapper = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        AFInAppEventParameterName = sb.toString();
    }

    public static void values(String str) {
        if (AFKeystoreWrapper == null) {
            AFInAppEventParameterName(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = AFKeystoreWrapper;
        if (str2 != null) {
            AFLogger.valueOf(str.replace(str2, AFInAppEventParameterName));
        }
    }
}
