package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.FirebaseMessagingServiceListener;
import com.appsflyer.internal.C3418b;
/* renamed from: com.appsflyer.internal.af */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/af.class */
public final class C3407af {
    C3407af() {
    }

    /* renamed from: ı */
    public static void m38005(Context context, String str) {
        if (str != null) {
            AFLogger.afInfoLog("updateServerUninstallToken called with: ".concat(String.valueOf(str)));
            C3418b.C3419a.C3420a m37974 = C3418b.C3419a.C3420a.m37974(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            SharedPreferences sharedPreferences = AppsFlyerLibCore.getSharedPreferences(context);
            if (sharedPreferences.getBoolean("sentRegisterRequestToAF", false) && m37974.f12920 != null && m37974.f12920.equals(str)) {
                return;
            }
            AppsFlyerProperties.getInstance().set("afUninstallToken", str);
            if (!AppsFlyerLibCore.m38100(sharedPreferences)) {
                return;
            }
            AppsFlyerLibCore.getInstance().m38064(context, str);
        }
    }

    /* renamed from: ı */
    public static boolean m38006(Context context) {
        if (AppsFlyerLib.getInstance().isTrackingStopped()) {
            return false;
        }
        try {
            Class.forName("com.google.firebase.messaging.FirebaseMessagingService");
            if (AndroidUtils.m38123(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class))) {
                return true;
            }
            AFLogger.afWarnLog("Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation.");
            return false;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog("An error occurred while trying to verify manifest declarations: ", th);
            return false;
        }
    }
}
