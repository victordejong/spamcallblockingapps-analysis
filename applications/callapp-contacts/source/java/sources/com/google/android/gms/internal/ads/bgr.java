package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgr.class */
public final class bgr implements dsi<bgo> {

    /* renamed from: a */
    private final dsv<String> f43886a;

    /* renamed from: b */
    private final dsv<bcf> f43887b;

    /* renamed from: c */
    private final dsv<bcr> f43888c;

    private bgr(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        this.f43886a = dsvVar;
        this.f43887b = dsvVar2;
        this.f43888c = dsvVar3;
    }

    /* renamed from: a */
    public static bgr m17876a(dsv<String> dsvVar, dsv<bcf> dsvVar2, dsv<bcr> dsvVar3) {
        return new bgr(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgo(this.f43886a.mo14005a(), this.f43887b.mo14005a(), this.f43888c.mo14005a());
    }
}
