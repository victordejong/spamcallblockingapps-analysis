package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.gd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gd.class */
final class RunnableC14018gd implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13706nc f51686a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f51687b;

    public RunnableC14018gd(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13706nc abstractC13706nc) {
        this.f51687b = appMeasurementDynamiteService;
        this.f51686a = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51687b.f51185a.m11984m().m11757a(this.f51686a);
    }
}
