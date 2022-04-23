package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgr.class */
public final class bgr implements dsi<bgo> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f24405a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bcf> f24406b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bcr> f24407c;

    private bgr(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f24405a = dsvVar;
        this.f24406b = dsvVar2;
        this.f24407c = dsvVar3;
    }

    public static bgr a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgr(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgo(this.f24405a.a(), this.f24406b.a(), this.f24407c.a());
    }
}
