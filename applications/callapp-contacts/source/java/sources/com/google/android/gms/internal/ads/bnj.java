package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnj.class */
public final class bnj implements dsi<ayi<auf>> {

    /* renamed from: a */
    private final dsv<bor> f44337a;

    /* renamed from: b */
    private final dsv<Executor> f44338b;

    private bnj(dsv<bor> dsvVar, dsv<Executor> dsvVar2) {
        this.f44337a = dsvVar;
        this.f44338b = dsvVar2;
    }

    /* renamed from: a */
    public static bnj m17724a(dsv<bor> dsvVar, dsv<Executor> dsvVar2) {
        return new bnj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44337a.mo14005a(), this.f44338b.mo14005a()));
    }
}
