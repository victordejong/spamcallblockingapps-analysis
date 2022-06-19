package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.ig */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ig.class */
final class RunnableC4380ig implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4132mj f19140a;

    /* renamed from: b */
    private final /* synthetic */ String f19141b;

    /* renamed from: c */
    private final /* synthetic */ String f19142c;

    /* renamed from: d */
    private final /* synthetic */ AppMeasurementDynamiteService f19143d;

    public RunnableC4380ig(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC4132mj abstractC4132mj, String str, String str2) {
        this.f19143d = appMeasurementDynamiteService;
        this.f19140a = abstractC4132mj;
        this.f19141b = str;
        this.f19142c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19143d.f18566a.m4538t().m4331a(this.f19140a, this.f19141b, this.f19142c);
    }
}
