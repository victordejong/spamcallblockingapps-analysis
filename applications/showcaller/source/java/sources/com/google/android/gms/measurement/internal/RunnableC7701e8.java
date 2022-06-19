package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC7441kc;
/* renamed from: com.google.android.gms.measurement.internal.e8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e8.class */
final class RunnableC7701e8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7441kc f35224d;

    /* renamed from: e */
    final /* synthetic */ String f35225e;

    /* renamed from: f */
    final /* synthetic */ String f35226f;

    /* renamed from: g */
    final /* synthetic */ boolean f35227g;

    /* renamed from: h */
    final /* synthetic */ AppMeasurementDynamiteService f35228h;

    public RunnableC7701e8(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7441kc abstractC7441kc, String str, String str2, boolean z) {
        this.f35228h = appMeasurementDynamiteService;
        this.f35224d = abstractC7441kc;
        this.f35225e = str;
        this.f35226f = str2;
        this.f35227g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35228h.f34963d.m6032R().m6276Q(this.f35224d, this.f35225e, this.f35226f, this.f35227g);
    }
}
