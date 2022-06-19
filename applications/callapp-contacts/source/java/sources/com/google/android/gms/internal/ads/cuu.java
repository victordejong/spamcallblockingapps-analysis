package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuu.class */
public final class cuu implements dsi<cus> {

    /* renamed from: a */
    private final dsv<Executor> f46596a;

    /* renamed from: b */
    private final dsv<C13090zc> f46597b;

    public cuu(dsv<Executor> dsvVar, dsv<C13090zc> dsvVar2) {
        this.f46596a = dsvVar;
        this.f46597b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cus(this.f46596a.mo14005a(), this.f46597b.mo14005a());
    }
}
