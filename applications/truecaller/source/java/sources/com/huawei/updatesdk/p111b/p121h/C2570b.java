package com.huawei.updatesdk.p111b.p121h;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p117d.C2555d;
import com.huawei.updatesdk.p111b.p120g.C2567c;
import java.io.File;
import java.lang.reflect.Field;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.h.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/h/b.class */
public class C2570b {

    /* renamed from: a */
    private static Integer f8284a;

    /* renamed from: b */
    private static boolean f8285b = false;

    /* renamed from: c */
    private static boolean f8286c = false;

    /* renamed from: d */
    private static Field f8287d;

    /* renamed from: com.huawei.updatesdk.b.h.b$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/h/b$b.class */
    public static class RunnableC2572b implements Runnable {
        private RunnableC2572b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2515a.m36849a("PackageManagerRunnable", "PackageManagerRunnable run!!!!");
            AbstractC2519d.m36837a(new File(C2555d.m36638b()));
        }
    }

    /* renamed from: a */
    private static int m36591a(Context context, String str) {
        int i;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getAgMetaData appgallery_support_function : ");
            m8728C.append(e.toString());
            C2511a.m36863a("PackageUtils", m8728C.toString());
        }
        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("appgallery_support_function")) {
            i = bundle.getInt("appgallery_support_function");
            return i;
        }
        i = 0;
        return i;
    }

    /* renamed from: a */
    public static int m36589a(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if ((applicationInfo.flags & 1) == 0) {
            return 0;
        }
        return m36590a(applicationInfo) ? 1 : 2;
    }

    /* renamed from: a */
    public static PackageInfo m36587a(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64);
        } catch (Exception e) {
            C2515a.m36845d("PackageUtils", "not found: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static void m36592a() {
        C2567c.f8275a.execute(new RunnableC2572b());
    }

    /* renamed from: a */
    private static boolean m36590a(ApplicationInfo applicationInfo) {
        StringBuilder sb;
        String str;
        int i = applicationInfo.flags;
        Integer m36583c = m36583c();
        if (m36583c == null || (i & m36583c.intValue()) == 0) {
            Field m36586b = m36586b();
            if (m36586b == null) {
                return false;
            }
            try {
                return (m36586b.getInt(applicationInfo) & 33554432) != 0;
            } catch (IllegalAccessException e) {
                sb = C22128a.m8728C("can not get hwflags");
                str = e.toString();
                sb.append(str);
                C2515a.m36849a("PackageUtils", sb.toString());
                return false;
            } catch (IllegalArgumentException e2) {
                sb = C22128a.m8728C("can not get hwflags");
                str = e2.toString();
                sb.append(str);
                C2515a.m36849a("PackageUtils", sb.toString());
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
        if (r7 != null) goto L49;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m36588a(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.p111b.p121h.C2570b.m36588a(java.lang.String):boolean");
    }

    /* renamed from: b */
    public static int m36584b(String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageInfo packageInfo = C2530a.m36754c().m36757a().getPackageManager().getPackageInfo(str, 128);
            return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("com.huawei.maple.flag")) ? 0 : 1;
        } catch (Exception e) {
            C2515a.m36845d("PackageUtils", "getMapleStatus not found: " + str);
            return 0;
        }
    }

    /* renamed from: b */
    public static String m36585b(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e) {
            C2511a.m36862b("PackageUtils", "can not find installer pkg." + str);
            str2 = null;
        }
        C2515a.m36846c("PackageUtils", "installer pkg: " + str2);
        return str2;
    }

    /* renamed from: b */
    public static Field m36586b() {
        if (f8286c) {
            return f8287d;
        }
        try {
            f8287d = ApplicationInfo.class.getField("hwFlags");
        } catch (NoSuchFieldException e) {
            C2515a.m36849a("PackageUtils", "can not find hwFlags");
        }
        f8286c = true;
        return f8287d;
    }

    /* renamed from: c */
    public static int m36582c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            C2511a.m36862b("PackageUtils", "pkgName: " + str + ", versionCode: " + packageInfo.versionCode + ", versionName: " + packageInfo.versionName);
            return packageInfo.versionCode;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getVersioncode:");
            m8728C.append(e.toString());
            C2515a.m36845d("PackageUtils", m8728C.toString());
            return 0;
        }
    }

    /* renamed from: c */
    public static Integer m36583c() {
        String str;
        StringBuilder sb;
        String str2;
        if (f8285b) {
            return f8284a;
        }
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            f8284a = Integer.valueOf(cls.getDeclaredField("PARSE_IS_REMOVABLE_PREINSTALLED_APK").getInt(cls));
        } catch (ClassNotFoundException e) {
            sb = C22128a.m8728C("isDelApp error ClassNotFoundException:");
            str2 = e.toString();
            sb.append(str2);
            str = sb.toString();
            C2515a.m36849a("PackageUtils", str);
            f8285b = true;
            return f8284a;
        } catch (IllegalAccessException e2) {
            sb = C22128a.m8728C("isDelApp error IllegalAccessException:");
            str2 = e2.toString();
            sb.append(str2);
            str = sb.toString();
            C2515a.m36849a("PackageUtils", str);
            f8285b = true;
            return f8284a;
        } catch (IllegalArgumentException e3) {
            sb = C22128a.m8728C("isDelApp error IllegalArgumentException:");
            str2 = e3.toString();
            sb.append(str2);
            str = sb.toString();
            C2515a.m36849a("PackageUtils", str);
            f8285b = true;
            return f8284a;
        } catch (NoSuchFieldException e4) {
            sb = C22128a.m8728C("isDelApp error NoSuchFieldException:");
            str2 = e4.toString();
            sb.append(str2);
            str = sb.toString();
            C2515a.m36849a("PackageUtils", str);
            f8285b = true;
            return f8284a;
        } catch (Exception e5) {
            str = e5.toString();
            C2515a.m36849a("PackageUtils", str);
            f8285b = true;
            return f8284a;
        }
        f8285b = true;
        return f8284a;
    }

    /* renamed from: d */
    public static boolean m36581d(Context context, String str) {
        return m36582c(context, str) > 0;
    }

    /* renamed from: e */
    public static boolean m36580e(Context context, String str) {
        int m36591a = m36591a(context, str);
        C2511a.m36862b("PackageUtils", "UpdateSDK ag_support_function = " + m36591a);
        boolean z = (m36591a & 2) == 2;
        C2511a.m36862b("PackageUtils", "UpdateSDK isMetaDataSupport = " + z);
        return z;
    }

    /* renamed from: f */
    public static boolean m36579f(Context context, String str) {
        return m36582c(context, str) >= 70203000 && m36578g(context, str);
    }

    /* renamed from: g */
    private static boolean m36578g(Context context, String str) {
        Intent intent = new Intent("com.huawei.appmarket.intent.action.ThirdUpdateAction");
        intent.setPackage(str);
        boolean z = false;
        try {
            if (context.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("isSupportToHiApp: ");
            m8728C.append(e.toString());
            C2511a.m36862b("PackageUtils", m8728C.toString());
            return false;
        }
    }
}
