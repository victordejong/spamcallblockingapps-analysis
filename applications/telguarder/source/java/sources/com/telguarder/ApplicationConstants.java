package com.telguarder;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.telguarder.features.advertisements.AdvertNetworkName;
import java.util.Arrays;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/telguarder/ApplicationConstants.class */
public class ApplicationConstants {
    public static final int ADVERT_PRELOADED_AD_EXPIRATION_MINUTES = 45;
    public static final int ADVERT_PRELOAD_TIMEOUT_SECONDS = 15;
    public static final int BACKEND_X_RESPONSE_THRESHOLD_MS = 500;
    public static final long CALL_WIDGET_AUTOMATIC_CLOSE_DELAY = 6000;
    public static final long CALL_WIDGET_AUTOMATIC_CLOSE_LONG_DELAY = 60000;
    public static final long CALL_WIDGET_TOOLTIP_HIDE_DELAY = 5000;
    public static final int CALL_WIDGET_TOOLTIP_MAX_HIDE_COUNT = 10;
    public static final String DEFAULT_ADVERT_PLACEMENT = "postcall";
    public static final String LISTBANNER_ADVERT_PLACEMENT = "listbanner";
    public static final long MAX_DURATION_FOR_FRESH_CACHE = 86400000;
    public static final long MAX_DURATION_FOR_FRESH_MCC = 60000;
    public static final int OFFLINE_SPAM_DB_VERSION = 5;
    public static final int PHONE_CALL_LOG_FINAL_LIMIT = 200;
    public static final int PHONE_CALL_LOG_INITIAL_LIMIT = 10;
    public static final String POSTCALL_ADVERT_PLACEMENT = "postcall";
    public static List<Intent> POWERMANAGER_INTENTS;
    public static final long RATING_TRESHOLD_TIME = 259200000;
    public static final int RESULTS_PER_PAGE_SIZE_DEFAULT = 10;
    public static final int SLOW_RESPONSE_THRESHOLD_MS = 3000;
    public static final int SPAM_COMMENT_ITEMS_PER_AD = 18;
    private static TreeMap<AdvertNetworkName, Boolean> advertNetworkEnabled;

    static {
        TreeMap<AdvertNetworkName, Boolean> treeMap = new TreeMap<>();
        advertNetworkEnabled = treeMap;
        treeMap.put(AdvertNetworkName.ADMOB, true);
        advertNetworkEnabled.put(AdvertNetworkName.FACEBOOK, true);
        advertNetworkEnabled.put(AdvertNetworkName.ADMOB_BANNER, true);
        advertNetworkEnabled.put(AdvertNetworkName.FACEBOOK_BANNER, true);
        advertNetworkEnabled.put(AdvertNetworkName.AD_MANAGER_BANNER, true);
        POWERMANAGER_INTENTS = Arrays.asList(new Intent().setComponent(new ComponentName("com.huawei.systemmanager", Build.VERSION.SDK_INT >= 28 ? "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity" : "com.huawei.systemmanager.appcontrol.activity.StartupAppControlActivity")), new Intent().setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.optimize.process.ProtectActivity")), new Intent().setComponent(new ComponentName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity")), new Intent().setComponent(new ComponentName("com.letv.android.letvsafe", "com.letv.android.letvsafe.AutobootManageActivity")), new Intent().setComponent(new ComponentName("com.coloros.safecenter", "com.coloros.safecenter.permission.startup.StartupAppListActivity")), new Intent().setComponent(new ComponentName("com.coloros.safecenter", "com.coloros.safecenter.startupapp.StartupAppListActivity")), new Intent().setComponent(new ComponentName("com.oppo.safe", "com.oppo.safe.permission.startup.StartupAppListActivity")), new Intent().setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.ui.phoneoptimize.AddWhiteListActivity")), new Intent().setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager")), new Intent().setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.BgStartUpManagerActivity")), new Intent().setComponent(new ComponentName("com.asus.mobilemanager", "com.asus.mobilemanager.entry.FunctionActivity")).setData(Uri.parse("mobilemanager://function/entry/AutoStart")), new Intent().setComponent(new ComponentName("com.asus.mobilemanager", "com.asus.mobilemanager.MainActivity")), new Intent().setComponent(new ComponentName("com.samsung.android.lool", "com.samsung.android.sm.ui.battery.BatteryActivity")), new Intent().setComponent(new ComponentName("com.htc.pitroad", "com.htc.pitroad.landingpage.activity.LandingPageActivity")));
    }

    public static boolean isAdNetworkEnabled(AdvertNetworkName advertNetworkName) {
        boolean z = false;
        if (advertNetworkName != null) {
            z = false;
            try {
                if (advertNetworkEnabled.get(advertNetworkName) != null) {
                    z = false;
                    if (advertNetworkEnabled.get(advertNetworkName).booleanValue()) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }

    public static boolean isCallable(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
