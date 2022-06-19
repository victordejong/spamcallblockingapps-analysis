package com.bytedance.sdk.openadsdk.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.utils.v */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/v.class */
public class C5484v {

    /* renamed from: a */
    private static String f19027a;

    /* renamed from: a */
    private static String m32079a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m32078a(Context context) {
        if (context == null) {
            return false;
        }
        return context.getApplicationContext().getPackageName().equals(m32076b(context));
    }

    /* renamed from: b */
    private static String m32077b() {
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

    /* renamed from: b */
    public static String m32076b(Context context) {
        if (!TextUtils.isEmpty(f19027a)) {
            return f19027a;
        }
        String m32079a = m32079a();
        f19027a = m32079a;
        if (!TextUtils.isEmpty(m32079a)) {
            return f19027a;
        }
        String m32077b = m32077b();
        f19027a = m32077b;
        if (!TextUtils.isEmpty(m32077b)) {
            return f19027a;
        }
        String m32075c = m32075c(context);
        f19027a = m32075c;
        return m32075c;
    }

    /* renamed from: c */
    private static String m32075c(Context context) {
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
