package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnp.class */
public final class bnp implements dsi<PackageInfo> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24760a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ApplicationInfo> f24761b;

    private bnp(dsv<Context> dsvVar, dsv<ApplicationInfo> dsvVar2) {
        this.f24760a = dsvVar;
        this.f24761b = dsvVar2;
    }

    public static bnp a(dsv<Context> dsvVar, dsv<ApplicationInfo> dsvVar2) {
        return new bnp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return bnc.a(this.f24760a.a(), this.f24761b.a());
    }
}
