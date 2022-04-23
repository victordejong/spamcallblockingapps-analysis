package com.tmobile.services.nameid.utility;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DeviceInfoUtils.class */
public class DeviceInfoUtils {
    private DeviceInfoUtils() {
        throw new IllegalAccessError("This is a utility class, no need to create it");
    }

    /* renamed from: a */
    public static String m5763a(String str) {
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        try {
            boolean P = PhoneNumberUtil.m7999t().m8042P(PhoneNumberUtil.m7999t().m8026c0(g, m5757g()));
            String str2 = str;
            if (g.length() >= 4) {
                str2 = str;
                if (P) {
                    str2 = str + g.substring(g.length() - 4, g.length());
                }
            }
            return str2;
        } catch (Exception e) {
            LogUtil.m5641f("DeviceInfoUtils#", "error parsing phone number", e);
            return str;
        }
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: b */
    public static String m5762b(@Nullable Context context) {
        if (context == null) {
            LogUtil.m5631p("DeviceInfoUtils#getDeviceId", "context is null, returning empty string");
            return "";
        }
        LogUtil.m5632o("DeviceInfoUtils#", "APPLICATION ID = " + context.getPackageName());
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string == null || string.isEmpty()) {
            String g = PreferenceUtils.m5390g("PREF_SAVED_DEVICE_ID_UUID");
            if (!g.isEmpty()) {
                return g;
            }
            String uuid = UUID.randomUUID().toString();
            PreferenceUtils.m5383n("PREF_SAVED_DEVICE_ID_UUID", uuid);
            return uuid;
        }
        String str = string;
        if (PreferenceUtils.m5396a()) {
            str = m5763a(string);
        }
        return str;
    }

    /* renamed from: c */
    public static boolean m5761c() {
        return TimeZone.getDefault().inDaylightTime(new Date());
    }

    /* renamed from: d */
    public static Long m5760d() {
        String g = PreferenceUtils.m5390g("PREF_MATA_IMEI");
        if (g.isEmpty()) {
            return 0L;
        }
        try {
            return Long.valueOf(Long.parseLong(g));
        } catch (Exception e) {
            LogUtil.m5641f("DeviceInfoUtils#", "error parsing imei " + g, e);
            return 0L;
        }
    }

    /* renamed from: e */
    public static List<ApplicationInfo> m5759e(Context context) {
        List<ApplicationInfo> installedApplications = context != null ? context.getPackageManager().getInstalledApplications(0) : null;
        List<ApplicationInfo> list = installedApplications;
        if (installedApplications == null) {
            list = new ArrayList<>();
        }
        return list;
    }

    /* renamed from: f */
    public static Locale m5758f() {
        return Locale.getDefault();
    }

    /* renamed from: g */
    public static String m5757g() {
        return m5758f().getCountry();
    }

    /* renamed from: h */
    public static String m5756h() {
        return TimeZone.getDefault().getID();
    }

    /* renamed from: i */
    public static String m5755i(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            LogUtil.m5639h("DeviceInfoUtils#getVersionName", "version Name: " + str);
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            LogUtil.m5641f("DeviceInfoUtils#getVersionName", "Exception thrown while retrieving version name", e);
            return "4.2.0.3336".replaceAll("[^\\d.]", "");
        }
    }

    /* renamed from: j */
    public static boolean m5754j(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return m5753k(context, arrayList);
    }

    /* renamed from: k */
    private static boolean m5753k(Context context, List<String> list) {
        List<ApplicationInfo> e = m5759e(context);
        for (String str : list) {
            for (ApplicationInfo applicationInfo : e) {
                if (str.equalsIgnoreCase(applicationInfo.packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: l */
    public static boolean m5752l(Context context) {
        boolean z = false;
        try {
            if ((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0) {
                LogUtil.m5643d("DeviceInfoUtils#isPreinstalled", "Found the ApplicationInfo, and it was flagged as a system app.");
                z = true;
            } else {
                LogUtil.m5643d("DeviceInfoUtils#isPreinstalled", "Found the ApplicationInfo, but it was not flagged as a system app.");
            }
        } catch (Exception e) {
            LogUtil.m5643d("DeviceInfoUtils#isPreinstalled", "Did not find the ApplicationInfo: " + e);
        }
        LogUtil.m5643d("DeviceInfoUtils#isPreinstalled", "Returning " + z);
        return z;
    }
}
