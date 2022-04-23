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
import com.appsflyer.internal.b;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/af.class */
public final class af {
    af() {
    }

    /* renamed from: ı  reason: contains not printable characters */
    public static void m953(Context context, String str) {
        if (str != null) {
            AFLogger.afInfoLog("updateServerUninstallToken called with: ".concat(String.valueOf(str)));
            b.a.C0133a aVar = b.a.C0133a.m989(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            SharedPreferences sharedPreferences = AppsFlyerLibCore.getSharedPreferences(context);
            if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false) || aVar.f244 == null || !aVar.f244.equals(str)) {
                AppsFlyerProperties.getInstance().set("afUninstallToken", str);
                if (AppsFlyerLibCore.m849(sharedPreferences)) {
                    AppsFlyerLibCore.getInstance().m899(context, str);
                }
            }
        }
    }

    /* renamed from: ı  reason: contains not printable characters */
    public static boolean m954(Context context) {
        if (AppsFlyerLib.getInstance().isTrackingStopped()) {
            return false;
        }
        try {
            Class.forName("com.google.firebase.messaging.FirebaseMessagingService");
            if (AndroidUtils.m822(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class))) {
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
