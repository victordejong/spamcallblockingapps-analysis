package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC2102cc;
/* renamed from: com.google.android.gms.measurement.internal.y9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y9.class */
final class RunnableC2378y9 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2102cc f10508b;

    /* renamed from: c */
    final /* synthetic */ AppMeasurementDynamiteService f10509c;

    RunnableC2378y9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC2102cc abstractC2102cc) {
        this.f10509c = appMeasurementDynamiteService;
        this.f10508b = abstractC2102cc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10509c.b.G().V(this.f10508b, this.f10509c.b.h());
    }
}
