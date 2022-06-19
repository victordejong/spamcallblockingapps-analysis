package com.huawei.hms.hatool;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.InvocationTargetException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/f.class */
public abstract class AbstractC2357f {

    /* renamed from: com.huawei.hms.hatool.f$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/f$a.class */
    public static class C2358a extends Exception {
        public C2358a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    public static Object m37720a(Class cls, String str, Class[] clsArr, Object[] objArr) {
        String str2;
        if (cls != null) {
            if (clsArr == null) {
                if (objArr != null) {
                    throw new C2358a("paramsType is null, but params is not null");
                }
            } else if (objArr == null) {
                throw new C2358a("paramsType or params should be same");
            } else {
                if (clsArr.length != objArr.length) {
                    StringBuilder m8728C = C22128a.m8728C("paramsType len:");
                    m8728C.append(clsArr.length);
                    m8728C.append(" should equal params.len:");
                    m8728C.append(objArr.length);
                    throw new C2358a(m8728C.toString());
                }
            }
            try {
                try {
                    return cls.getMethod(str, clsArr).invoke(null, objArr);
                } catch (IllegalAccessException e) {
                    str2 = "invokeStaticFun(): method invoke Exception!";
                    C2398y.m37469f("hmsSdk", str2);
                    return null;
                } catch (IllegalArgumentException e2) {
                    str2 = "invokeStaticFun(): Illegal Argument!";
                    C2398y.m37469f("hmsSdk", str2);
                    return null;
                } catch (InvocationTargetException e3) {
                    str2 = "invokeStaticFun(): Invocation Target Exception!";
                    C2398y.m37469f("hmsSdk", str2);
                    return null;
                }
            } catch (NoSuchMethodException e4) {
                C2398y.m37469f("hmsSdk", "invokeStaticFun(): cls.getMethod(),No Such Method !");
                return null;
            }
        }
        throw new C2358a("class is null in invokeStaticFun");
    }

    /* renamed from: a */
    public static Object m37717a(String str, String str2, Class[] clsArr, Object[] objArr) {
        String str3;
        try {
            return m37720a(Class.forName(str), str2, clsArr, objArr);
        } catch (C2358a e) {
            str3 = "invokeStaticFun(): Static function call Exception ";
            C2398y.m37469f("hmsSdk", str3);
            return null;
        } catch (ClassNotFoundException e2) {
            str3 = "invokeStaticFun() Not found class!";
            C2398y.m37469f("hmsSdk", str3);
            return null;
        }
    }

    /* renamed from: a */
    public static String m37722a() {
        return m37719a("ro.build.version.emui", "");
    }

    /* renamed from: a */
    public static String m37721a(Context context) {
        return context == null ? "" : Settings.Secure.getString(context.getContentResolver(), AnalyticsConstants.ANDROID_ID);
    }

    /* renamed from: a */
    public static String m37719a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        String m37718a = m37718a("android.os.SystemProperties", str, str2);
        String str3 = m37718a;
        if (TextUtils.isEmpty(m37718a)) {
            str3 = m37718a("com.huawei.android.os.SystemPropertiesEx", str, str2);
        }
        return str3;
    }

    /* renamed from: a */
    public static String m37718a(String str, String str2, String str3) {
        Object m37717a = m37717a(str, "get", new Class[]{String.class, String.class}, new Object[]{str2, str3});
        if (m37717a != null) {
            str3 = (String) m37717a;
        }
        return str3;
    }

    /* renamed from: b */
    public static String m37716b() {
        String m37718a = m37718a("com.huawei.android.os.SystemPropertiesEx", "ro.huawei.build.display.id", "");
        C2398y.m37473c("hmsSdk", "SystemPropertiesEx: get rom_ver: " + m37718a);
        String str = m37718a;
        if (TextUtils.isEmpty(m37718a)) {
            str = Build.DISPLAY;
            C2398y.m37473c("hmsSdk", "SystemProperties: get rom_ver: " + str);
        }
        return str;
    }

    /* renamed from: b */
    public static String m37715b(Context context) {
        String str;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            str = "Unknown";
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                str = "Unknown";
                if (bundle != null) {
                    Object obj = bundle.get("CHANNEL");
                    str = "Unknown";
                    if (obj != null) {
                        str = obj.toString();
                        if (str.length() > 256) {
                            str = "Unknown";
                        }
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            C2398y.m37469f("hmsSdk", "getChannel(): The packageName is not correct!");
            str = "Unknown";
        }
        return str;
    }

    /* renamed from: c */
    public static String m37714c(Context context) {
        return context == null ? "" : context.getPackageName();
    }

    /* renamed from: d */
    public static String m37713d(Context context) {
        String str;
        if (context == null) {
            return "";
        }
        try {
            str = context.getPackageManager().getPackageInfo(m37714c(context), 16384).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            C2398y.m37469f("hmsSdk", "getVersion(): The package name is not correct!");
            str = "";
        }
        return str;
    }
}
