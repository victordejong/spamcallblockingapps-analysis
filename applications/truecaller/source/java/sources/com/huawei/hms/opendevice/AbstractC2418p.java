package com.huawei.hms.opendevice;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.opendevice.p */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/p.class */
public abstract class AbstractC2418p {

    /* renamed from: a */
    public static String f7668a;

    /* renamed from: a */
    public static String m37399a() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/self/cmdline");
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, StandardCharsets.UTF_8);
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    inputStreamReader.close();
                    fileInputStream.close();
                    return "";
                }
                String trim = readLine.trim();
                bufferedReader.close();
                inputStreamReader.close();
                fileInputStream.close();
                return trim;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            HMSLog.m37195e("CommFun", "get current app processes IOException!");
            return "";
        } catch (Exception e2) {
            C22128a.m8735A0(e2, C22128a.m8728C("get current app processes exception!"), "CommFun");
            return "";
        }
    }

    /* renamed from: a */
    public static String m37398a(Context context) {
        if (!TextUtils.isEmpty(f7668a)) {
            return f7668a;
        }
        String m37396b = m37396b(context);
        f7668a = m37396b;
        if (!TextUtils.isEmpty(m37396b)) {
            return f7668a;
        }
        String m37399a = m37399a();
        f7668a = m37399a;
        return m37399a;
    }

    /* renamed from: b */
    public static String m37396b(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return "";
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            HMSLog.m37192w("CommFun", "get running app processes null!");
            return "";
        }
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid && runningAppProcessInfo.processName != null) {
                StringBuilder m8728C = C22128a.m8728C("info.pid -> ");
                m8728C.append(runningAppProcessInfo.pid);
                m8728C.append(", info.processName -> ");
                m8728C.append(runningAppProcessInfo.processName);
                HMSLog.m37193i("CommFun", m8728C.toString());
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    /* renamed from: b */
    public static boolean m37397b() {
        int i = HwBuildEx.VERSION.EMUI_SDK_INT;
        HMSLog.m37198d("CommFun", "Emui Api Level:" + i);
        return i > 0;
    }

    /* renamed from: c */
    public static String m37395c(Context context) {
        String str;
        if (Build.VERSION.SDK_INT >= 24) {
            str = context.createDeviceProtectedStorageContext().getDataDir() + "";
        } else {
            str = context.getFilesDir().getParent();
        }
        if (TextUtils.isEmpty(str)) {
            HMSLog.m37195e("CommFun", "get storage root path of the current user failed.");
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: d */
    public static long m37394d(Context context) {
        char c;
        try {
            c = context.getPackageManager().getPackageInfo("com.huawei.android.pushagent", 16384).versionCode;
        } catch (Exception e) {
            HMSLog.m37195e("CommFun", "get nc versionCode error");
            c = 65535;
        }
        return c;
    }

    /* renamed from: e */
    public static boolean m37393e(Context context) {
        return m37397b() && HwBuildEx.VERSION.EMUI_SDK_INT < 21 && m37394d(context) < 110001400;
    }
}
