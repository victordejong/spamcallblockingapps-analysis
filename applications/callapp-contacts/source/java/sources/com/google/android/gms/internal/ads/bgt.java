package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgt.class */
public final class bgt implements dsi<bgq> {

    /* renamed from: a */
    private final dsv<String> f43893a;

    /* renamed from: b */
    private final dsv<bcf> f43894b;

    /* renamed from: c */
    private final dsv<bcr> f43895c;

    private bgt(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f43893a = dsvVar;
        this.f43894b = dsvVar2;
        this.f43895c = dsvVar3;
    }

    /* renamed from: a */
    public static bgt m17874a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgt(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgq(this.f43893a.mo14005a(), this.f43894b.mo14005a(), this.f43895c.mo14005a());
    }
}
