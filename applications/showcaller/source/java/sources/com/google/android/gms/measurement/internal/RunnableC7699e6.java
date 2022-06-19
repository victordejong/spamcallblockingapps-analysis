package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.e6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e6.class */
public final class RunnableC7699e6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ long f35218d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35219e;

    public RunnableC7699e6(C7893v6 c7893v6, long j) {
        this.f35219e = c7893v6;
        this.f35218d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35219e.m5905r(this.f35218d, true);
        this.f35219e.f35460a.m6032R().m6273T(new AtomicReference<>());
    }
}
