package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cea.class */
public final class cea implements dsi<cdy> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25672a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bji> f25673b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f25674c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<String> f25675d;

    private cea(dsv<dbs> dsvVar, dsv<bji> dsvVar2, dsv<cpo> dsvVar3, dsv<String> dsvVar4) {
        this.f25672a = dsvVar;
        this.f25673b = dsvVar2;
        this.f25674c = dsvVar3;
        this.f25675d = dsvVar4;
    }

    public static cea a(dsv<dbs> dsvVar, dsv<bji> dsvVar2, dsv<cpo> dsvVar3, dsv<String> dsvVar4) {
        return new cea(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cdy(this.f25672a.a(), this.f25673b.a(), this.f25674c.a(), this.f25675d.a());
    }
}
