package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.ResolveInfo;
import com.appsflyer.internal.C0726ai;
/* loaded from: classes-dex2jar.jar:com/appsflyer/MultipleInstallBroadcastReceiver.class */
public class MultipleInstallBroadcastReceiver extends BroadcastReceiver {
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
        AFLogger.valueOf("MultipleInstallBroadcastReceiver called");
        C0726ai.valueOf().values(context, intent);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryBroadcastReceivers(new Intent("com.android.vending.INSTALL_REFERRER"), 0)) {
            String action = intent.getAction();
            if (((PackageItemInfo) resolveInfo.activityInfo).packageName.equals(context.getPackageName()) && "com.android.vending.INSTALL_REFERRER".equals(action) && !getClass().getName().equals(((PackageItemInfo) resolveInfo.activityInfo).name)) {
                StringBuilder sb = new StringBuilder("trigger onReceive: class: ");
                sb.append(((PackageItemInfo) resolveInfo.activityInfo).name);
                AFLogger.valueOf(sb.toString());
                try {
                    ((BroadcastReceiver) Class.forName(((PackageItemInfo) resolveInfo.activityInfo).name).newInstance()).onReceive(context, intent);
                } catch (Throwable th2) {
                    StringBuilder sb2 = new StringBuilder("error in BroadcastReceiver ");
                    sb2.append(((PackageItemInfo) resolveInfo.activityInfo).name);
                    AFLogger.valueOf(sb2.toString(), th2);
                }
            }
        }
    }
}
