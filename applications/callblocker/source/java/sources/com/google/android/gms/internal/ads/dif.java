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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dif.class */
public final class dif {

    /* renamed from: a */
    private static String f14396a;

    /* renamed from: a */
    public static String m9432a(Context context) {
        String str;
        if (f14396a != null) {
            str = f14396a;
        } else {
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
                f14396a = null;
            } else if (arrayList.size() == 1) {
                f14396a = (String) arrayList.get(0);
            } else if (!TextUtils.isEmpty(str2) && !m9431a(context, intent) && arrayList.contains(str2)) {
                f14396a = str2;
            } else if (arrayList.contains("com.android.chrome")) {
                f14396a = "com.android.chrome";
            } else if (arrayList.contains("com.chrome.beta")) {
                f14396a = "com.chrome.beta";
            } else if (arrayList.contains("com.chrome.dev")) {
                f14396a = "com.chrome.dev";
            } else if (arrayList.contains("com.google.android.apps.chrome")) {
                f14396a = "com.google.android.apps.chrome";
            }
            str = f14396a;
        }
        return str;
    }

    /* renamed from: a */
    private static boolean m9431a(Context context, Intent intent) {
        boolean z;
        List<ResolveInfo> queryIntentActivities;
        try {
            queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
        } catch (RuntimeException e) {
            Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
        }
        if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
            z = false;
        } else {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                IntentFilter intentFilter = resolveInfo.filter;
                if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }
}
