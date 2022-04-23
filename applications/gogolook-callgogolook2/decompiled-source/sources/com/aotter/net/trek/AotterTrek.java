package com.aotter.net.trek;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.SharedPreferencesHelper;
import com.aotter.net.trek.common.util.AsyncTasks;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.interfaces.AotterTrekInitListener;
import com.aotter.net.trek.model.Device;
import com.aotter.net.trek.model.User;
import com.aotter.net.trek.util.TrekLog;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/AotterTrek.class */
public final class AotterTrek {

    /* renamed from: a */
    public static final String f1135a = "AotterTrek";

    /* renamed from: b */
    public static Context f1136b;

    /* renamed from: c */
    public static AotterTrek f1137c;

    /* renamed from: d */
    public static AotterTrekInitListener f1138d;

    /* renamed from: e */
    public static final String f1139e = "trek.settings.identifier";

    /* renamed from: f */
    public static final String f1140f = "trek.privacy.google.advertising.id";

    /* renamed from: a */
    public static String m36632a(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).isWifiEnabled() ? "WIFI" : m36628b(context);
    }

    /* renamed from: a */
    public static void m36630a(Device device) {
        m36619i(device);
        m36621g(device);
        m36623e(device);
        m36624d(device);
        m36622f(device);
        m36625c(device);
        m36626b(device);
        try {
            m36620h(device);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static String m36628b(Context context) {
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "UNKNOWN";
        }
    }

    /* renamed from: b */
    public static void m36627b(@NonNull Context context, @NonNull String str) {
        synchronized (AotterTrek.class) {
            try {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(str);
                SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(context, "trek.settings.identifier").edit();
                edit.putString("trek.privacy.google.advertising.id", str);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m36626b(Device device) {
        try {
            device.setNetworkOperator(((TelephonyManager) f1136b.getSystemService("phone")).getNetworkOperator());
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m36625c(Device device) {
        try {
            if (!TextUtils.isEmpty(m36632a(f1136b))) {
                device.setNetworkCond(m36632a(f1136b));
            }
        } catch (Throwable th) {
        }
    }

    public static void clear() {
        synchronized (AotterTrek.class) {
            try {
                AotterTrekApplication.mUser.setBirthday("");
                AotterTrekApplication.mUser.setGender("");
                AotterTrekApplication.mUser.setFbId("");
                AotterTrekApplication.mUser.setPhone("");
                AotterTrekApplication.mUser.setEmail("");
                AotterTrekApplication.mUser.setMeta(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static void m36624d(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.VERSION.RELEASE)) {
                device.setOsVersion(Build.VERSION.RELEASE);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public static void m36623e(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.MODEL)) {
                device.setDeviceModel(Build.MODEL);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    public static void m36622f(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.MANUFACTURER)) {
                device.setDeviceBrand(Build.MANUFACTURER);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    public static void m36621g(Device device) {
        try {
            device.setAppVersion(f1136b.getPackageManager().getPackageInfo(f1136b.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (Throwable th) {
        }
    }

    /* renamed from: h */
    public static void m36620h(Device device) {
        try {
            String string = SharedPreferencesHelper.getSharedPreferences(f1136b, "trek.settings.identifier").getString("trek.privacy.google.advertising.id", "");
            if (!TextUtils.isEmpty(string)) {
                device.setAdID(string);
            }
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1660a(device, string), new Void[0]);
        } catch (ClassCastException e) {
            TrekLog.m36321c("Cannot read identifier from shared preferences");
        }
        AotterTrekInitListener aotterTrekInitListener = f1138d;
        if (aotterTrekInitListener != null) {
            aotterTrekInitListener.onComplete();
        }
    }

    /* renamed from: i */
    public static void m36619i(Device device) {
        try {
            device.setDeviceID(Settings.Secure.getString(f1136b.getContentResolver(), "android_id"));
        } catch (Throwable th) {
        }
    }

    public static void init(Context context, String str, String str2) {
        synchronized (AotterTrek.class) {
            try {
                if (Build.VERSION.SDK_INT < 10) {
                    TrekLog.m36317e("Device SDK Version older than 10");
                } else if (context == null) {
                    throw new NullPointerException("Null context");
                } else if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
                    throw new IllegalArgumentException("clientId/clientSecret not specified");
                } else {
                    try {
                        f1137c = new AotterTrek();
                        f1136b = context;
                        AotterTrekApplication.mClientId = str;
                        AotterTrekApplication.mClientSecret = str2;
                        AotterTrekApplication.mUser = new User();
                        AotterTrekApplication.mDevice = new Device();
                        m36630a(AotterTrekApplication.mDevice);
                        CacheService.initialize(f1136b);
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static AotterTrek setBirthday(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setBirthday(str);
            }
        } catch (Throwable th) {
        }
        return f1137c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static AotterTrek setEmail(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setEmail(str);
            }
        } catch (Throwable th) {
        }
        return f1137c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static AotterTrek setFbId(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setFbId(str);
            }
        } catch (Throwable th) {
        }
        return f1137c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static AotterTrek setGender(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setGender(str);
            }
        } catch (Throwable th) {
        }
        return f1137c;
    }

    public static void setListener(AotterTrekInitListener aotterTrekInitListener) {
        f1138d = aotterTrekInitListener;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static AotterTrek setPhone(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setPhone(str);
            }
        } catch (Throwable th) {
        }
        return f1137c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x000f -> B:5:0x000b). Please submit an issue!!! */
    public static AotterTrek setUserMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                AotterTrekApplication.mUser.setMeta(jSONObject);
            } catch (Throwable th) {
            }
        }
        return f1137c;
    }
}
