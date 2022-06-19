package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.referrer.Payload;
/* loaded from: classes-dex2jar.jar:com/appsflyer/SingleInstallBroadcastReceiver.class */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent == null) {
            return;
        }
        try {
            str = intent.getStringExtra(Payload.RFR);
        } catch (Throwable th) {
            AFLogger.afErrorLog("error in BroadcastReceiver ", th);
            str = null;
        }
        if (str != null && AppsFlyerLibCore.getSharedPreferences(context).getString(Payload.RFR, null) != null) {
            AppsFlyerLibCore.getInstance();
            AppsFlyerLibCore.m38119(context, str);
            return;
        }
        String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
        long currentTimeMillis = System.currentTimeMillis();
        if (string != null && currentTimeMillis - Long.valueOf(string).longValue() < 2000) {
            return;
        }
        AFLogger.afInfoLog("SingleInstallBroadcastReceiver called");
        AppsFlyerLibCore.getInstance().m38071(context, intent);
        AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
    }
}
