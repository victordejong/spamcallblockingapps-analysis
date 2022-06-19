package com.huawei.hms.framework.common;

import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.PowerManager;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/PowerUtils.class */
public class PowerUtils {
    private static final String TAG = "PowerUtils";

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/PowerUtils$PowerMode.class */
    public static final class PowerMode {
        public static int POWER_MODE_DEFAULT_RETURN_VALUE = 0;
        public static int POWER_SAVER_MODE = 4;
        public static String SMART_MODE_STATUS = "SmartModeStatus";
    }

    public static boolean isAppIdleMode(Context context) {
        boolean z = false;
        if (context != null) {
            String packageName = context.getPackageName();
            Object systemService = context.getSystemService("usagestats");
            if (!(systemService instanceof UsageStatsManager)) {
                return false;
            }
            UsageStatsManager usageStatsManager = (UsageStatsManager) systemService;
            if (usageStatsManager == null) {
                Logger.m38044i(TAG, "isAppIdleMode statsManager is null!");
                return false;
            }
            z = usageStatsManager.isAppInactive(packageName);
        } else {
            Logger.m38044i(TAG, "isAppIdleMode Context is null!");
        }
        return z;
    }

    public static boolean isDozeIdleMode(Context context) {
        boolean z = false;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
            if (powerManager == null) {
                Logger.m38044i(TAG, "isDozeIdleMode powerManager is null!");
                return false;
            }
            try {
                z = powerManager.isDeviceIdleMode();
            } catch (RuntimeException e) {
                Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
            }
        } else {
            Logger.m38044i(TAG, "isDozeIdleMode Context is null!");
        }
        return z;
    }

    public static boolean isInteractive(Context context) {
        boolean z;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            if (systemService instanceof PowerManager) {
                try {
                    z = ((PowerManager) systemService).isInteractive();
                } catch (RuntimeException e) {
                    StringBuilder m8728C = C22128a.m8728C("getActiveNetworkInfo failed, exception:");
                    m8728C.append(e.getClass().getSimpleName());
                    m8728C.append(e.getMessage());
                    Logger.m38044i(TAG, m8728C.toString());
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    public static boolean isWhilteList(Context context) {
        boolean z;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "power");
            PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
            String packageName = context.getPackageName();
            if (powerManager != null) {
                try {
                    z = powerManager.isIgnoringBatteryOptimizations(packageName);
                } catch (RuntimeException e) {
                    Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    public static int readDataSaverMode(Context context) {
        int i = 0;
        if (context != null) {
            Object systemService = context.getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            if (connectivityManager == null) {
                Logger.m38044i(TAG, "readDataSaverMode Context is null!");
                return 0;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return 0;
            }
            if (!connectivityManager.isActiveNetworkMetered()) {
                Logger.m38042v(TAG, "ConnectType is not Mobile Network!");
            } else if (i2 >= 24) {
                i = connectivityManager.getRestrictBackgroundStatus();
            }
        } else {
            Logger.m38044i(TAG, "readDataSaverMode manager is null!");
        }
        return i;
    }

    public static int readPowerSaverMode(Context context) {
        int i;
        if (context != null) {
            int systemInt = SettingUtil.getSystemInt(context.getContentResolver(), PowerMode.SMART_MODE_STATUS, PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE);
            i = systemInt;
            if (systemInt == PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE) {
                Object systemService = ContextCompat.getSystemService(context, "power");
                PowerManager powerManager = null;
                if (systemService instanceof PowerManager) {
                    powerManager = (PowerManager) systemService;
                }
                i = systemInt;
                if (powerManager != null) {
                    try {
                        i = powerManager.isPowerSaveMode() ? PowerMode.POWER_SAVER_MODE : PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE;
                    } catch (RuntimeException e) {
                        Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
                        i = systemInt;
                    }
                }
            }
        } else {
            Logger.m38044i(TAG, "readPowerSaverMode Context is null!");
            i = 0;
        }
        return i;
    }
}
