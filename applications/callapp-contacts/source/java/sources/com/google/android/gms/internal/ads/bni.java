package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bni.class */
public final class bni implements dsi<ApplicationInfo> {

    /* renamed from: a */
    private final dsv<Context> f44336a;

    private bni(dsv<Context> dsvVar) {
        this.f44336a = dsvVar;
    }

    /* renamed from: a */
    public static ApplicationInfo m17726a(Context context) {
        return (ApplicationInfo) dso.m15764b(context.getApplicationInfo());
    }

    /* renamed from: a */
    public static bni m17725a(dsv<Context> dsvVar) {
        return new bni(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17726a(this.f44336a.mo14005a());
    }
}
