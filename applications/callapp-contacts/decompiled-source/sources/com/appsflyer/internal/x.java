package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.y;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x.class */
public final class x {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x$c.class */
    public static final class c extends IllegalStateException {
        c(String str) {
            super(str);
        }
    }

    x() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        if (r0.length() == 0) goto L_0x007b;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bf  */
    /* renamed from: ɩ  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1032(android.content.Context r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.x.m1032(android.content.Context, java.util.Map):void");
    }

    /* renamed from: ι  reason: contains not printable characters */
    public static y m1033(ContentResolver contentResolver) {
        String str;
        if (contentResolver == null) {
            return null;
        }
        y yVar = null;
        if (AppsFlyerProperties.getInstance().getString("amazon_aid") == null) {
            yVar = null;
            if ("Amazon".equals(Build.MANUFACTURER)) {
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
                if (i == 0) {
                    String string = Settings.Secure.getString(contentResolver, "advertising_id");
                    y.e eVar = y.e.AMAZON;
                    yVar = new y(string, false);
                } else if (i == 2) {
                    yVar = null;
                } else {
                    try {
                        str = Settings.Secure.getString(contentResolver, "advertising_id");
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
                        str = "";
                    }
                    y.e eVar2 = y.e.AMAZON;
                    yVar = new y(str, true);
                }
            }
        }
        return yVar;
    }
}
