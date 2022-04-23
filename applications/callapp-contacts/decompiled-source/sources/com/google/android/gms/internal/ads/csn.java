package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csn.class */
public final class csn implements dsi<ScheduledExecutorService> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ThreadFactory> f26342a;

    public csn(dsv<ThreadFactory> dsvVar) {
        this.f26342a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        ThreadFactory a2 = this.f26342a.a();
        cxa a3 = cwz.a();
        int i = cxh.f26533b;
        return (ScheduledExecutorService) dso.b(a3.a(a2));
    }
}
