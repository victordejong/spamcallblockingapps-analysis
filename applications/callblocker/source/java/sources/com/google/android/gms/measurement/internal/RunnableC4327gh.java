package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC4132mj;
/* renamed from: com.google.android.gms.measurement.internal.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gh.class */
final class RunnableC4327gh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4132mj f18989a;

    /* renamed from: b */
    private final /* synthetic */ C4450r f18990b;

    /* renamed from: c */
    private final /* synthetic */ String f18991c;

    /* renamed from: d */
    private final /* synthetic */ AppMeasurementDynamiteService f18992d;

    public RunnableC4327gh(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC4132mj abstractC4132mj, C4450r c4450r, String str) {
        this.f18992d = appMeasurementDynamiteService;
        this.f18989a = abstractC4132mj;
        this.f18990b = c4450r;
        this.f18991c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18992d.f18566a.m4538t().m4332a(this.f18989a, this.f18990b, this.f18991c);
    }
}
