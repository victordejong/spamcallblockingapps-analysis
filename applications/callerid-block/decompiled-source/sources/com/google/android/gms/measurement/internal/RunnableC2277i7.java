package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.i7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i7.class */
final class RunnableC2277i7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2235c7 f10241b;

    /* renamed from: c */
    final /* synthetic */ long f10242c;

    /* renamed from: d */
    final /* synthetic */ k7 f10243d;

    RunnableC2277i7(k7 k7Var, C2235c7 c7Var, long j) {
        this.f10243d = k7Var;
        this.f10241b = c7Var;
        this.f10242c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k7.H(this.f10243d, this.f10241b, false, this.f10242c);
        k7 k7Var = this.f10243d;
        k7Var.e = null;
        ((m5) k7Var).a.R().W((C2235c7) null);
    }
}
