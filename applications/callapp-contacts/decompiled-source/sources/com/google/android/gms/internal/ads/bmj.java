package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmj.class */
public final class bmj implements dsi<bmf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<blt> f24701a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<afq> f24702b;

    private bmj(dsv<blt> dsvVar, dsv<afq> dsvVar2) {
        this.f24701a = dsvVar;
        this.f24702b = dsvVar2;
    }

    public static bmj a(dsv<blt> dsvVar, dsv<afq> dsvVar2) {
        return new bmj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bmf(this.f24701a.a(), this.f24702b.a());
    }
}
