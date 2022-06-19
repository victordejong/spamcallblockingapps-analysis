package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoa.class */
public final class aoa {

    /* renamed from: a */
    final Executor f42506a;

    /* renamed from: b */
    final ScheduledExecutorService f42507b;

    /* renamed from: c */
    final dbt<anv> f42508c;

    /* renamed from: d */
    volatile boolean f42509d = true;

    public aoa(Executor executor, ScheduledExecutorService scheduledExecutorService, dbt<anv> dbtVar) {
        this.f42506a = executor;
        this.f42507b = scheduledExecutorService;
        this.f42508c = dbtVar;
    }
}
