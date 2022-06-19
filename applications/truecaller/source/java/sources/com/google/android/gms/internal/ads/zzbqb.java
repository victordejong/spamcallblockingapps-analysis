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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqb.class */
public final class zzbqb {
    public static final Intent zza(Uri uri, Context context, zzaas zzaasVar, View view) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    @VisibleForTesting
    public static final ResolveInfo zzb(Intent intent, Context context, zzaas zzaasVar, View view) {
        return zzc(intent, new ArrayList(), context, zzaasVar, view);
    }

    @VisibleForTesting
    public static final ResolveInfo zzc(Intent intent, ArrayList<ResolveInfo> arrayList, Context context, zzaas zzaasVar, View view) {
        ResolveInfo resolveInfo;
        PackageManager packageManager;
        ResolveInfo resolveInfo2 = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            zzt.zzg().zzk(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
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

    public static final Intent zzd(Intent intent, ResolveInfo resolveInfo, Context context, zzaas zzaasVar, View view) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }
}
