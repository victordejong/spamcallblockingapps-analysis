package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqr.class */
public final class bqr implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final dsv<bqz> f44510a;

    /* renamed from: b */
    private final dsv<Executor> f44511b;

    private bqr(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44510a = dsvVar;
        this.f44511b = dsvVar2;
    }

    /* renamed from: a */
    public static bqr m17666a(dsv<bqz> dsvVar, dsv<Executor> dsvVar2) {
        return new bqr(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44510a.mo14005a(), this.f44511b.mo14005a()));
    }
}
