package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmj.class */
public final class bmj implements dsi<bmf> {

    /* renamed from: a */
    private final dsv<blt> f44275a;

    /* renamed from: b */
    private final dsv<afq> f44276b;

    private bmj(dsv<blt> dsvVar, dsv<afq> dsvVar2) {
        this.f44275a = dsvVar;
        this.f44276b = dsvVar2;
    }

    /* renamed from: a */
    public static bmj m17731a(dsv<blt> dsvVar, dsv<afq> dsvVar2) {
        return new bmj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bmf(this.f44275a.mo14005a(), this.f44276b.mo14005a());
    }
}
