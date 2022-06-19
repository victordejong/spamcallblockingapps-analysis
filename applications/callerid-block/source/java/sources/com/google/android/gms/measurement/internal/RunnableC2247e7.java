package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC2102cc;
/* renamed from: com.google.android.gms.measurement.internal.e7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e7.class */
final class RunnableC2247e7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2102cc f10160b;

    /* renamed from: c */
    final /* synthetic */ zzas f10161c;

    /* renamed from: d */
    final /* synthetic */ String f10162d;

    /* renamed from: e */
    final /* synthetic */ AppMeasurementDynamiteService f10163e;

    RunnableC2247e7(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC2102cc abstractC2102cc, zzas zzasVar, String str) {
        this.f10163e = appMeasurementDynamiteService;
        this.f10160b = abstractC2102cc;
        this.f10161c = zzasVar;
        this.f10162d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10163e.b.R().s(this.f10160b, this.f10161c, this.f10162d);
    }
}
