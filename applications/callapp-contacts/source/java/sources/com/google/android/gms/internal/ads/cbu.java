package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbu.class */
public final class cbu implements dsi<cbs> {

    /* renamed from: a */
    private final dsv<Executor> f45472a;

    /* renamed from: b */
    private final dsv<bnv> f45473b;

    public cbu(dsv<Executor> dsvVar, dsv<bnv> dsvVar2) {
        this.f45472a = dsvVar;
        this.f45473b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cbs(this.f45472a.mo14005a(), this.f45473b.mo14005a());
    }
}
