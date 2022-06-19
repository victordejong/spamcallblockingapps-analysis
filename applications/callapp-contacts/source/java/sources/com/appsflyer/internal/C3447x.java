package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.C3449y;
/* renamed from: com.appsflyer.internal.x */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x.class */
public final class C3447x {

    /* renamed from: com.appsflyer.internal.x$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/x$c.class */
    public static final class C3448c extends IllegalStateException {
        C3448c(String str) {
            super(str);
        }
    }

    C3447x() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        if (r0.length() == 0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bf  */
    /* renamed from: ɩ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m37942(android.content.Context r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C3447x.m37942(android.content.Context, java.util.Map):void");
    }

    /* renamed from: ι */
    public static C3449y m37941(ContentResolver contentResolver) {
        String str;
        if (contentResolver == null) {
            return null;
        }
        C3449y c3449y = null;
        if (AppsFlyerProperties.getInstance().getString("amazon_aid") == null) {
            c3449y = null;
            if ("Amazon".equals(Build.MANUFACTURER)) {
                int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
                if (i == 0) {
                    String string = Settings.Secure.getString(contentResolver, "advertising_id");
                    C3449y.EnumC3450e enumC3450e = C3449y.EnumC3450e.AMAZON;
                    c3449y = new C3449y(string, false);
                } else if (i == 2) {
                    c3449y = null;
                } else {
                    try {
                        str = Settings.Secure.getString(contentResolver, "advertising_id");
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
                        str = "";
                    }
                    C3449y.EnumC3450e enumC3450e2 = C3449y.EnumC3450e.AMAZON;
                    c3449y = new C3449y(str, true);
                }
            }
        }
        return c3449y;
    }
}
