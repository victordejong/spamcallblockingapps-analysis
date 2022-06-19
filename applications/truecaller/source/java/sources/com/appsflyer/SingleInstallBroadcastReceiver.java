package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.C0726ai;
/* loaded from: classes-dex2jar.jar:com/appsflyer/SingleInstallBroadcastReceiver.class */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent == null) {
            return;
        }
        try {
            str = intent.getStringExtra("referrer");
        } catch (Throwable th) {
            AFLogger.valueOf("error in BroadcastReceiver ", th);
            str = null;
        }
        if (str != null && C0726ai.values(context).getString("referrer", null) != null) {
            C0726ai.valueOf().AFKeystoreWrapper(context, str);
            return;
        }
        String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
        long currentTimeMillis = System.currentTimeMillis();
        if (string != null && currentTimeMillis - Long.valueOf(string).longValue() < 2000) {
            return;
        }
        AFLogger.valueOf("SingleInstallBroadcastReceiver called");
        C0726ai.valueOf().values(context, intent);
        AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
    }
}
