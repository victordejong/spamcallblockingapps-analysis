package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.r6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r6.class */
final class RunnableC2330r6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2250f f10378b;

    /* renamed from: c */
    final /* synthetic */ int f10379c;

    /* renamed from: d */
    final /* synthetic */ long f10380d;

    /* renamed from: e */
    final /* synthetic */ boolean f10381e;

    /* renamed from: f */
    final /* synthetic */ v6 f10382f;

    RunnableC2330r6(v6 v6Var, C2250f c2250f, int i, long j, boolean z) {
        this.f10382f = v6Var;
        this.f10378b = c2250f;
        this.f10379c = i;
        this.f10380d = j;
        this.f10381e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10382f.W(this.f10378b);
        v6.J(this.f10382f, this.f10378b, this.f10379c, this.f10380d, false, this.f10381e);
    }
}
