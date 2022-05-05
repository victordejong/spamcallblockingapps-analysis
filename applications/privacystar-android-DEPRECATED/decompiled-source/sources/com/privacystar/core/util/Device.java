package com.privacystar.core.util;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.telephony.TelephonyManager;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.model.BasicApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.apache.commons.cli.HelpFormatter;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/Device.class */
public class Device {
    private static final String MAGIC_ANDROID_ID = "9774d56d682e549c";

    public static String getCarrierNameC(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    public static String getDeviceId() {
        return getDeviceId(PSApplication.context());
    }

    public static String getDeviceId(Context context) {
        StringBuilder sb = new StringBuilder();
        if (AppManagerImpl.INSTANCE.flavorUsesGuidID()) {
            sb.append(getGuidDeviceId());
        } else {
            sb.append(getDeviceIdRaw(context));
        }
        if (context.getResources().getBoolean(C1566R.bool.device_id_uses_phone_number)) {
            sb.append(getDeviceIdExtension(context));
        }
        return sb.toString();
    }

    @SuppressLint({"HardwareIds"})
    public static String getDeviceIdExtension(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String str = "";
        if (telephonyManager != null) {
            String str2 = null;
            if (PermissionUtils.hasPhoneStatePermission(context)) {
                str2 = telephonyManager.getLine1Number();
            }
            Text.isNull(str2);
            str = "";
            if (str2 != null) {
                str = "";
                if (str2.length() >= 4) {
                    str = str2.substring(str2.length() - 4, str2.length());
                }
            }
        }
        return str;
    }

    @SuppressLint({"HardwareIds"})
    public static String getDeviceIdRaw(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String getGuidDeviceId() {
        String guidDeviceID = PreferenceUtil.getGuidDeviceID();
        String str = guidDeviceID;
        if (guidDeviceID.equals("")) {
            str = UUID.randomUUID().toString().replaceAll(HelpFormatter.DEFAULT_OPT_PREFIX, "").substring(0, 20);
            PreferenceUtil.putGuidDeviceID(str);
        }
        return str;
    }

    @NonNull
    public static List<ApplicationInfo> getInstalledApplications(Context context) {
        List<ApplicationInfo> installedApplications = context != null ? context.getPackageManager().getInstalledApplications(0) : null;
        List<ApplicationInfo> list = installedApplications;
        if (installedApplications == null) {
            list = new ArrayList<>();
        }
        return list;
    }

    public static String getUiVersion(Context context) {
        String uiVersionFileContents = FileUtil.getUiVersionFileContents(context);
        String str = uiVersionFileContents;
        if (Text.isBlank(uiVersionFileContents)) {
            str = context.getString(C1566R.string.ui_version_unreadable);
            Timber.m37d("Tried to read ui version from file but was not able to.", new Object[0]);
        }
        if (str.length() <= 25) {
            return str.replaceAll(System.getProperty("line.separator"), "");
        }
        Timber.m37d("UI version string too long to display, shortening to first 25 characters.", new Object[0]);
        return str.substring(0, 25);
    }

    public static boolean isApplicationInForeground(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isApplicationInstalled(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return isApplicationInstalled(context, arrayList);
    }

    public static boolean isApplicationInstalled(Context context, List<String> list) {
        List<ApplicationInfo> installedApplications = getInstalledApplications(context);
        if (list == null) {
            return false;
        }
        for (String str : list) {
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (Text.equals(applicationInfo.packageName, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isApplicationRunning(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY);
        if (Build.VERSION.SDK_INT >= 21) {
            return !activityManager.getAppTasks().isEmpty();
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
        return !runningTasks.isEmpty() && runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName());
    }

    public static boolean isAtLeastMarshmallow() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean lacksOverlayPermissions(Context context) {
        return Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(context);
    }

    public static List<BasicApplication> matchInstalledPackages(Context context, List<String> list) {
        List<ApplicationInfo> installedApplications = getInstalledApplications(context);
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        for (String str : list) {
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (Text.equals(applicationInfo.packageName, str)) {
                    arrayList.add(new BasicApplication(context, applicationInfo));
                }
            }
        }
        return arrayList;
    }

    public static void startApplicationUninstall(Context context, String str) {
        if (!isApplicationInstalled(context, str)) {
            Timber.m25w("Request to uninstall package %s, but that package is not installed.", str);
            return;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }
}
