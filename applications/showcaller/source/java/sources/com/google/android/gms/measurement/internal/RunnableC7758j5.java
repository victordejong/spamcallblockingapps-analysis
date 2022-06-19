package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.j5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j5.class */
final class RunnableC7758j5 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35355d;

    /* renamed from: e */
    final /* synthetic */ BinderC7782l5 f35356e;

    public RunnableC7758j5(BinderC7782l5 binderC7782l5, zzp zzpVar) {
        this.f35356e = binderC7782l5;
        this.f35355d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35356e.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35356e.f35423d;
        c7819o92.m6127s(this.f35355d);
    }
}
