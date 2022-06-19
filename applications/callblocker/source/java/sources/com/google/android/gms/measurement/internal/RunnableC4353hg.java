package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.hg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hg.class */
final class RunnableC4353hg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4132mj f19057a;

    /* renamed from: b */
    private final /* synthetic */ AppMeasurementDynamiteService f19058b;

    public RunnableC4353hg(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC4132mj abstractC4132mj) {
        this.f19058b = appMeasurementDynamiteService;
        this.f19057a = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19058b.f18566a.m4538t().m4333a(this.f19057a);
    }
}
