package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.q6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/q6.class */
public final class RunnableC7838q6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7704f f35597d;

    /* renamed from: e */
    final /* synthetic */ long f35598e;

    /* renamed from: f */
    final /* synthetic */ int f35599f;

    /* renamed from: g */
    final /* synthetic */ long f35600g;

    /* renamed from: h */
    final /* synthetic */ boolean f35601h;

    /* renamed from: i */
    final /* synthetic */ C7893v6 f35602i;

    public RunnableC7838q6(C7893v6 c7893v6, C7704f c7704f, long j, int i, long j2, boolean z) {
        this.f35602i = c7893v6;
        this.f35597d = c7704f;
        this.f35598e = j;
        this.f35599f = i;
        this.f35600g = j2;
        this.f35601h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35602i.m5918W(this.f35597d);
        this.f35602i.m5905r(this.f35598e, false);
        C7893v6.m5931J(this.f35602i, this.f35597d, this.f35599f, this.f35600g, true, this.f35601h);
    }
}
