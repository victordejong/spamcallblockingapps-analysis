package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hv.class */
public final class hv {

    /* renamed from: a  reason: collision with root package name */
    final Context f28053a;

    /* renamed from: b  reason: collision with root package name */
    final die f28054b;

    /* renamed from: c  reason: collision with root package name */
    final View f28055c;

    public hv(Context context, die dieVar, View view) {
        this.f28053a = context;
        this.f28054b = dieVar;
        this.f28055c = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ResolveInfo a(Intent intent) {
        return a(intent, new ArrayList<>());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ResolveInfo a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = this.f28053a.getPackageManager();
        } catch (Throwable th) {
            zzr.zzkz().a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
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
