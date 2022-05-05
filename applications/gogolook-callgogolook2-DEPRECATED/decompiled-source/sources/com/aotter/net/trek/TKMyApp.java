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
import com.aotter.net.trek.ads.AdCache;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.SharedPreferencesHelper;
import com.aotter.net.trek.common.util.AsyncTasks;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.interfaces.TKMyAppInitListener;
import com.aotter.net.trek.model.Device;
import com.aotter.net.trek.model.User;
import com.aotter.net.trek.util.TrekLog;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/TKMyApp.class */
public final class TKMyApp {

    /* renamed from: a */
    public static final String f1141a = "TKMyApp";

    /* renamed from: b */
    public static Context f1142b;

    /* renamed from: c */
    public static TKMyApp f1143c;

    /* renamed from: d */
    public static TKMyAppInitListener f1144d;

    /* renamed from: e */
    public static final String f1145e = "trek.settings.identifier";

    /* renamed from: f */
    public static final String f1146f = "trek.privacy.google.advertising.id";
    public static AdCache mAdCache;

    /* renamed from: a */
    public static String m36617a(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).isWifiEnabled() ? "WIFI" : m36614b(context);
    }

    /* renamed from: a */
    public static void m36615a(Device device) {
        m36605i(device);
        m36607g(device);
        m36609e(device);
        m36610d(device);
        m36608f(device);
        m36611c(device);
        m36612b(device);
        try {
            m36606h(device);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static String m36614b(Context context) {
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
    public static void m36613b(@NonNull Context context, @NonNull String str) {
        synchronized (TKMyApp.class) {
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
    public static void m36612b(Device device) {
        try {
            device.setNetworkOperator(((TelephonyManager) f1142b.getSystemService("phone")).getNetworkOperator());
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static void m36611c(Device device) {
        try {
            if (!TextUtils.isEmpty(m36617a(f1142b))) {
                device.setNetworkCond(m36617a(f1142b));
            }
        } catch (Throwable th) {
        }
    }

    public static void clear() {
        synchronized (TKMyApp.class) {
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
    public static void m36610d(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.VERSION.RELEASE)) {
                device.setOsVersion(Build.VERSION.RELEASE);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public static void m36609e(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.MODEL)) {
                device.setDeviceModel(Build.MODEL);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    public static void m36608f(Device device) {
        try {
            if (!TextUtils.isEmpty(Build.MANUFACTURER)) {
                device.setDeviceBrand(Build.MANUFACTURER);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    public static void m36607g(Device device) {
        try {
            device.setAppVersion(f1142b.getPackageManager().getPackageInfo(f1142b.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (Throwable th) {
        }
    }

    /* renamed from: h */
    public static void m36606h(Device device) {
        try {
            String string = SharedPreferencesHelper.getSharedPreferences(f1142b, "trek.settings.identifier").getString("trek.privacy.google.advertising.id", "");
            if (!TextUtils.isEmpty(string)) {
                device.setAdID(string);
            }
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1740b(device, string), new Void[0]);
        } catch (ClassCastException e) {
            TrekLog.m36319d("Cannot read identifier from shared preferences");
        }
        TKMyAppInitListener tKMyAppInitListener = f1144d;
        if (tKMyAppInitListener != null) {
            tKMyAppInitListener.onComplete();
        }
    }

    /* renamed from: i */
    public static void m36605i(Device device) {
        try {
            device.setDeviceID(Settings.Secure.getString(f1142b.getContentResolver(), "android_id"));
        } catch (Throwable th) {
            TrekLog.m36318d("setDeviceID Throwable", th);
        }
    }

    public static void init(Context context, String str, String str2) {
        synchronized (TKMyApp.class) {
            try {
                if (Build.VERSION.SDK_INT < 10) {
                    TrekLog.m36317e("Device SDK Version older than 10");
                } else if (context == null) {
                    throw new NullPointerException("Null context");
                } else if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
                    throw new IllegalArgumentException("clientId/clientSecret not specified");
                } else {
                    try {
                        f1143c = new TKMyApp();
                        f1142b = context;
                        AotterTrekApplication.mClientId = str;
                        AotterTrekApplication.mClientSecret = str2;
                        AotterTrekApplication.mUser = new User();
                        AotterTrekApplication.mDevice = new Device();
                        m36615a(AotterTrekApplication.mDevice);
                        CacheService.initialize(f1142b);
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static TKMyApp setBirthday(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setBirthday(str);
            }
        } catch (Throwable th) {
        }
        return f1143c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static TKMyApp setEmail(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setEmail(str);
            }
        } catch (Throwable th) {
        }
        return f1143c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static TKMyApp setFbId(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setFbId(str);
            }
        } catch (Throwable th) {
        }
        return f1143c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static TKMyApp setGender(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setGender(str);
            }
        } catch (Throwable th) {
        }
        return f1143c;
    }

    public static void setListener(TKMyAppInitListener tKMyAppInitListener) {
        f1144d = tKMyAppInitListener;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0012 -> B:5:0x000e). Please submit an issue!!! */
    public static TKMyApp setPhone(String str) {
        try {
            if (!str.isEmpty()) {
                AotterTrekApplication.mUser.setPhone(str);
            }
        } catch (Throwable th) {
        }
        return f1143c;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x000f -> B:5:0x000b). Please submit an issue!!! */
    public static TKMyApp setUserMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                AotterTrekApplication.mUser.setMeta(jSONObject);
            } catch (Throwable th) {
            }
        }
        return f1143c;
    }
}
