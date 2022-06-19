package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.he */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/he.class */
final class RunnableC14046he implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13706nc f51774a;

    /* renamed from: b */
    final /* synthetic */ zzas f51775b;

    /* renamed from: c */
    final /* synthetic */ String f51776c;

    /* renamed from: d */
    final /* synthetic */ AppMeasurementDynamiteService f51777d;

    public RunnableC14046he(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13706nc abstractC13706nc, zzas zzasVar, String str) {
        this.f51777d = appMeasurementDynamiteService;
        this.f51774a = abstractC13706nc;
        this.f51775b = zzasVar;
        this.f51776c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51777d.f51185a.m11984m().m11756a(this.f51774a, this.f51775b, this.f51776c);
    }
}
