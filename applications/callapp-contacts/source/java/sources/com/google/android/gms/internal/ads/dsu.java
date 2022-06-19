package com.google.android.gms.internal.ads;

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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsu.class */
public final class dsu {

    /* renamed from: a */
    private static String f47525a;

    /* renamed from: a */
    public static String m15758a(Context context) {
        String str = f47525a;
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
            f47525a = null;
        } else if (arrayList.size() == 1) {
            f47525a = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2) && !m15757a(context, intent) && arrayList.contains(str2)) {
            f47525a = str2;
        } else if (arrayList.contains("com.android.chrome")) {
            f47525a = "com.android.chrome";
        } else if (arrayList.contains("com.chrome.beta")) {
            f47525a = "com.chrome.beta";
        } else if (arrayList.contains("com.chrome.dev")) {
            f47525a = "com.chrome.dev";
        } else if (arrayList.contains("com.google.android.apps.chrome")) {
            f47525a = "com.google.android.apps.chrome";
        }
        return f47525a;
    }

    /* renamed from: a */
    private static boolean m15757a(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (RuntimeException e) {
            Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
            return false;
        }
    }
}
