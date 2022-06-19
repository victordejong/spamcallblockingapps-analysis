package com.huawei.updatesdk.p097a.p098a.p103d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.android.content.pm.ApplicationInfoEx;
import com.huawei.ohos.localability.BundleAdapter;
import com.huawei.ohos.localability.base.BundleInfo;
import com.huawei.ohos.localability.base.DeviceInfo;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p121h.C2570b;
import java.lang.reflect.Field;
import java.util.Optional;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.a.d.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/e.class */
public class C2520e {

    /* renamed from: a */
    private static boolean f8188a = false;

    /* renamed from: b */
    private static boolean f8189b = false;

    /* renamed from: a */
    public static PackageInfo m36833a(PackageInfo packageInfo) {
        if (!m36827d()) {
            return packageInfo;
        }
        BundleInfo m36832a = m36832a(packageInfo.packageName);
        if (m36832a != null) {
            packageInfo.versionName = m36832a.getVersionName();
            packageInfo.versionCode = m36832a.getVersionCode();
            packageInfo.applicationInfo.targetSdkVersion = m36830b(packageInfo.packageName);
            if (m36832a.isMultiFrameworkBundle()) {
                packageInfo.baseRevisionCode = packageInfo.versionCode;
            }
        }
        return packageInfo;
    }

    /* renamed from: a */
    private static BundleInfo m36832a(String str) {
        try {
            if (!m36827d() || Build.VERSION.SDK_INT < 24) {
                return null;
            }
            Optional bundleInfo = BundleAdapter.getBundleInfo(str, 0);
            if (!bundleInfo.isPresent()) {
                return null;
            }
            return (BundleInfo) bundleInfo.get();
        } catch (Throwable th) {
            StringBuilder m8692L = C22128a.m8692L("get BundleInfo exception, pkg:", str, ", e:");
            m8692L.append(th.toString());
            C2511a.m36863a("HarmonyUtils", m8692L.toString());
            return null;
        }
    }

    /* renamed from: a */
    private static DeviceInfo m36835a() {
        DeviceInfo deviceInfo;
        try {
            deviceInfo = BundleAdapter.getDeviceInfo();
        } catch (Throwable th) {
            C2511a.m36863a("HarmonyDeviceInfo", "get DeviceInfo fail");
            deviceInfo = null;
        }
        return deviceInfo;
    }

    /* renamed from: a */
    private static boolean m36834a(Context context, String str) {
        boolean z = false;
        try {
            Class<?> cls = Class.forName("android.content.pm.AbsApplicationInfo");
            Field declaredField = cls.getDeclaredField("PARSE_IS_ZIDANE_APK");
            PackageInfo m36587a = C2570b.m36587a(str, context);
            ApplicationInfo applicationInfo = null;
            if (m36587a != null) {
                applicationInfo = m36587a.applicationInfo;
            }
            if (applicationInfo != null) {
                int hwFlags = new ApplicationInfoEx(applicationInfo).getHwFlags();
                int i = declaredField.getInt(cls);
                if ((hwFlags & i) == i) {
                    z = true;
                }
                return z;
            }
            C2511a.m36861c("HarmonyUtils", "applicationInfo is null for pkg: " + str);
            return false;
        } catch (Throwable th) {
            StringBuilder m8692L = C22128a.m8692L("isHarmonyByHwFlag exception for pkg: ", str, ", throwable : ");
            m8692L.append(th.toString());
            C2511a.m36863a("HarmonyUtils", m8692L.toString());
            return false;
        }
    }

    /* renamed from: b */
    public static int m36830b(String str) {
        int i;
        try {
        } catch (Throwable th) {
            C2511a.m36863a("HarmonyUtils", "getHarmonySdkVersionInfo fail");
        }
        if (m36827d()) {
            Pair sdkVersionInfo = BundleAdapter.getSdkVersionInfo(str);
            if (sdkVersionInfo != null) {
                i = ((Integer) sdkVersionInfo.second).intValue();
                return i;
            }
            C2511a.m36863a("HarmonyUtils", "pair is null getHarmonySdkVersionInfo fail");
        }
        i = 0;
        return i;
    }

    /* renamed from: b */
    public static String m36831b() {
        DeviceInfo m36835a;
        return (m36827d() && (m36835a = m36835a()) != null) ? m36835a.getDeviceType() : "";
    }

    /* renamed from: c */
    private static boolean m36829c() {
        try {
            new BundleAdapter();
            return true;
        } catch (Throwable th) {
            C2511a.m36863a("HarmonyUtils", "not Integrate HarmonySdk ");
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m36828c(String str) {
        if (!m36827d() || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return BundleAdapter.isHarmonyApp(str);
        } catch (Throwable th) {
            C2511a.m36863a("HarmonyUtils", "get isHarmonyApp fail");
            return false;
        }
    }

    /* renamed from: d */
    private static boolean m36827d() {
        if (!f8189b) {
            f8188a = m36834a(C2530a.m36754c().m36757a(), C2530a.m36754c().m36757a().getPackageName()) && m36829c();
            f8189b = true;
        }
        return f8188a;
    }
}
