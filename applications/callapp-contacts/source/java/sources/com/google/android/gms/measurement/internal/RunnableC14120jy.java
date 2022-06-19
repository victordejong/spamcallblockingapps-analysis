package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.jy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jy.class */
final class RunnableC14120jy implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13706nc f52008a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f52009b;

    public RunnableC14120jy(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13706nc abstractC13706nc) {
        this.f52009b = appMeasurementDynamiteService;
        this.f52008a = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f52009b.f51185a.m11988g().m11594a(this.f52008a, this.f52009b.f51185a.m11980q());
    }
}
