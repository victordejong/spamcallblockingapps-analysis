package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y20.class */
public final class y20 {
    /* renamed from: a */
    public static final Intent m8982a(Uri uri, Context context, C7016u c7016u, View view) {
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
    public static final ResolveInfo m8981b(Intent intent, Context context, C7016u c7016u, View view) {
        return m8980c(intent, new ArrayList(), context, c7016u, view);
    }

    /* renamed from: c */
    public static final ResolveInfo m8980c(Intent intent, ArrayList<ResolveInfo> arrayList, Context context, C7016u c7016u, View view) {
        ResolveInfo resolveInfo;
        PackageManager packageManager;
        ResolveInfo resolveInfo2 = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            C5667s.m18156h().m12235k(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
            resolveInfo = resolveInfo2;
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
        resolveInfo2 = resolveInfo;
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }

    /* renamed from: d */
    public static final Intent m8979d(Intent intent, ResolveInfo resolveInfo, Context context, C7016u c7016u, View view) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }
}
