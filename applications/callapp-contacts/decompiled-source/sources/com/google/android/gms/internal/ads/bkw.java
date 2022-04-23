package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkw.class */
public final class bkw implements dsi<bkx> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<blf> f24611a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bln> f24612b;

    private bkw(dsv<blf> dsvVar, dsv<bln> dsvVar2) {
        this.f24611a = dsvVar;
        this.f24612b = dsvVar2;
    }

    public static bkw a(dsv<blf> dsvVar, dsv<bln> dsvVar2) {
        return new bkw(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bkx(this.f24611a.a(), this.f24612b.a());
    }
}
