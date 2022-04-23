package com.bytedance.sdk.openadsdk.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.os.Process;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/m.class */
public class m {
    /* JADX WARN: Can't wrap try/catch for region: R(11:8|(2:60|9)|(2:36|37)(6:13|14|(4:17|(2:19|62)(1:63)|20|15)|61|21|(2:23|24)(8:25|(4:26|56|27|(5:29|54|30|31|32)(0))|41|(1:46)|49|(1:51)|52|53))|58|41|(2:43|44)|46|49|(0)|52|53) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x014f, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0150, code lost:
        com.bytedance.sdk.openadsdk.utils.q.c("TTAdSdk-InitChecker", "The dynamic permission is abnormal. Please check and read the access document in detail： ", r7);
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.m.a():void");
    }

    public static boolean a(Context context) {
        q.e("TTAdSdk-InitChecker", "Start to check if TTMultiProvider and FileProvider are registered in AndroidManifest");
        boolean z = false;
        if (context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        List<ProviderInfo> queryContentProviders = context.getPackageManager().queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072);
        if (queryContentProviders == null || queryContentProviders.size() == 0) {
            q.e("TTAdSdk-InitChecker", "TTMultiProvider isTTMultiProviderRegistered pInfos == null or pInfos.size() == 0");
            return false;
        }
        boolean z2 = false;
        for (ProviderInfo providerInfo : queryContentProviders) {
            if ("com.bytedance.sdk.openadsdk.multipro.TTMultiProvider".equals(providerInfo.name)) {
                String str = packageName + ".TTMultiProvider";
                if (TextUtils.isEmpty(str) || !str.equals(providerInfo.authority)) {
                    q.e("TTAdSdk-InitChecker", "TTMultiProvider configuration exception in AndroidManifest.xml: android: authorities, please refer to the access documentation");
                    z = true;
                } else {
                    q.e("TTAdSdk-InitChecker", "TTMultiProvider configuration in AndroidManifest.xml is normal");
                    z = true;
                    z2 = true;
                }
            }
        }
        if (!z) {
            q.e("TTAdSdk-InitChecker", "You have not configured TTMultiProvider, please refer to the access documentation, otherwise it will affect the conversion");
        }
        q.e("TTAdSdk-InitChecker", "End the check of whether TTMultiProvider and FileProvider are registered in AndroidManifest");
        return z2;
    }

    private static String b(Context context) {
        ActivityManager.RunningAppProcessInfo next;
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return "unknown";
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = activityManager.getRunningAppProcesses().iterator();
            do {
                if (!it2.hasNext()) {
                    return "unknown";
                }
                next = it2.next();
            } while (next.pid != myPid);
            return next.processName;
        } catch (Throwable th) {
            return "unknown";
        }
    }

    private static List<String> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList.add("android.permission.WAKE_LOCK");
        return arrayList;
    }
}
