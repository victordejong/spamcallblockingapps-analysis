package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbu.class */
public final class cbu implements dsi<cbs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f25551a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bnv> f25552b;

    public cbu(dsv<Executor> dsvVar, dsv<bnv> dsvVar2) {
        this.f25551a = dsvVar;
        this.f25552b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cbs(this.f25551a.a(), this.f25552b.a());
    }
}
