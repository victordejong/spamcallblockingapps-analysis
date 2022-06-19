package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zm2.class */
public final class zm2 implements cj3<ScheduledExecutorService> {

    /* renamed from: a */
    private final pj3<ThreadFactory> f33000a;

    public zm2(pj3<ThreadFactory> pj3Var) {
        this.f33000a = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        yt2.m8686a();
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, this.f33000a.mo8141b()));
        kj3.m13879b(unconfigurableScheduledExecutorService);
        return unconfigurableScheduledExecutorService;
    }
}
