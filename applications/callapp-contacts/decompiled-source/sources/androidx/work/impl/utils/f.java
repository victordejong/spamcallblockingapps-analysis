package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.Configuration;
import androidx.work.impl.background.a.b;
import androidx.work.k;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6180a = k.a("ProcessUtils");

    private f() {
    }

    private static String a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, b.class.getClassLoader());
            if (Build.VERSION.SDK_INT >= 18) {
                Method declaredMethod = cls.getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                obj = declaredMethod.invoke(null, new Object[0]);
            } else {
                Method declaredMethod2 = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = cls.getDeclaredMethod("getProcessName", new Class[0]);
                declaredMethod3.setAccessible(true);
                obj = declaredMethod3.invoke(declaredMethod2.invoke(null, new Object[0]), new Object[0]);
            }
            if (obj instanceof String) {
                return (String) obj;
            }
        } catch (Throwable th) {
            k.a();
        }
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.isEmpty()) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static boolean a(Context context, Configuration configuration) {
        String a2 = a(context);
        return !TextUtils.isEmpty(configuration.getDefaultProcessName()) ? TextUtils.equals(a2, configuration.getDefaultProcessName()) : TextUtils.equals(a2, context.getApplicationInfo().processName);
    }
}
