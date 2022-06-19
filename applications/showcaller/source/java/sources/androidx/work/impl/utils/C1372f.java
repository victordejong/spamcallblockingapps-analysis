package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: androidx.work.impl.utils.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/f.class */
public class C1372f {

    /* renamed from: a */
    private static final String f5646a = AbstractC1404j.m30159f("ProcessUtils");

    private C1372f() {
    }

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    /* renamed from: a */
    public static String m30211a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return Application.getProcessName();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, C1372f.class.getClassLoader());
            if (i >= 18) {
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
            AbstractC1404j.m30161c().mo30158a(f5646a, "Unable to check ActivityThread for processName", th);
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

    /* renamed from: b */
    public static boolean m30210b(Context context, C1230a c1230a) {
        String m30211a = m30211a(context);
        return !TextUtils.isEmpty(c1230a.m30595c()) ? TextUtils.equals(m30211a, c1230a.m30595c()) : TextUtils.equals(m30211a, context.getApplicationInfo().processName);
    }
}
