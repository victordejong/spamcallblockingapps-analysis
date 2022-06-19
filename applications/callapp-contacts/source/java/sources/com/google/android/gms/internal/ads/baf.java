package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baf.class */
public final class baf implements dsi<bag> {

    /* renamed from: a */
    private final dsv<atj> f43391a;

    /* renamed from: b */
    private final dsv<aye> f43392b;

    private baf(dsv<atj> dsvVar, dsv<aye> dsvVar2) {
        this.f43391a = dsvVar;
        this.f43392b = dsvVar2;
    }

    /* renamed from: a */
    public static baf m18280a(dsv<atj> dsvVar, dsv<aye> dsvVar2) {
        return new baf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bag(this.f43391a.mo14005a(), this.f43392b.mo14005a());
    }
}
