package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.u4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u4.class */
final class RunnableC2346u4 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzaa f10425b;

    /* renamed from: c */
    final /* synthetic */ zzp f10426c;

    /* renamed from: d */
    final /* synthetic */ l5 f10427d;

    RunnableC2346u4(l5 l5Var, zzaa zzaaVar, zzp zzpVar) {
        this.f10427d = l5Var;
        this.f10425b = zzaaVar;
        this.f10426c = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f10427d).k();
        if (this.f10425b.d.a() == null) {
            l5.w4(this.f10427d).y(this.f10425b, this.f10426c);
        } else {
            l5.w4(this.f10427d).w(this.f10425b, this.f10426c);
        }
    }
}
