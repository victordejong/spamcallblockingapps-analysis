package com.huawei.hms.stats;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.stats.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/stats/a.class */
public class C2453a {

    /* renamed from: a */
    public static int f7782a;

    /* renamed from: b */
    public static final Object f7783b = new Object();

    /* renamed from: a */
    public static boolean m37231a(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.m37195e("AnalyticsSwitchHolder", "In getBiIsReportSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bireport.setting");
                }
            } catch (PackageManager.NameNotFoundException e) {
                HMSLog.m37195e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.");
            } catch (RuntimeException e2) {
                HMSLog.m37194e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.", e2);
            }
        }
        HMSLog.m37193i("AnalyticsSwitchHolder", "In getBiIsReportSetting, configuration not found for bi report setting.");
        return false;
    }

    /* renamed from: b */
    public static boolean m37230b(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.m37195e("AnalyticsSwitchHolder", "In getBiSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    return bundle.getBoolean("com.huawei.hms.client.bi.setting");
                }
            } catch (PackageManager.NameNotFoundException e) {
                HMSLog.m37195e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.");
            } catch (RuntimeException e2) {
                HMSLog.m37194e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.", e2);
            }
        }
        HMSLog.m37193i("AnalyticsSwitchHolder", "In getBiSetting, configuration not found for bisetting.");
        return false;
    }

    /* renamed from: c */
    public static boolean m37229c(Context context) {
        synchronized (f7783b) {
            boolean z = true;
            if (f7782a == 0) {
                if (context == null) {
                    return true;
                }
                if (m37231a(context)) {
                    HMSLog.m37193i("AnalyticsSwitchHolder", "Builder->biReportSetting :true");
                    f7782a = 1;
                } else if (m37230b(context)) {
                    HMSLog.m37193i("AnalyticsSwitchHolder", "Builder->biSetting :true");
                    f7782a = 2;
                } else if ("CN".equalsIgnoreCase(GrsApp.getInstance().getIssueCountryCode(context))) {
                    f7782a = 1;
                } else {
                    HMSLog.m37193i("AnalyticsSwitchHolder", "not ChinaROM");
                    try {
                        int i = Settings.Secure.getInt(context.getContentResolver(), "hw_app_analytics_state");
                        HMSLog.m37193i("AnalyticsSwitchHolder", "hw_app_analytics_state value is " + i);
                        if (i == 1) {
                            f7782a = 1;
                        } else {
                            f7782a = 2;
                        }
                    } catch (Settings.SettingNotFoundException e) {
                        HMSLog.m37193i("AnalyticsSwitchHolder", "Get OOBE failed");
                        f7782a = 2;
                    }
                }
            }
            if (f7782a == 1) {
                z = false;
            }
            return z;
        }
    }
}
