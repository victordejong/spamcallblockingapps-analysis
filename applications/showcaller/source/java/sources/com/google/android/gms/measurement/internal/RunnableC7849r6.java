package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.r6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r6.class */
public final class RunnableC7849r6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7704f f35615d;

    /* renamed from: e */
    final /* synthetic */ int f35616e;

    /* renamed from: f */
    final /* synthetic */ long f35617f;

    /* renamed from: g */
    final /* synthetic */ boolean f35618g;

    /* renamed from: h */
    final /* synthetic */ C7893v6 f35619h;

    public RunnableC7849r6(C7893v6 c7893v6, C7704f c7704f, int i, long j, boolean z) {
        this.f35619h = c7893v6;
        this.f35615d = c7704f;
        this.f35616e = i;
        this.f35617f = j;
        this.f35618g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35619h.m5918W(this.f35615d);
        C7893v6.m5931J(this.f35619h, this.f35615d, this.f35616e, this.f35617f, false, this.f35618g);
    }
}
