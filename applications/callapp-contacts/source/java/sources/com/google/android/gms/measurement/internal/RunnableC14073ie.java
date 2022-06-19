package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.ie */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ie.class */
final class RunnableC14073ie implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13706nc f51875a;

    /* renamed from: b */
    final /* synthetic */ String f51876b;

    /* renamed from: c */
    final /* synthetic */ String f51877c;

    /* renamed from: d */
    final /* synthetic */ boolean f51878d;

    /* renamed from: e */
    final /* synthetic */ AppMeasurementDynamiteService f51879e;

    public RunnableC14073ie(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13706nc abstractC13706nc, String str, String str2, boolean z) {
        this.f51879e = appMeasurementDynamiteService;
        this.f51875a = abstractC13706nc;
        this.f51876b = str;
        this.f51877c = str2;
        this.f51878d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51879e.f51185a.m11984m().m11754a(this.f51875a, this.f51876b, this.f51877c, this.f51878d);
    }
}
