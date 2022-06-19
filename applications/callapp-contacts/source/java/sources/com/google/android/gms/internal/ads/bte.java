package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bte.class */
public final class bte implements dsi<bta> {

    /* renamed from: a */
    private final dsv<akt> f44693a;

    /* renamed from: b */
    private final dsv<Context> f44694b;

    /* renamed from: c */
    private final dsv<Executor> f44695c;

    /* renamed from: d */
    private final dsv<bif> f44696d;

    public bte(dsv<akt> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<bif> dsvVar4) {
        this.f44693a = dsvVar;
        this.f44694b = dsvVar2;
        this.f44695c = dsvVar3;
        this.f44696d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bta(this.f44693a.mo14005a(), this.f44694b.mo14005a(), this.f44695c.mo14005a(), this.f44696d.mo14005a());
    }
}
