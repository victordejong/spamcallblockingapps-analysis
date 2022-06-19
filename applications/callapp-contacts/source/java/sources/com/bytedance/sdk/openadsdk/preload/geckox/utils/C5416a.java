package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/a.class */
public class C5416a {
    /* renamed from: a */
    public static String m32364a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            C5381b.m32430a("gecko-debug-tag", "getVersion:", e);
            return JsonReaderKt.NULL;
        }
    }

    /* renamed from: b */
    public static String m32363b(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            return applicationInfo == null ? "" : applicationInfo.loadLabel(packageManager).toString();
        } catch (Throwable th) {
            C5381b.m32430a("gecko-debug-tag", "getApplicationName:", th);
            return "";
        }
    }

    /* renamed from: c */
    public static String m32362c(Context context) {
        ActivityManager.RunningAppProcessInfo next;
        try {
            int myPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return null;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (next.pid != myPid);
            return next.processName;
        } catch (Exception e) {
            C5381b.m32430a("gecko-debug-tag", "getProcessName:", e);
            return null;
        }
    }
}
