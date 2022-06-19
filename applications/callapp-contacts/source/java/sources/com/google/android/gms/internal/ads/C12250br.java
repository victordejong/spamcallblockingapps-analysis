package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.AbstractServiceConnectionC0460e;
import androidx.browser.customtabs.C0450c;
import androidx.browser.customtabs.C0462f;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.br */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/br.class */
public final class C12250br implements dsw {

    /* renamed from: a */
    public C0462f f44525a;

    /* renamed from: b */
    public C0450c f44526b;

    /* renamed from: c */
    public AbstractServiceConnectionC0460e f44527c;

    /* renamed from: d */
    public AbstractC12253bu f44528d;

    /* renamed from: a */
    public static boolean m17658a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(dsu.m15758a(context));
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dsw
    /* renamed from: a */
    public final void mo15756a() {
        this.f44526b = null;
        this.f44525a = null;
        AbstractC12253bu abstractC12253bu = this.f44528d;
        if (abstractC12253bu != null) {
            abstractC12253bu.zztc();
        }
    }

    @Override // com.google.android.gms.internal.ads.dsw
    /* renamed from: a */
    public final void mo15755a(C0450c c0450c) {
        this.f44526b = c0450c;
        c0450c.m45478a();
        AbstractC12253bu abstractC12253bu = this.f44528d;
        if (abstractC12253bu != null) {
            abstractC12253bu.zztb();
        }
    }
}
