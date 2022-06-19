package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.ka */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ka.class */
final class RunnableC4429ka implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4132mj f19299a;

    /* renamed from: b */
    private final /* synthetic */ AppMeasurementDynamiteService f19300b;

    public RunnableC4429ka(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC4132mj abstractC4132mj) {
        this.f19300b = appMeasurementDynamiteService;
        this.f19299a = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19300b.f18566a.m4547i().m4127a(this.f19299a, this.f19300b.f18566a.m4575A());
    }
}
