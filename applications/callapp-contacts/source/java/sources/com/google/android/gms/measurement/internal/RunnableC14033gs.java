package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gs.class */
public final class RunnableC14033gs implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C13987f f51727a;

    /* renamed from: b */
    final /* synthetic */ int f51728b;

    /* renamed from: c */
    final /* synthetic */ long f51729c;

    /* renamed from: d */
    final /* synthetic */ boolean f51730d;

    /* renamed from: e */
    final /* synthetic */ C14036gv f51731e;

    public RunnableC14033gs(C14036gv c14036gv, C13987f c13987f, int i, long j, boolean z) {
        this.f51731e = c14036gv;
        this.f51727a = c13987f;
        this.f51728b = i;
        this.f51729c = j;
        this.f51730d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51731e.m11869a(this.f51727a);
        C14036gv.m11865a(this.f51731e, this.f51727a, this.f51728b, this.f51729c, false, this.f51730d);
    }
}
