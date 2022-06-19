package com.huawei.hms.framework.common;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/ContextCompat.class */
public class ContextCompat {
    private static final String TAG = "ContextCompat";

    public static boolean checkSelfPermission(Context context, String str) {
        boolean z = false;
        if (context == null || str == null) {
            Logger.m38040w(TAG, "param is null");
            return false;
        }
        try {
            if (context.checkPermission(str, Process.myPid(), Process.myUid()) == 0) {
                z = true;
            }
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
        }
        return z;
    }

    public static Context getProtectedStorageContext(Context context) {
        if (context != null) {
            return Build.VERSION.SDK_INT < 24 ? context : context.createDeviceProtectedStorageContext();
        }
        Logger.m38040w(TAG, "context is null");
        return null;
    }

    public static Object getSystemService(Context context, String str) {
        Object obj;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            obj = context.getSystemService(str);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "SystemServer error:", e);
            obj = null;
        }
        return obj;
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        Intent intent;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            intent = context.registerReceiver(broadcastReceiver, intentFilter);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
            intent = null;
        }
        return intent;
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        Intent intent;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            intent = context.registerReceiver(broadcastReceiver, intentFilter, str, handler);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
            intent = null;
        }
        return intent;
    }

    public static ComponentName startService(Context context, Intent intent) {
        ComponentName componentName;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            componentName = context.startService(intent);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "SystemServer error:", e);
            componentName = null;
        }
        return componentName;
    }

    public static void unregisterReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "SystemServer error:", e);
        }
    }
}
