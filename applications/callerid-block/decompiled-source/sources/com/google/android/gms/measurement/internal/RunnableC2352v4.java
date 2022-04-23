package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.v4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v4.class */
final class RunnableC2352v4 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzaa f10438b;

    /* renamed from: c */
    final /* synthetic */ l5 f10439c;

    RunnableC2352v4(l5 l5Var, zzaa zzaaVar) {
        this.f10439c = l5Var;
        this.f10438b = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f10439c).k();
        if (this.f10438b.d.a() == null) {
            l5.w4(this.f10439c).x(this.f10438b);
        } else {
            l5.w4(this.f10439c).u(this.f10438b);
        }
    }
}
