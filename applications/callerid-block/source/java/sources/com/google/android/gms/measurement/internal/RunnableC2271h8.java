package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: com.google.android.gms.measurement.internal.h8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h8.class */
final class RunnableC2271h8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ j8 f10226b;

    RunnableC2271h8(j8 j8Var) {
        this.f10226b = j8Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k8 k8Var = this.f10226b.c;
        Context b = ((m5) k8Var).a.b();
        ((m5) this.f10226b.c).a.a();
        k8.x(k8Var, new ComponentName(b, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
