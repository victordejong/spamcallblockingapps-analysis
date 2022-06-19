package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnp.class */
public final class bnp implements dsi<PackageInfo> {

    /* renamed from: a */
    private final dsv<Context> f44342a;

    /* renamed from: b */
    private final dsv<ApplicationInfo> f44343b;

    private bnp(dsv<Context> dsvVar, dsv<ApplicationInfo> dsvVar2) {
        this.f44342a = dsvVar;
        this.f44343b = dsvVar2;
    }

    /* renamed from: a */
    public static bnp m17718a(dsv<Context> dsvVar, dsv<ApplicationInfo> dsvVar2) {
        return new bnp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return bnc.m17729a(this.f44342a.mo14005a(), this.f44343b.mo14005a());
    }
}
