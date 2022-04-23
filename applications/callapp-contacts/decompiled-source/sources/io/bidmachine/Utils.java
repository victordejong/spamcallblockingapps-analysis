package io.bidmachine;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/Utils.class */
public class Utils {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static String capitalize(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
    }

    public static Integer getBatteryLevel(Context context) {
        float batteryPercent = io.bidmachine.core.Utils.getBatteryPercent(context);
        if (batteryPercent >= 85.0f) {
            return 8;
        }
        if (batteryPercent >= 70.0f && batteryPercent < 85.0f) {
            return 7;
        }
        if (batteryPercent >= 55.0f && batteryPercent < 70.0f) {
            return 6;
        }
        if (batteryPercent >= 40.0f && batteryPercent < 55.0f) {
            return 5;
        }
        if (batteryPercent >= 25.0f && batteryPercent < 40.0f) {
            return 4;
        }
        if (batteryPercent >= 10.0f && batteryPercent < 25.0f) {
            return 3;
        }
        if (batteryPercent < 5.0f || batteryPercent >= 10.0f) {
            return batteryPercent < 5.0f ? 1 : null;
        }
        return 2;
    }

    public static String getDeviceName(Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String string = Build.VERSION.SDK_INT >= 17 ? Settings.Global.getString(contentResolver, "device_name") : Settings.System.getString(contentResolver, "device_name");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = Settings.Secure.getString(contentResolver, "bluetooth_name");
            if (!TextUtils.isEmpty(string2)) {
                return string2;
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                return defaultAdapter.getName();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static Set<String> getInputLanguageSet(Context context) {
        InputMethodManager inputMethodManager;
        HashSet hashSet = new HashSet();
        try {
            inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        } catch (Exception e) {
        }
        if (inputMethodManager == null) {
            return hashSet;
        }
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodList()) {
            for (InputMethodSubtype inputMethodSubtype : inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true)) {
                if (inputMethodSubtype.getMode().equals("keyboard")) {
                    String str = null;
                    if (Build.VERSION.SDK_INT >= 24) {
                        str = inputMethodSubtype.getLanguageTag();
                    }
                    String str2 = str;
                    if (TextUtils.isEmpty(str)) {
                        str2 = inputMethodSubtype.getLocale();
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        int indexOf = str2.indexOf("_");
                        String str3 = str2;
                        if (indexOf > 0) {
                            str3 = str2.substring(0, indexOf);
                        }
                        hashSet.add(str3);
                    }
                }
            }
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language)) {
            hashSet.add(language);
        }
        return hashSet;
    }

    public static float getOrDefault(float f, float f2, float f3) {
        return f == f2 ? f3 : f;
    }

    public static int getOrDefault(int i, int i2, int i3) {
        return i == i2 ? i3 : i;
    }

    public static long getOrDefault(long j, long j2, long j3) {
        return j == j2 ? j3 : j;
    }

    public static int getOrientation() {
        Context appContext = d.get().getAppContext();
        if (appContext == null) {
            return 0;
        }
        return appContext.getResources().getConfiguration().orientation;
    }

    public static Integer getScreenBrightness(Context context) {
        try {
            return Integer.valueOf(Settings.System.getInt(context.getContentResolver(), "screen_brightness"));
        } catch (Exception e) {
            return null;
        }
    }

    public static Float getScreenBrightnessRatio(Context context) {
        Integer screenBrightness = getScreenBrightness(context);
        if (screenBrightness == null) {
            return null;
        }
        return Float.valueOf(Math.round((screenBrightness.intValue() / 255.0f) * 100.0f) / 100.0f);
    }

    public static Boolean isAirplaneModeOn(Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            return Boolean.valueOf((Build.VERSION.SDK_INT >= 17 ? Settings.Global.getInt(contentResolver, "airplane_mode_on") : Settings.System.getInt(contentResolver, "airplane_mode_on")) != 0);
        } catch (Exception e) {
            return null;
        }
    }

    public static Boolean isBatterySaverEnabled(Context context) {
        PowerManager powerManager;
        if (Build.VERSION.SDK_INT < 21 || (powerManager = (PowerManager) context.getSystemService("power")) == null) {
            return null;
        }
        return Boolean.valueOf(powerManager.isPowerSaveMode());
    }

    public static Boolean isCharging(Context context) {
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null) {
                return null;
            }
            int intExtra = registerReceiver.getIntExtra("plugged", -1);
            boolean z = false;
            boolean z2 = intExtra == 1 || intExtra == 2;
            z = z2;
            if (Build.VERSION.SDK_INT >= 17) {
                if (z2 || intExtra == 4) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean isDarkModeEnabled(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static Boolean isDoNotDisturbOn(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 17) {
                return null;
            }
            return Boolean.valueOf(Settings.Global.getInt(context.getContentResolver(), "zen_mode") != 0);
        } catch (Exception e) {
            return null;
        }
    }

    public static Boolean isRingMuted(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        int ringerMode = audioManager.getRingerMode();
        boolean z = true;
        if (ringerMode != 0) {
            z = ringerMode == 1;
        }
        return Boolean.valueOf(z);
    }
}
