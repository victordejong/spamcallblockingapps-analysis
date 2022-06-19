package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.jx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jx.class */
final class RunnableC14119jx implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13706nc f52004a;

    /* renamed from: b */
    final /* synthetic */ String f52005b;

    /* renamed from: c */
    final /* synthetic */ String f52006c;

    /* renamed from: d */
    final /* synthetic */ AppMeasurementDynamiteService f52007d;

    public RunnableC14119jx(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13706nc abstractC13706nc, String str, String str2) {
        this.f52007d = appMeasurementDynamiteService;
        this.f52004a = abstractC13706nc;
        this.f52005b = str;
        this.f52006c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f52007d.f51185a.m11984m().m11755a(this.f52004a, this.f52005b, this.f52006c);
    }
}
