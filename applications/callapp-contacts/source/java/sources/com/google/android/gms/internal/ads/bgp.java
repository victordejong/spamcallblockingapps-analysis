package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgp.class */
public final class bgp implements dsi<bgk> {

    /* renamed from: a */
    private final dsv<bcf> f43881a;

    /* renamed from: b */
    private final dsv<bcr> f43882b;

    private bgp(dsv<bcf> dsvVar, dsv<bcr> dsvVar2) {
        this.f43881a = dsvVar;
        this.f43882b = dsvVar2;
    }

    /* renamed from: a */
    public static bgp m17877a(dsv<bcf> dsvVar, dsv<bcr> dsvVar2) {
        return new bgp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgk(this.f43881a.mo14005a(), this.f43882b.mo14005a());
    }
}
