package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.fh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fh.class */
public final class C3138fh {

    /* renamed from: a */
    private final Context f16661a;

    /* renamed from: b */
    private final ctl f16662b;

    /* renamed from: c */
    private final View f16663c;

    public C3138fh(Context context, ctl ctlVar, View view) {
        this.f16661a = context;
        this.f16662b = ctlVar;
        this.f16663c = view;
    }

    /* renamed from: a */
    private static Intent m7834a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    /* renamed from: a */
    private static Intent m7832a(Uri uri) {
        Intent intent;
        if (uri == null) {
            intent = null;
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            intent2.setData(uri);
            intent2.setAction("android.intent.action.VIEW");
            intent = intent2;
        }
        return intent;
    }

    /* renamed from: a */
    private final ResolveInfo m7835a(Intent intent) {
        return m7833a(intent, new ArrayList<>());
    }

    /* renamed from: a */
    private final ResolveInfo m7833a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        ResolveInfo resolveInfo;
        try {
            PackageManager packageManager = this.f16661a.getPackageManager();
            if (packageManager == null) {
                resolveInfo = null;
            } else {
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                resolveInfo = packageManager.resolveActivity(intent, 65536);
                try {
                    if (queryIntentActivities != null && resolveInfo != null) {
                        for (int i = 0; i < queryIntentActivities.size(); i++) {
                            ResolveInfo resolveInfo2 = queryIntentActivities.get(i);
                            if (resolveInfo == null || !resolveInfo.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                            }
                        }
                    }
                    arrayList.addAll(queryIntentActivities);
                } catch (Throwable th) {
                    th = th;
                    C2341q.m14740g().m7095a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
                    return resolveInfo;
                }
                resolveInfo = null;
            }
        } catch (Throwable th2) {
            th = th2;
            resolveInfo = null;
        }
        return resolveInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x012b, code lost:
        if (m7835a(r0) == null) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0110  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent m7831a(java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3138fh.m7831a(java.util.Map):android.content.Intent");
    }
}
