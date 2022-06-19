package com.huawei.hms.framework.common;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/ActivityUtil.class */
public class ActivityUtil {
    private static final String TAG = "ActivityUtil";

    public static PendingIntent getActivities(Context context, int i, Intent[] intentArr, int i2) {
        PendingIntent pendingIntent;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            pendingIntent = PendingIntent.getActivities(context, i, intentArr, i2);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
            pendingIntent = null;
        }
        return pendingIntent;
    }

    public static boolean isForeground(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) ContextCompat.getSystemService(context, "activity")) == null) {
            return false;
        }
        List<ActivityManager.RunningAppProcessInfo> list = null;
        try {
            list = activityManager.getRunningAppProcesses();
        } catch (RuntimeException e) {
            Logger.m38039w(TAG, "activityManager getRunningAppProcesses occur exception: ", e);
        }
        if (list == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : list) {
            String str = runningAppProcessInfo.processName;
            if (str != null && str.equals(context.getPackageName()) && runningAppProcessInfo.importance == 100) {
                Logger.m38042v(TAG, "isForeground true");
                return true;
            }
        }
        return false;
    }
}
