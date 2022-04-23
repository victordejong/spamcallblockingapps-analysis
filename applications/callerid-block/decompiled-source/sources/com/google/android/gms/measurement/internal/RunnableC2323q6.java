package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.q6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q6.class */
final class RunnableC2323q6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2250f f10363b;

    /* renamed from: c */
    final /* synthetic */ long f10364c;

    /* renamed from: d */
    final /* synthetic */ int f10365d;

    /* renamed from: e */
    final /* synthetic */ long f10366e;

    /* renamed from: f */
    final /* synthetic */ boolean f10367f;

    /* renamed from: g */
    final /* synthetic */ v6 f10368g;

    RunnableC2323q6(v6 v6Var, C2250f fVar, long j, int i, long j2, boolean z) {
        this.f10368g = v6Var;
        this.f10363b = fVar;
        this.f10364c = j;
        this.f10365d = i;
        this.f10366e = j2;
        this.f10367f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10368g.W(this.f10363b);
        this.f10368g.r(this.f10364c, false);
        v6.J(this.f10368g, this.f10363b, this.f10365d, this.f10366e, true, this.f10367f);
    }
}
