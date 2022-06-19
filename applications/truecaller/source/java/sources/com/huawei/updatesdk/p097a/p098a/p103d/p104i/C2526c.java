package com.huawei.updatesdk.p097a.p098a.p103d.p104i;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.huawei.android.app.PackageManagerEx;
import com.huawei.system.BuildEx;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.C2518c;
import com.huawei.updatesdk.p097a.p098a.p103d.C2521f;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p121h.C2569a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.a.d.i.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/c.class */
public class C2526c {

    /* renamed from: d */
    private static int f8201d = -1;

    /* renamed from: a */
    private int f8207a;

    /* renamed from: b */
    private int f8208b;

    /* renamed from: e */
    private static C2526c f8202e = new C2526c();

    /* renamed from: f */
    private static String f8203f = null;

    /* renamed from: c */
    public static final String f8200c = m36793a("ro.product.brand", "");

    /* renamed from: g */
    public static final boolean f8204g = m36792a("hw_sc.product.useBrandCust", false);

    /* renamed from: h */
    public static final int f8205h = m36794a("hw_sc.build.os.apiversion", 0);

    /* renamed from: i */
    public static final String f8206i = m36776g();

    private C2526c() {
        this.f8207a = 0;
        this.f8208b = 0;
        if (m36794a("ro.maple.enable", 0) == 1) {
            this.f8207a = 1;
        }
        this.f8208b = m36794a("ro.build.version.ark", 0);
    }

    /* renamed from: a */
    public static int m36794a(String str, int i) {
        try {
            return ((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, str, Integer.valueOf(i))).intValue();
        } catch (Throwable th) {
            C2515a.m36848a("DeviceUtil", "Exception while getting system property: ", th);
            return i;
        }
    }

    /* renamed from: a */
    public static String m36799a(Context context) {
        if (f8203f == null) {
            ArrayList arrayList = new ArrayList();
            m36797a(context, arrayList);
            m36790a(arrayList);
            f8203f = C2521f.m36825a(arrayList, ",");
        }
        return f8203f;
    }

