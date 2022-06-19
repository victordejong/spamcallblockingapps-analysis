package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csn.class */
public final class csn implements dsi<ScheduledExecutorService> {

    /* renamed from: a */
    private final dsv<ThreadFactory> f46486a;

    public csn(dsv<ThreadFactory> dsvVar) {
        this.f46486a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        ThreadFactory mo14005a = this.f46486a.mo14005a();
        cxa m17086a = cwz.m17086a();
        int i = cxh.f46724b;
        return (ScheduledExecutorService) dso.m15764b(m17086a.mo17084a(mo14005a));
    }
}
