package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.Configuration;
import androidx.work.impl.background.p088a.C3030b;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: androidx.work.impl.utils.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public final class C3125f {

    /* renamed from: a */
    private static final String f11453a = AbstractC3145k.m39275a("ProcessUtils");

    private C3125f() {
    }

    /* renamed from: a */
    private static String m39294a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, C3030b.class.getClassLoader());
            if (Build.VERSION.SDK_INT >= 18) {
                Method declaredMethod = cls.getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                str = declaredMethod.invoke(null, new Object[0]);
            } else {
                Method declaredMethod2 = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = cls.getDeclaredMethod("getProcessName", new Class[0]);
                declaredMethod3.setAccessible(true);
                str = declaredMethod3.invoke(declaredMethod2.invoke(null, new Object[0]), new Object[0]);
            }
            if (str instanceof String) {
                return str;
            }
        } catch (Throwable th) {
            AbstractC3145k.m39277a();
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

    /* renamed from: a */
    public static boolean m39293a(Context context, Configuration configuration) {
        String m39294a = m39294a(context);
        return !TextUtils.isEmpty(configuration.getDefaultProcessName()) ? TextUtils.equals(m39294a, configuration.getDefaultProcessName()) : TextUtils.equals(m39294a, context.getApplicationInfo().processName);
    }
}
