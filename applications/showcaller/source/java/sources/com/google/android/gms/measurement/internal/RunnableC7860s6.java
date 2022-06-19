package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.s6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/s6.class */
public final class RunnableC7860s6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7704f f35671d;

    /* renamed from: e */
    final /* synthetic */ int f35672e;

    /* renamed from: f */
    final /* synthetic */ long f35673f;

    /* renamed from: g */
    final /* synthetic */ boolean f35674g;

    /* renamed from: h */
    final /* synthetic */ C7893v6 f35675h;

    public RunnableC7860s6(C7893v6 c7893v6, C7704f c7704f, int i, long j, boolean z) {
        this.f35675h = c7893v6;
        this.f35671d = c7704f;
        this.f35672e = i;
        this.f35673f = j;
        this.f35674g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35675h.m5918W(this.f35671d);
        C7893v6.m5931J(this.f35675h, this.f35671d, this.f35672e, this.f35673f, false, this.f35674g);
    }
}
