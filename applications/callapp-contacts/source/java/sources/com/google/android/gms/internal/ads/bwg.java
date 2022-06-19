package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwg.class */
public final class bwg implements dsi<bwe> {

    /* renamed from: a */
    private final dsv<Context> f44936a;

    /* renamed from: b */
    private final dsv<Executor> f44937b;

    /* renamed from: c */
    private final dsv<bhx> f44938c;

    public bwg(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<bhx> dsvVar3) {
        this.f44936a = dsvVar;
        this.f44937b = dsvVar2;
        this.f44938c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bwe(this.f44936a.mo14005a(), this.f44937b.mo14005a(), this.f44938c.mo14005a());
    }
}
