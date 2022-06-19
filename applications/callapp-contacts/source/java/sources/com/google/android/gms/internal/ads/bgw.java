package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgw.class */
public final class bgw implements dsi<bgx> {

    /* renamed from: a */
    private final dsv<String> f43901a;

    /* renamed from: b */
    private final dsv<bcf> f43902b;

    /* renamed from: c */
    private final dsv<bcr> f43903c;

    private bgw(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f43901a = dsvVar;
        this.f43902b = dsvVar2;
        this.f43903c = dsvVar3;
    }

    /* renamed from: a */
    public static bgw m17872a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgw(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgx(this.f43901a.mo14005a(), this.f43902b.mo14005a(), this.f43903c.mo14005a());
    }
}
