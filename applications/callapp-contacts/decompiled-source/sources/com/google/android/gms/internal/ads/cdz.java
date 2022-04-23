package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdz.class */
public final class cdz implements dsi<cds<cdn>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cdm> f25666a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<f> f25667b;

    public cdz(dsv<cdm> dsvVar, dsv<f> dsvVar2) {
        this.f25666a = dsvVar;
        this.f25667b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (cds) dso.b(new cds(this.f25666a.a(), 10000L, this.f25667b.a()));
    }
}
