package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.C1407r;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.r9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r9.class */
public final class C1919r9 {
    /* renamed from: a */
    public static final Intent m5990a(Uri uri, Context context, zh2 zh2Var, View view) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* renamed from: b */
    public static final ResolveInfo m5989b(Intent intent, Context context, zh2 zh2Var, View view) {
        return m5988c(intent, new ArrayList(), context, zh2Var, view);
    }

    /* renamed from: c */
    public static final ResolveInfo m5988c(Intent intent, ArrayList<ResolveInfo> arrayList, Context context, zh2 zh2Var, View view) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            C1407r.m8916h().m4590g(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        resolveInfo = null;
        if (queryIntentActivities != null) {
            resolveInfo = null;
            if (resolveActivity != null) {
                int i = 0;
                while (true) {
                    resolveInfo = null;
                    if (i >= queryIntentActivities.size()) {
                        break;
                    }
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                    i++;
                }
            }
        }
        resolveInfo = resolveInfo;
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }

    /* renamed from: d */
    public static final Intent m5987d(Intent intent, ResolveInfo resolveInfo, Context context, zh2 zh2Var, View view) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }
}
