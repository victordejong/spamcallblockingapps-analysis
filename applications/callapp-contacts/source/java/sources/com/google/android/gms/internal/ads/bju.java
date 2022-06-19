package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bju.class */
public final class bju implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final dsv<bjz> f44122a;

    /* renamed from: b */
    private final dsv<Executor> f44123b;

    private bju(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44122a = dsvVar;
        this.f44123b = dsvVar2;
    }

    /* renamed from: a */
    public static bju m17799a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bju(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44122a.mo14005a(), this.f44123b.mo14005a()));
    }
}
