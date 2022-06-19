package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gr.class */
public final class RunnableC14032gr implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C13987f f51722a;

    /* renamed from: b */
    final /* synthetic */ int f51723b;

    /* renamed from: c */
    final /* synthetic */ long f51724c;

    /* renamed from: d */
    final /* synthetic */ boolean f51725d;

    /* renamed from: e */
    final /* synthetic */ C14036gv f51726e;

    public RunnableC14032gr(C14036gv c14036gv, C13987f c13987f, int i, long j, boolean z) {
        this.f51726e = c14036gv;
        this.f51722a = c13987f;
        this.f51723b = i;
        this.f51724c = j;
        this.f51725d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51726e.m11869a(this.f51722a);
        C14036gv.m11865a(this.f51726e, this.f51722a, this.f51723b, this.f51724c, false, this.f51725d);
    }
}
