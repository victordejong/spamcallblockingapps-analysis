package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bff.class */
public final class bff implements dsi<bfe> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f24321a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bfi> f24322b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bfs> f24323c;

    public bff(dsv<dbs> dsvVar, dsv<bfi> dsvVar2, dsv<bfs> dsvVar3) {
        this.f24321a = dsvVar;
        this.f24322b = dsvVar2;
        this.f24323c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bfe(this.f24321a.a(), this.f24322b.a(), this.f24323c.a());
    }
}
