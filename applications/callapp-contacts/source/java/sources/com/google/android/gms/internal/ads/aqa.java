package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqa.class */
public final class aqa implements dsi<ayi<atu>> {

    /* renamed from: a */
    private final dsv<aue> f43001a;

    /* renamed from: b */
    private final dsv<Executor> f43002b;

    private aqa(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f43001a = dsvVar;
        this.f43002b = dsvVar2;
    }

    /* renamed from: a */
    public static aqa m18470a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new aqa(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f43001a.mo14005a(), this.f43002b.mo14005a()));
    }
}
