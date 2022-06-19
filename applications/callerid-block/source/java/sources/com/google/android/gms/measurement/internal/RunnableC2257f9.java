package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f9.class */
final class RunnableC2257f9 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ z9 f10195b;

    /* renamed from: c */
    final /* synthetic */ AppMeasurementDynamiteService f10196c;

    RunnableC2257f9(AppMeasurementDynamiteService appMeasurementDynamiteService, z9 z9Var) {
        this.f10196c = appMeasurementDynamiteService;
        this.f10195b = z9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10196c.b.F().u(this.f10195b);
    }
}
