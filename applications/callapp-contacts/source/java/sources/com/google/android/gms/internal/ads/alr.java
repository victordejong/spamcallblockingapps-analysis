package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alr.class */
public final class alr implements dsi<atx> {

    /* renamed from: a */
    private final dsv<ScheduledExecutorService> f42367a;

    /* renamed from: b */
    private final dsv<AbstractC12102f> f42368b;

    public alr(dsv<ScheduledExecutorService> dsvVar, dsv<AbstractC12102f> dsvVar2) {
        this.f42367a = dsvVar;
        this.f42368b = dsvVar2;
    }

    /* renamed from: a */
    public static atx m18579a(ScheduledExecutorService scheduledExecutorService, AbstractC12102f abstractC12102f) {
        return (atx) dso.m15764b(new atx(scheduledExecutorService, abstractC12102f));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18579a(this.f42367a.mo14005a(), this.f42368b.mo14005a());
    }
}
