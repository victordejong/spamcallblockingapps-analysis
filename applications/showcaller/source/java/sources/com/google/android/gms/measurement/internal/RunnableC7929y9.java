package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC7441kc;
/* renamed from: com.google.android.gms.measurement.internal.y9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y9.class */
final class RunnableC7929y9 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7441kc f35832d;

    /* renamed from: e */
    final /* synthetic */ AppMeasurementDynamiteService f35833e;

    public RunnableC7929y9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7441kc abstractC7441kc) {
        this.f35833e = appMeasurementDynamiteService;
        this.f35832d = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35833e.f34963d.m6043G().m5980V(this.f35832d, this.f35833e.f34963d.m6023h());
    }
}
