package com.bytedance.sdk.openadsdk.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/v.class */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static String f10316a;

    private static String a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        return null;
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return context.getApplicationContext().getPackageName().equals(b(context));
    }

    private static String b() {
        String str;
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            str = null;
            if (invoke instanceof String) {
                str = (String) invoke;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            str = null;
        }
        return str;
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(f10316a)) {
            return f10316a;
        }
        String a2 = a();
        f10316a = a2;
        if (!TextUtils.isEmpty(a2)) {
            return f10316a;
        }
        String b2 = b();
        f10316a = b2;
        if (!TextUtils.isEmpty(b2)) {
            return f10316a;
        }
        String c2 = c(context);
        f10316a = c2;
        return c2;
    }

    private static String c(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }
}
