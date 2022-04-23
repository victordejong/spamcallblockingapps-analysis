package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.common.collect.MapMakerInternalMap;
import java.util.ArrayList;
import java.util.List;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaht.class */
public final class zzaht {

    /* renamed from: a */
    public final Context f24116a;

    /* renamed from: b */
    public final zzeg f24117b;

    /* renamed from: c */
    public final View f24118c;

    public zzaht(Context context, zzeg zzegVar, View view) {
        this.f24116a = context;
        this.f24117b = zzegVar;
        this.f24118c = view;
    }

    /* renamed from: a */
    public static Intent m16758a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    /* renamed from: a */
    public static Intent m16756a(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0110  */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent m16755a(java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaht.m16755a(java.util.Map):android.content.Intent");
    }

    @VisibleForTesting
    /* renamed from: a */
    public final ResolveInfo m16759a(Intent intent) {
        return m16757a(intent, new ArrayList<>());
    }

    @VisibleForTesting
    /* renamed from: a */
    public final ResolveInfo m16757a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = this.f24116a.getPackageManager();
        } catch (Throwable th) {
            zzp.m17965g().m16188a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, MapMakerInternalMap.MAX_SEGMENTS);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, MapMakerInternalMap.MAX_SEGMENTS);
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
                    ResolveInfo resolveInfo2 = queryIntentActivities.get(i);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
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
}
