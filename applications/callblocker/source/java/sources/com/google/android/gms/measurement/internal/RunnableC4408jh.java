package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.jh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jh.class */
final class RunnableC4408jh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4132mj f19222a;

    /* renamed from: b */
    private final /* synthetic */ String f19223b;

    /* renamed from: c */
    private final /* synthetic */ String f19224c;

    /* renamed from: d */
    private final /* synthetic */ boolean f19225d;

    /* renamed from: e */
    private final /* synthetic */ AppMeasurementDynamiteService f19226e;

    public RunnableC4408jh(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC4132mj abstractC4132mj, String str, String str2, boolean z) {
        this.f19226e = appMeasurementDynamiteService;
        this.f19222a = abstractC4132mj;
        this.f19223b = str;
        this.f19224c = str2;
        this.f19225d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19226e.f18566a.m4538t().m4330a(this.f19222a, this.f19223b, this.f19224c, this.f19225d);
    }
}
