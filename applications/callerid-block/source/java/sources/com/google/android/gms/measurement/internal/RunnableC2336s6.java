package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.s6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/s6.class */
final class RunnableC2336s6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2250f f10395b;

    /* renamed from: c */
    final /* synthetic */ int f10396c;

    /* renamed from: d */
    final /* synthetic */ long f10397d;

    /* renamed from: e */
    final /* synthetic */ boolean f10398e;

    /* renamed from: f */
    final /* synthetic */ v6 f10399f;

    RunnableC2336s6(v6 v6Var, C2250f c2250f, int i, long j, boolean z) {
        this.f10399f = v6Var;
        this.f10395b = c2250f;
        this.f10396c = i;
        this.f10397d = j;
        this.f10398e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10399f.W(this.f10395b);
        v6.J(this.f10399f, this.f10395b, this.f10396c, this.f10397d, false, this.f10398e);
    }
}
