package com.clevertap.android.sdk.pushnotification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22773p;
@Deprecated(since = "4.3.0")
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/CTPushNotificationReceiver.class */
public class CTPushNotificationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2;
        try {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            if (extras.containsKey("wzrk_dl")) {
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(intent.getStringExtra("wzrk_dl")));
                C22741j0.m7837m(context, intent3);
                intent2 = intent3;
            } else {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                intent2 = launchIntentForPackage;
                if (launchIntentForPackage == null) {
                    return;
                }
            }
            C22773p.m7791j(context, extras);
            intent2.setFlags(872415232);
            intent2.putExtras(extras);
            intent2.putExtra("wzrk_from", "CTPushNotificationReceiver");
            if (extras.containsKey("close_system_dialogs") && extras.getBoolean("close_system_dialogs")) {
                context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            }
            context.startActivity(intent2);
            extras.toString();
        } catch (Throwable th) {
        }
    }
}
