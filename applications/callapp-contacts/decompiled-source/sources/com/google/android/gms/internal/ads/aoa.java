package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoa.class */
public final class aoa {

    /* renamed from: a  reason: collision with root package name */
    final Executor f23647a;

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f23648b;

    /* renamed from: c  reason: collision with root package name */
    final dbt<anv> f23649c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f23650d = true;

    public aoa(Executor executor, ScheduledExecutorService scheduledExecutorService, dbt<anv> dbtVar) {
        this.f23647a = executor;
        this.f23648b = scheduledExecutorService;
        this.f23649c = dbtVar;
    }
}
