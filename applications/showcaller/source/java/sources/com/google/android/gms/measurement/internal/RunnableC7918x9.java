package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC7441kc;
/* renamed from: com.google.android.gms.measurement.internal.x9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/x9.class */
final class RunnableC7918x9 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7441kc f35802d;

    /* renamed from: e */
    final /* synthetic */ String f35803e;

    /* renamed from: f */
    final /* synthetic */ String f35804f;

    /* renamed from: g */
    final /* synthetic */ AppMeasurementDynamiteService f35805g;

    public RunnableC7918x9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7441kc abstractC7441kc, String str, String str2) {
        this.f35805g = appMeasurementDynamiteService;
        this.f35802d = abstractC7441kc;
        this.f35803e = str;
        this.f35804f = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35805g.f34963d.m6032R().m6278O(this.f35802d, this.f35803e, this.f35804f);
    }
}
