package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC2102cc;
/* renamed from: com.google.android.gms.measurement.internal.x9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x9.class */
final class RunnableC2369x9 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2102cc f10481b;

    /* renamed from: c */
    final /* synthetic */ String f10482c;

    /* renamed from: d */
    final /* synthetic */ String f10483d;

    /* renamed from: e */
    final /* synthetic */ AppMeasurementDynamiteService f10484e;

    RunnableC2369x9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC2102cc abstractC2102cc, String str, String str2) {
        this.f10484e = appMeasurementDynamiteService;
        this.f10481b = abstractC2102cc;
        this.f10482c = str;
        this.f10483d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10484e.b.R().O(this.f10481b, this.f10482c, this.f10483d);
    }
}