    /* renamed from: a */
    public static String m36798a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 16).versionName + "";
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: a */
    public static String m36793a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Throwable th) {
            C2515a.m36848a("DeviceUtil", "Exception while getting system property: ", th);
            return str2;
        }
    }

    /* renamed from: a */
    public static List<String> m36789a(List<String> list, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!m36791a(str, strArr)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m36797a(Context context, List<String> list) {
        m36788a(context.getPackageManager().getSystemAvailableFeatures(), list);
    }

    /* renamed from: a */
    private static void m36790a(List<String> list) {
        try {
            m36788a(PackageManagerEx.getHwSystemAvailableFeatures(), list);
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("initHwDeviceFeatures: ");
            m8728C.append(th.toString());
            C2515a.m36846c("DeviceUtil", m8728C.toString());
        }
    }

    /* renamed from: a */
    private static void m36788a(FeatureInfo[] featureInfoArr, List<String> list) {
        if (featureInfoArr != null) {
            for (FeatureInfo featureInfo : featureInfoArr) {
                String str = featureInfo.name;
                if (str != null) {
                    list.add(C2518c.m36839a(str));
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m36795a(String str) {
        try {
            return PackageManagerEx.hasHwSystemFeature(str);
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m36792a(String str, boolean z) {
        try {
            return ((Boolean) Class.forName("android.os.SystemProperties").getMethod("getBoolean", String.class, Boolean.TYPE).invoke(null, str, Boolean.valueOf(z))).booleanValue();
        } catch (Throwable th) {
            C2515a.m36848a("DeviceUtil", "Exception while getting system property: ", th);
            return z;
        }
    }

    /* renamed from: a */
    public static boolean m36791a(String str, String[] strArr) {
        int i;
        int i2;
        int length = strArr.length;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i6 < length) {
            String str2 = strArr[i6];
            if (str2.startsWith("config.")) {
                i2 = 1;
                i = i3;
            } else {
                i2 = i5;
                i = i3;
                if (!str2.contains(".config.")) {
                    i = i3 + 1;
                    i2 = i5;
                }
            }
            int i7 = i4;
            if (str2.endsWith("config." + str)) {
                i7 = i4 + 1;
            }
            i6++;
            i5 = i2;
            i3 = i;
            i4 = i7;
        }
        if (i5 + i3 == i4) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private static DisplayMetrics m36786b(Context context) {
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        DisplayMetrics displayMetrics = null;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            displayMetrics = null;
            if (defaultDisplay != null) {
                displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
            }
        }
        return displayMetrics;
    }

    /* renamed from: b */
    public static String m36785b(Context context, String str) {
        int i;
        String m36798a = m36798a(context, str);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= m36798a.length() || i >= 3) {
                break;
            }
            int i4 = i;
            if (m36798a.charAt(i2) == '.') {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        String str2 = m36798a;
        if (3 == i) {
            str2 = m36798a.substring(0, i2 - 1);
        }
        return str2;
    }

    /* renamed from: c */
    public static String m36784c() {
        try {
            Object obj = Class.forName("com.huawei.system.BuildEx").getField("DISPLAY").get(null);
            return obj == null ? Build.DISPLAY : obj.toString();
        } catch (Throwable th) {
            return Build.DISPLAY;
        }
    }

    /* renamed from: c */
    public static List<String> m36783c(Context context) {
        ArrayList arrayList = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        Configuration configuration = context.getResources().getConfiguration();
        if (i >= 24) {
            LocaleList locales = configuration.getLocales();
            for (int i2 = 0; i2 < locales.size(); i2++) {
                String language = locales.get(i2).getLanguage();
                if (!TextUtils.isEmpty(language) && !arrayList.contains(language)) {
                    arrayList.add(language);
                }
            }
        } else {
            arrayList.add(configuration.locale.getLanguage());
        }
        return arrayList;
    }

    /* renamed from: d */
    public static int m36782d() {
        int i = f8201d;
        if (i >= 0) {
            return i;
        }
        Context m36757a = C2530a.m36754c().m36757a();
        f8201d = m36767k(m36757a) ? 1 : m36765l(m36757a) ? 2 : m36773h(m36757a) ? 3 : m36766l() ? 4 : m36771i(m36757a) ? 7 : 0;
        return f8201d;
    }

    /* renamed from: d */
    public static String m36781d(Context context) {
        DisplayMetrics m36786b = m36786b(context);
        return m36786b != null ? C22128a.m8725C2(String.valueOf(m36786b.widthPixels), AnalyticsConstants.DELIMITER_MAIN, String.valueOf(m36786b.heightPixels)) : "";
    }

    /* renamed from: e */
    public static C2526c m36780e() {
        return f8202e;
    }

    /* renamed from: e */
    public static String m36779e(Context context) {
        DisplayMetrics m36786b = m36786b(context);
        return m36786b != null ? String.valueOf(m36786b.densityDpi) : "";
    }

    /* renamed from: f */
    public static int m36777f(Context context) {
        try {
            return Integer.parseInt(context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionCode + "");
        } catch (Exception e) {
            return 1;
        }
    }

    /* renamed from: f */
    public static String m36778f() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        String script = locale.getScript();
        return (!TextUtils.isEmpty(script) || !TextUtils.isEmpty(variant)) ? C22128a.m8618h(C22128a.m8688M(language, AnalyticsConstants.DELIMITER_MAIN, script, AnalyticsConstants.DELIMITER_MAIN, country), AnalyticsConstants.DELIMITER_MAIN, variant) : C22128a.m8725C2(language, AnalyticsConstants.DELIMITER_MAIN, country);
    }

    /* renamed from: g */
    private static String m36776g() {
        try {
            return BuildEx.getOsBrand();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    public static String m36775g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName + "";
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: h */
    private static boolean m36773h(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    /* renamed from: h */
    public static String[] m36774h() {
        String[] strArr = Build.SUPPORTED_ABIS;
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = new String[0];
        }
        return strArr2;
    }

    /* renamed from: i */
    public static int m36772i() {
        return m36793a("ro.product.cpu.abi", "").contains("arm64") ? 2 : 1;
    }

    /* renamed from: i */
    private static boolean m36771i(Context context) {
        return context.getPackageManager().hasSystemFeature("com.huawei.software.features.car");
    }

    /* renamed from: j */
    public static String m36770j() {
        String str;
        String str2;
        String str3;
        Locale locale = Locale.getDefault();
        if (locale != null) {
            str2 = locale.getLanguage();
            str = locale.getScript();
            str3 = locale.getCountry();
        } else {
            str2 = "en";
            str = "";
            str3 = "US";
        }
        return TextUtils.isEmpty(str) ? C22128a.m8725C2(str2, AnalyticsConstants.DELIMITER_MAIN, str3) : C22128a.m8717E2(str2, AnalyticsConstants.DELIMITER_MAIN, str, AnalyticsConstants.DELIMITER_MAIN, str3);
    }

    /* renamed from: j */
    public static boolean m36769j(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getPackageInfo("com.google.android.gsf.login", 16);
            packageManager.getPackageInfo("com.google.android.gsf", 16);
            return (packageManager.getPackageInfo("com.google.android.gms", 16).applicationInfo.flags & 1) != 0;
        } catch (Exception e) {
            C2515a.m36845d("DeviceUtil", e.getMessage());
            return false;
        }
    }

    /* renamed from: k */
    public static boolean m36768k() {
        return C2569a.m36595f().m36601a() > 0 || C2569a.m36595f().m36599b() > 0;
    }

    /* renamed from: k */
    private static boolean m36767k(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        StringBuilder m8728C = C22128a.m8728C("UI mode: ");
        m8728C.append(uiModeManager.getCurrentModeType());
        C2511a.m36862b("DeviceUtil", m8728C.toString());
        return uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: l */
    private static boolean m36766l() {
        return m36795a("com.huawei.software.features.kidpad");
    }

    /* renamed from: l */
    private static boolean m36765l(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    /* renamed from: a */
    public int m36800a() {
        return this.f8207a;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058 A[Catch: all -> 0x0096, TRY_ENTER, TryCatch #0 {all -> 0x0096, blocks: (B:10:0x001e, B:12:0x0026, B:15:0x002d, B:18:0x003f, B:21:0x004e, B:25:0x0058, B:27:0x0073), top: B:31:0x001e }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m36796a(android.view.Window r8) {
        /*
            r7 = this;
            com.huawei.updatesdk.b.h.a r0 = com.huawei.updatesdk.p111b.p121h.C2569a.m36595f()
            int r0 = r0.m36601a()
            r1 = 21
            if (r0 >= r1) goto L14
            com.huawei.updatesdk.b.h.a r0 = com.huawei.updatesdk.p111b.p121h.C2569a.m36595f()
            int r0 = r0.m36599b()
            if (r0 <= 0) goto L18
        L14:
            r0 = r8
            if (r0 != 0) goto L19
        L18:
            return
        L19:
            r0 = r8
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            r9 = r0
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L96
            r1 = 28
            if (r0 < r1) goto L2b
            r0 = r9
            r1 = 1
            r0.layoutInDisplayCutoutMode = r1     // Catch: java.lang.Throwable -> L96
        L2b:
            r0 = 0
            r8 = r0
            com.huawei.updatesdk.b.h.a r0 = com.huawei.updatesdk.p111b.p121h.C2569a.m36595f()     // Catch: java.lang.Throwable -> L96
            int r0 = r0.m36601a()     // Catch: java.lang.Throwable -> L96
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L3f
            java.lang.String r0 = "com.huawei.android.view.WindowManagerEx$LayoutParamsEx"
            r8 = r0
            goto L4e
        L3f:
            com.huawei.updatesdk.b.h.a r0 = com.huawei.updatesdk.p111b.p121h.C2569a.m36595f()     // Catch: java.lang.Throwable -> L96
            int r0 = r0.m36599b()     // Catch: java.lang.Throwable -> L96
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L53
            java.lang.String r0 = "com.hihonor.android.view.WindowManagerEx$LayoutParamsEx"
            r8 = r0
        L4e:
            r0 = r8
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L96
            r8 = r0
        L53:
            r0 = r8
            if (r0 != 0) goto L58
            return
        L58:
            r0 = r8
            r1 = 1
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L96
            r2 = r1
            r3 = 0
            java.lang.Class<android.view.WindowManager$LayoutParams> r4 = android.view.WindowManager.LayoutParams.class
            r2[r3] = r4     // Catch: java.lang.Throwable -> L96
            java.lang.reflect.Constructor r0 = r0.getConstructor(r1)     // Catch: java.lang.Throwable -> L96
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L96
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4     // Catch: java.lang.Throwable -> L96
            java.lang.Object r0 = r0.newInstance(r1)     // Catch: java.lang.Throwable -> L96
            r9 = r0
            r0 = r8
            java.lang.String r1 = "setDisplaySideMode"
            r2 = 1
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L96
            r3 = r2
            r4 = 0
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L96
            r3[r4] = r5     // Catch: java.lang.Throwable -> L96
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.Throwable -> L96
            r1 = r9
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L96
            r3 = r2
            r4 = 0
            r5 = 1
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L96
            r3[r4] = r5     // Catch: java.lang.Throwable -> L96
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L96
            goto Lb0
        L96:
            r8 = move-exception
            java.lang.String r0 = "setWindowDisplaySideMode exception: "
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r9 = r0
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "DeviceUtil"
            r1 = r9
            java.lang.String r1 = r1.toString()
            com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a.m36847b(r0, r1)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c.m36796a(android.view.Window):void");
    }

    /* renamed from: b */
    public int m36787b() {
        return this.f8208b;
    }
}
