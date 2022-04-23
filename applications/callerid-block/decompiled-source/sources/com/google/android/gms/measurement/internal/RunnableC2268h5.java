package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.h5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h5.class */
final class RunnableC2268h5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzkl f10219b;

    /* renamed from: c */
    final /* synthetic */ zzp f10220c;

    /* renamed from: d */
    final /* synthetic */ l5 f10221d;

    RunnableC2268h5(l5 l5Var, zzkl zzklVar, zzp zzpVar) {
        this.f10221d = l5Var;
        this.f10219b = zzklVar;
        this.f10220c = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f10221d).k();
        if (this.f10219b.a() == null) {
            l5.w4(this.f10221d).o(this.f10219b, this.f10220c);
        } else {
            l5.w4(this.f10221d).n(this.f10219b, this.f10220c);
        }
    }
}
