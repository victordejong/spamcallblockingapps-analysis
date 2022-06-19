package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.e6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e6.class */
final class RunnableC2246e6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ long f10158b;

    /* renamed from: c */
    final /* synthetic */ v6 f10159c;

    RunnableC2246e6(v6 v6Var, long j) {
        this.f10159c = v6Var;
        this.f10158b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10159c.r(this.f10158b, true);
        ((m5) this.f10159c).a.R().T(new AtomicReference());
    }
}
