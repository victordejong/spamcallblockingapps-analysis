package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjb.class */
public final class cjb implements dsi<ciz> {

    /* renamed from: a */
    private final dsv<AbstractC12877rh> f45895a;

    /* renamed from: b */
    private final dsv<ScheduledExecutorService> f45896b;

    /* renamed from: c */
    private final dsv<Context> f45897c;

    public cjb(dsv<AbstractC12877rh> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<Context> dsvVar3) {
        this.f45895a = dsvVar;
        this.f45896b = dsvVar2;
        this.f45897c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ciz(this.f45895a.mo14005a(), this.f45896b.mo14005a(), this.f45897c.mo14005a());
    }
}
