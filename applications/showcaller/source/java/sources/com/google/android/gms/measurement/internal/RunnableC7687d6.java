package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC7441kc;
/* renamed from: com.google.android.gms.measurement.internal.d6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/d6.class */
final class RunnableC7687d6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7441kc f35177d;

    /* renamed from: e */
    final /* synthetic */ AppMeasurementDynamiteService f35178e;

    public RunnableC7687d6(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7441kc abstractC7441kc) {
        this.f35178e = appMeasurementDynamiteService;
        this.f35177d = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35178e.f34963d.m6032R().m6272U(this.f35177d);
    }
}
