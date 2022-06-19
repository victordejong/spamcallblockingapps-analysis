package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjq.class */
public final class bjq implements dsi<ayi<eir>> {

    /* renamed from: a */
    private final dsv<bjz> f44114a;

    /* renamed from: b */
    private final dsv<Executor> f44115b;

    private bjq(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44114a = dsvVar;
        this.f44115b = dsvVar2;
    }

    /* renamed from: a */
    public static bjq m17803a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjq(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44114a.mo14005a(), this.f44115b.mo14005a()));
    }
}
