package com.asus.updatesdk.analytic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.analytic.AnalyticUtils;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/CheckAppUpdateReceiver.class */
public class CheckAppUpdateReceiver extends BroadcastReceiver {
    public static final String KEY_IS_CHECK_INSTALL = "is_check_install";
    public static final String KEY_OLD_VERSION = "old_version";
    public static final String KEY_PACKAGE_NAME = "packagename";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z = false;
        String stringExtra = intent.getStringExtra(KEY_PACKAGE_NAME);
        long appVersion = ZenUiFamily.getAppVersion(context, stringExtra);
        if (intent.getBooleanExtra(KEY_IS_CHECK_INSTALL, false)) {
            String str = -1 == appVersion ? AnalyticUtils.Label.NOT_INSTALL : AnalyticUtils.Label.INSTALL;
            TrackerManager.sendEvents(context, TrackerManager.GA_TRACKER, AnalyticUtils.Category.APP_UPDATED_BY_SDK, stringExtra, str, 0L);
            Log.v("CheckAppUpdateReceiver", stringExtra + " is installed: " + str);
        } else if (-1 != appVersion) {
            if (intent.getLongExtra(KEY_OLD_VERSION, 0L) != appVersion) {
                z = true;
            }
            Boolean valueOf = Boolean.valueOf(z);
            TrackerManager.sendEvents(context, TrackerManager.GA_TRACKER, AnalyticUtils.Category.APP_UPDATED_BY_SDK, stringExtra, valueOf.toString(), 0L);
            Log.v("CheckAppUpdateReceiver", stringExtra + " is update: " + valueOf.toString());
        }
    }
}
