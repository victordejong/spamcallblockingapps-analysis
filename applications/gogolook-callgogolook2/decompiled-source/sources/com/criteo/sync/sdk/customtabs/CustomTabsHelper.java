package com.criteo.sync.sdk.customtabs;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsHelper.class */
public class CustomTabsHelper {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String BETA_PACKAGE = "com.chrome.beta";
    public static final String DEV_PACKAGE = "com.chrome.dev";
    public static final String LOCAL_PACKAGE = "com.google.android.apps.chrome";
    public static final String STABLE_PACKAGE = "com.android.chrome";
    public static final String TAG = "CustomTabsHelper";
    public static String sPackageNameToUse;

    public static String getPackageNameToUse(Context context) {
        String str = sPackageNameToUse;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        String str2 = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            sPackageNameToUse = null;
        } else if (arrayList.size() == 1) {
            sPackageNameToUse = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2) && !hasSpecializedHandlerIntents(context, intent) && arrayList.contains(str2)) {
            sPackageNameToUse = str2;
        } else if (arrayList.contains(STABLE_PACKAGE)) {
            sPackageNameToUse = STABLE_PACKAGE;
        } else if (arrayList.contains(BETA_PACKAGE)) {
            sPackageNameToUse = BETA_PACKAGE;
        } else if (arrayList.contains(DEV_PACKAGE)) {
            sPackageNameToUse = DEV_PACKAGE;
        } else if (arrayList.contains(LOCAL_PACKAGE)) {
            sPackageNameToUse = LOCAL_PACKAGE;
        }
        return sPackageNameToUse;
    }

    public static String[] getPackages() {
        return new String[]{"", STABLE_PACKAGE, BETA_PACKAGE, DEV_PACKAGE, LOCAL_PACKAGE};
    }

    public static boolean hasSpecializedHandlerIntents(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            if (!(queryIntentActivities == null || queryIntentActivities.size() == 0)) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (!(intentFilter == null || intentFilter.countDataAuthorities() == 0 || intentFilter.countDataPaths() == 0 || resolveInfo.activityInfo == null)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (RuntimeException e) {
            Log.e(TAG, "Runtime exception while getting specialized handlers");
            return false;
        }
    }

    public static void resetPackage() {
        sPackageNameToUse = null;
    }
}
