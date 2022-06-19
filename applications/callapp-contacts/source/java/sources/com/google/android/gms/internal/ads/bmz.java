package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmz.class */
public final class bmz implements dsi<bmw> {

    /* renamed from: a */
    private final dsv<dbs> f44320a;

    /* renamed from: b */
    private final dsv<dbs> f44321b;

    /* renamed from: c */
    private final dsv<boh> f44322c;

    /* renamed from: d */
    private final dsv<bpk> f44323d;

    private bmz(dsv<dbs> dsvVar, dsv<dbs> dsvVar2, dsv<boh> dsvVar3, dsv<bpk> dsvVar4) {
        this.f44320a = dsvVar;
        this.f44321b = dsvVar2;
        this.f44322c = dsvVar3;
        this.f44323d = dsvVar4;
    }

    /* renamed from: a */
    public static bmz m17730a(dsv<dbs> dsvVar, dsv<dbs> dsvVar2, dsv<boh> dsvVar3, dsv<bpk> dsvVar4) {
        return new bmz(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bmw(this.f44320a.mo14005a(), this.f44321b.mo14005a(), this.f44322c.mo14005a(), dsj.m15773b(this.f44323d));
    }
}
