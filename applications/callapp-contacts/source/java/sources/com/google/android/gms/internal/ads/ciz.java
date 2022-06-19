package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ciz.class */
public final class ciz implements chb<civ> {

    /* renamed from: a */
    private AbstractC12877rh f45884a;

    /* renamed from: b */
    private ScheduledExecutorService f45885b;

    /* renamed from: c */
    private Context f45886c;

    public ciz(AbstractC12877rh abstractC12877rh, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f45884a = abstractC12877rh;
        this.f45885b = scheduledExecutorService;
        this.f45886c = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<civ> mo17449a() {
        return daj.m16942a(dbh.m16902a(this.f45884a.mo14212a(), ((Long) ekb.m14831e().m18571a(C12187aq.f42778ci)).longValue(), TimeUnit.MILLISECONDS, this.f45885b), cix.f45882a, C13091zd.f50118a);
    }
}
