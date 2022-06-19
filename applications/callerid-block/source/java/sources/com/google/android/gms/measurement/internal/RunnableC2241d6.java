package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC2102cc;
/* renamed from: com.google.android.gms.measurement.internal.d6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d6.class */
final class RunnableC2241d6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2102cc f10146b;

    /* renamed from: c */
    final /* synthetic */ AppMeasurementDynamiteService f10147c;

    RunnableC2241d6(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC2102cc abstractC2102cc) {
        this.f10147c = appMeasurementDynamiteService;
        this.f10146b = abstractC2102cc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10147c.b.R().U(this.f10146b);
    }
}
