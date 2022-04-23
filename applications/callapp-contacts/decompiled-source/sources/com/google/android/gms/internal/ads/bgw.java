package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgw.class */
public final class bgw implements dsi<bgx> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f24420a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bcf> f24421b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bcr> f24422c;

    private bgw(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f24420a = dsvVar;
        this.f24421b = dsvVar2;
        this.f24422c = dsvVar3;
    }

    public static bgw a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgw(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgx(this.f24420a.a(), this.f24421b.a(), this.f24422c.a());
    }
}
