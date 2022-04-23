package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f5.class */
final class RunnableC2253f5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzas f10183b;

    /* renamed from: c */
    final /* synthetic */ String f10184c;

    /* renamed from: d */
    final /* synthetic */ l5 f10185d;

    RunnableC2253f5(l5 l5Var, zzas zzasVar, String str) {
        this.f10185d = l5Var;
        this.f10183b = zzasVar;
        this.f10184c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f10185d).k();
        l5.w4(this.f10185d).g0(this.f10183b, this.f10184c);
    }
}
