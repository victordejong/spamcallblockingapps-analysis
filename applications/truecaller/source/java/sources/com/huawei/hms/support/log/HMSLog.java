package com.huawei.hms.support.log;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.huawei.hms.base.log.AbstractC2276b;
import com.huawei.hms.base.log.C2275a;
import com.huawei.hms.base.log.d;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/log/HMSLog.class */
public class HMSLog {

    /* renamed from: a */
    public static final C2275a f7814a = new C2275a();

    /* renamed from: a */
    public static String m37199a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 16384);
                return "HMS-" + packageInfo.versionName + "(" + packageInfo.versionCode + ")";
            } catch (PackageManager.NameNotFoundException | RuntimeException e) {
                return "HMS-[unknown-version]";
            }
        }
        return "HMS-[unknown-version]";
    }

    /* renamed from: d */
    public static void m37198d(String str, String str2) {
        f7814a.m38116a(3, str, str2);
    }

    /* renamed from: e */
    public static void m37197e(String str, long j, String str2) {
        C2275a c2275a = f7814a;
        c2275a.m38116a(6, str, "[" + j + "] " + str2);
    }

    /* renamed from: e */
    public static void m37196e(String str, long j, String str2, Throwable th) {
        C2275a c2275a = f7814a;
        c2275a.m38111b(6, str, "[" + j + "] " + str2, th);
    }

    /* renamed from: e */
    public static void m37195e(String str, String str2) {
        f7814a.m38116a(6, str, str2);
    }

    /* renamed from: e */
    public static void m37194e(String str, String str2, Throwable th) {
        f7814a.m38111b(6, str, str2, th);
    }

    /* renamed from: i */
    public static void m37193i(String str, String str2) {
        f7814a.m38116a(4, str, str2);
    }

    public static void init(Context context, int i, String str) {
        C2275a c2275a = f7814a;
        c2275a.m38114a(context, i, str);
        c2275a.m38112a(str, "============================================================================\n====== " + m37199a(context) + "\n============================================================================");
    }

    public static boolean isErrorEnable() {
        return f7814a.m38117a(6);
    }

    public static boolean isInfoEnable() {
        return f7814a.m38117a(4);
    }

    public static boolean isWarnEnable() {
        return f7814a.m38117a(5);
    }

    public static void setExtLogger(HMSExtLogger hMSExtLogger, boolean z) throws IllegalArgumentException {
        if (hMSExtLogger != null) {
            AbstractC2276b dVar = new d(hMSExtLogger);
            if (z) {
                f7814a.m38113a(dVar);
                return;
            } else {
                f7814a.m38118a().m38109a(dVar);
                return;
            }
        }
        throw new IllegalArgumentException("extLogger is not able to be null");
    }

    /* renamed from: w */
    public static void m37192w(String str, String str2) {
        f7814a.m38116a(5, str, str2);
    }
}
