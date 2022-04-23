package p131c.p396i.p397a.p417j;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Locale;
import p131c.p396i.p397a.C6489a;
/* renamed from: c.i.a.j.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/j/d.class */
public class C6617d {

    /* renamed from: a */
    public static String f20430a;

    /* renamed from: b */
    public static String f20431b = "";

    /* renamed from: c */
    public static String f20432c = "";

    /* renamed from: a */
    public static int m20356a(int i) {
        int i2 = -101;
        if (i != -101) {
            i2 = -1;
            if (i != -1) {
                switch (i) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 2;
                    case 13:
                        return 3;
                    default:
                        return 0;
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static Object m20354a(Object obj, String str) {
        Field field;
        if (obj == null) {
            return null;
        }
        try {
            Class<?> cls = obj.getClass();
            while (true) {
                if (cls == Object.class) {
                    field = null;
                    break;
                }
                try {
                    field = cls.getDeclaredField(str);
                    break;
                } catch (Exception e) {
                    cls = cls.getSuperclass();
                }
            }
            if (field == null) {
                String str2 = obj + "not found " + str;
                return null;
            }
            boolean isAccessible = field.isAccessible();
            if (!isAccessible) {
                field.setAccessible(true);
            }
            Object obj2 = field.get(obj);
            if (!isAccessible) {
                field.setAccessible(false);
            }
            return obj2;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m20353a(Object obj, Type type) {
        Field[] declaredFields;
        if (obj == null) {
            return null;
        }
        for (Field field : obj.getClass().getDeclaredFields()) {
            if (field.getType().equals(type)) {
                try {
                    boolean isAccessible = field.isAccessible();
                    if (!isAccessible) {
                        field.setAccessible(true);
                    }
                    T t = (T) field.get(obj);
                    if (!isAccessible) {
                        field.setAccessible(false);
                    }
                    return t;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m20357a() {
        return Settings.System.getString(C6489a.m20718b().getContentResolver(), "android_id");
    }

    /* renamed from: a */
    public static String m20355a(Context context) {
        AdvertisingIdClient.Info advertisingIdInfo;
        if (!TextUtils.isEmpty(f20430a)) {
            return f20430a;
        }
        if (!m20342f(C6489a.m20718b())) {
            return "";
        }
        try {
            if (Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient") == null || (advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context)) == null) {
                return null;
            }
            String id = advertisingIdInfo.getId();
            f20430a = id;
            return id;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static <T> void m20352a(Object obj, Type type, T t) {
        Field[] declaredFields;
        if (obj != null) {
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (field.getType().equals(type)) {
                    try {
                        boolean isAccessible = field.isAccessible();
                        if (!isAccessible) {
                            field.setAccessible(true);
                        }
                        field.set(obj, t);
                        if (!isAccessible) {
                            field.setAccessible(false);
                        }
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public static int m20351b() {
        PackageInfo h = m20340h();
        return h != null ? h.versionCode : -1;
    }

    /* renamed from: b */
    public static String m20350b(Context context) {
        return f20431b;
    }

    /* renamed from: c */
    public static String m20349c() {
        PackageInfo h = m20340h();
        return h != null ? h.versionName : null;
    }

    /* renamed from: c */
    public static String m20348c(Context context) {
        return f20432c;
    }

    /* renamed from: d */
    public static String m20347d() {
        TelephonyManager telephonyManager = (TelephonyManager) C6489a.m20718b().getSystemService("phone");
        String simCountryIso = telephonyManager.getSimCountryIso();
        String str = simCountryIso;
        if (TextUtils.isEmpty(simCountryIso)) {
            str = telephonyManager.getNetworkCountryIso();
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = Locale.getDefault().getCountry();
        }
        return str2 != null ? str2.toUpperCase() : "";
    }

    /* renamed from: d */
    public static String m20346d(Context context) {
        if (context == null) {
            return null;
        }
        String str = null;
        if (Build.VERSION.SDK_INT >= 3) {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            str = null;
            if (launchIntentForPackage != null) {
                str = null;
                if (launchIntentForPackage.getComponent() != null) {
                    str = launchIntentForPackage.getComponent().getClassName();
                }
            }
        }
        return str;
    }

    /* renamed from: e */
    public static String m20345e() {
        String str;
        int g = m20341g();
        if (g != -101) {
            str = "NULL";
            if (g != -1) {
                str = g != 0 ? g != 1 ? g != 2 ? g != 3 ? "NULL" : "4G" : "3G" : "2G" : "UNKNOWN";
            }
        } else {
            str = "WIFI";
        }
        return str;
    }

    /* renamed from: e */
    public static String m20344e(Context context) {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    /* renamed from: f */
    public static String m20343f() {
        return "";
    }

    /* renamed from: f */
    public static boolean m20342f(Context context) {
        if (context == null) {
            return false;
        }
        return context.getPackageName().equals(m20344e(context));
    }

    /* renamed from: g */
    public static int m20341g() {
        int i;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C6489a.m20718b().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || !activeNetworkInfo.isConnected()) {
                i = -1;
            } else {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    i = -101;
                } else {
                    i = 0;
                    if (type == 0) {
                        i = ((TelephonyManager) C6489a.m20718b().getSystemService("phone")).getNetworkType();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        return m20356a(i);
    }

    /* renamed from: h */
    public static PackageInfo m20340h() {
        PackageInfo packageInfo;
        try {
            packageInfo = C6489a.m20718b().getPackageManager().getPackageInfo(m20339i(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo;
    }

    /* renamed from: i */
    public static String m20339i() {
        return C6489a.m20718b().getPackageName();
    }

    /* renamed from: j */
    public static String m20338j() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: k */
    public static int m20337k() {
        return 1901291619;
    }

    /* renamed from: l */
    public static String m20336l() {
        return "4.4.0";
    }

    /* renamed from: m */
    public static String m20335m() {
        return Build.MODEL;
    }
}
