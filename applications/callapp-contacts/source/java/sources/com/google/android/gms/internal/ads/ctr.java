package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctr.class */
public final class ctr implements dsi<cti> {

    /* renamed from: a */
    private final dsv<dbs> f46524a;

    /* renamed from: b */
    private final dsv<ScheduledExecutorService> f46525b;

    /* renamed from: c */
    private final dsv<ctl> f46526c;

    private ctr(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<ctl> dsvVar3) {
        this.f46524a = dsvVar;
        this.f46525b = dsvVar2;
        this.f46526c = dsvVar3;
    }

    /* renamed from: a */
    public static ctr m17232a(dsv<dbs> dsvVar, dsv<ScheduledExecutorService> dsvVar2, dsv<ctl> dsvVar3) {
        return new ctr(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cti(this.f46524a.mo14005a(), this.f46525b.mo14005a(), this.f46526c.mo14005a());
    }
}
