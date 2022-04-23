package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.r4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r4.class */
final class RunnableC2328r4 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2353v5 f10372b;

    /* renamed from: c */
    final /* synthetic */ s4 f10373c;

    RunnableC2328r4(s4 s4Var, C2353v5 v5Var) {
        this.f10373c = s4Var;
        this.f10372b = v5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        s4.r(this.f10373c, this.f10372b);
        this.f10373c.y(this.f10372b.f10446g);
    }
}
