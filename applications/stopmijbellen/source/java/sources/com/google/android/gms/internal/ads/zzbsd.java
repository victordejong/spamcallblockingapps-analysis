package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsd.class */
public final class zzbsd {
    public static final Intent zza(Uri uri, Context context, zzalt zzaltVar, View view) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    public static final Intent zzb(Intent intent, ResolveInfo resolveInfo, Context context, zzalt zzaltVar, View view) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    @VisibleForTesting
    public static final ResolveInfo zzc(Intent intent, Context context, zzalt zzaltVar, View view) {
        return zzd(intent, new ArrayList(), context, zzaltVar, view);
    }

    @VisibleForTesting
    public static final ResolveInfo zzd(Intent intent, ArrayList<ResolveInfo> arrayList, Context context, zzalt zzaltVar, View view) {
        ResolveInfo resolveInfo;
        PackageManager packageManager;
        ResolveInfo resolveInfo2 = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            zzt.zzo().zzs(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
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
}
