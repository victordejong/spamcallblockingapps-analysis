package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ciz.class */
public final class ciz implements chb<civ> {

    /* renamed from: a  reason: collision with root package name */
    private rh f25919a;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledExecutorService f25920b;

    /* renamed from: c  reason: collision with root package name */
    private Context f25921c;

    public ciz(rh rhVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f25919a = rhVar;
        this.f25920b = scheduledExecutorService;
        this.f25921c = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<civ> a() {
        return daj.a(dbh.a(this.f25919a.a(), ((Long) ekb.e().a(aq.ci)).longValue(), TimeUnit.MILLISECONDS, this.f25920b), cix.f25917a, zd.f28573a);
    }
}
