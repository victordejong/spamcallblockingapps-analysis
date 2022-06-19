package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.jf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jf.class */
final class RunnableC14101jf implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14121jz f51942a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f51943b;

    public RunnableC14101jf(AppMeasurementDynamiteService appMeasurementDynamiteService, C14121jz c14121jz) {
        this.f51943b = appMeasurementDynamiteService;
        this.f51942a = c14121jz;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51943b.f51185a.m11989f().m11867a(this.f51942a);
    }
}
