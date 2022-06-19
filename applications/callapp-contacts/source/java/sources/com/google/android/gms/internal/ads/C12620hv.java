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
/* renamed from: com.google.android.gms.internal.ads.hv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hv.class */
public final class C12620hv {

    /* renamed from: a */
    final Context f49362a;

    /* renamed from: b */
    final die f49363b;

    /* renamed from: c */
    final View f49364c;

    public C12620hv(Context context, die dieVar, View view) {
        this.f49362a = context;
        this.f49363b = dieVar;
        this.f49364c = view;
    }

    /* renamed from: a */
    public static Intent m14607a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    /* renamed from: a */
    public static Intent m14605a(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* renamed from: a */
    public final ResolveInfo m14608a(Intent intent) {
        return m14606a(intent, new ArrayList<>());
    }

    /* renamed from: a */
    public final ResolveInfo m14606a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        ResolveInfo resolveInfo;
        PackageManager packageManager;
        ResolveInfo resolveInfo2 = null;
        try {
            packageManager = this.f49362a.getPackageManager();
        } catch (Throwable th) {
            zzr.zzkz().m13979a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
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
                    ResolveInfo resolveInfo3 = queryIntentActivities.get(i);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo3.activityInfo.name)) {
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
