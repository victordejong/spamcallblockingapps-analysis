package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.e5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e5.class */
final class RunnableC2245e5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzas f10155b;

    /* renamed from: c */
    final /* synthetic */ zzp f10156c;

    /* renamed from: d */
    final /* synthetic */ l5 f10157d;

    RunnableC2245e5(l5 l5Var, zzas zzasVar, zzp zzpVar) {
        this.f10157d = l5Var;
        this.f10155b = zzasVar;
        this.f10156c = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzas r1 = this.f10157d.r1(this.f10155b, this.f10156c);
        l5.w4(this.f10157d).k();
        l5.w4(this.f10157d).i0(r1, this.f10156c);
    }
}
