package com.huawei.hms.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/android/SystemUtils.class */
public class SystemUtils {
    /* renamed from: a */
    public static String m38174a() {
        return getSystemProperties("ro.product.locale", "");
    }

    /* renamed from: b */
    public static String m38173b() {
        return getSystemProperties("ro.product.locale.region", "");
    }

    public static String getLocalCountry() {
        Locale locale = Locale.getDefault();
        return locale != null ? locale.getCountry() : "";
    }

    public static String getNetType(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? "" : activeNetworkInfo.getTypeName();
    }

    public static String getSystemProperties(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            HMSLog.m37195e("SystemUtils", "An exception occurred while reading: getSystemProperties:" + str);
            return str2;
        }
    }

    public static boolean isChinaROM() {
        String m38173b = m38173b();
        if (!TextUtils.isEmpty(m38173b)) {
            return "cn".equalsIgnoreCase(m38173b);
        }
        String m38174a = m38174a();
        if (!TextUtils.isEmpty(m38174a)) {
            return m38174a.toLowerCase(Locale.US).contains("cn");
        }
        String localCountry = getLocalCountry();
        if (TextUtils.isEmpty(localCountry)) {
            return false;
        }
        return "cn".equalsIgnoreCase(localCountry);
    }

    public static boolean isEMUI() {
        StringBuilder m8728C = C22128a.m8728C("is Emui :");
        int i = HwBuildEx.VERSION.EMUI_SDK_INT;
        m8728C.append(i);
        HMSLog.m37193i("SystemUtils", m8728C.toString());
        return i > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSystemApp(android.content.Context r4, java.lang.String r5) {
        /*
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.RuntimeException -> Lf android.content.pm.PackageManager.NameNotFoundException -> L31
            r1 = r5
            r2 = 16384(0x4000, float:2.2959E-41)
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: java.lang.RuntimeException -> Lf android.content.pm.PackageManager.NameNotFoundException -> L31
            r4 = r0
            goto L52
        Lf:
            r4 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "isSystemApp RuntimeException:"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "SystemUtils"
            r1 = r5
            java.lang.String r1 = r1.toString()
            com.huawei.hms.support.log.HMSLog.m37195e(r0, r1)
            goto L50
        L31:
            r5 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "isSystemApp Exception: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "SystemUtils"
            r1 = r4
            java.lang.String r1 = r1.toString()
            com.huawei.hms.support.log.HMSLog.m37195e(r0, r1)
        L50:
            r0 = 0
            r4 = r0
        L52:
            r0 = 1
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L67
            r0 = r4
            android.content.pm.ApplicationInfo r0 = r0.applicationInfo
            int r0 = r0.flags
            r1 = 1
            r0 = r0 & r1
            if (r0 <= 0) goto L67
            goto L69
        L67:
            r0 = 0
            r6 = r0
        L69:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.android.SystemUtils.isSystemApp(android.content.Context, java.lang.String):boolean");
    }

    public static boolean isTVDevice() {
        return getSystemProperties("ro.build.characteristics", "default").equalsIgnoreCase("tv");
    }
}
