package io.bidmachine;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.Context;
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
        if (batteryPercent >= 5.0f && batteryPercent < 10.0f) {
            return 2;
        }
        return batteryPercent < 5.0f ? 1 : null;
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
            if (defaultAdapter == null) {
                return null;
            }
            return defaultAdapter.getName();
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
        Context appContext = C17842d.get().getAppContext();
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
        if (r0 == 4) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean isCharging(android.content.Context r4) {
        /*
            android.content.IntentFilter r0 = new android.content.IntentFilter     // Catch: java.lang.Exception -> L5f
            r5 = r0
            r0 = r5
            java.lang.String r1 = "android.intent.action.BATTERY_CHANGED"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L5f
            r0 = r4
            r1 = 0
            r2 = r5
            android.content.Intent r0 = r0.registerReceiver(r1, r2)     // Catch: java.lang.Exception -> L5f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L5d
            r0 = r4
            java.lang.String r1 = "plugged"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)     // Catch: java.lang.Exception -> L5f
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L34
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L2e
            goto L34
        L2e:
            r0 = 0
            r8 = r0
            goto L37
        L34:
            r0 = 1
            r8 = r0
        L37:
            r0 = r8
            r9 = r0
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L5f
            r1 = 17
            if (r0 < r1) goto L57
            r0 = r8
            if (r0 != 0) goto L50
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 4
            if (r0 != r1) goto L53
        L50:
            r0 = 1
            r8 = r0
        L53:
            r0 = r8
            r9 = r0
        L57:
            r0 = r9
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        L5d:
            r0 = 0
            return r0
        L5f:
            r4 = move-exception
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.Utils.isCharging(android.content.Context):java.lang.Boolean");
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
