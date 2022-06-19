package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gq.class */
public final class RunnableC14031gq implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C13987f f51716a;

    /* renamed from: b */
    final /* synthetic */ long f51717b;

    /* renamed from: c */
    final /* synthetic */ int f51718c;

    /* renamed from: d */
    final /* synthetic */ long f51719d;

    /* renamed from: e */
    final /* synthetic */ boolean f51720e;

    /* renamed from: f */
    final /* synthetic */ C14036gv f51721f;

    public RunnableC14031gq(C14036gv c14036gv, C13987f c13987f, long j, int i, long j2, boolean z) {
        this.f51721f = c14036gv;
        this.f51716a = c13987f;
        this.f51717b = j;
        this.f51718c = i;
        this.f51719d = j2;
        this.f51720e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51721f.m11869a(this.f51716a);
        this.f51721f.m11873a(this.f51717b, false);
        C14036gv.m11865a(this.f51721f, this.f51716a, this.f51718c, this.f51719d, true, this.f51720e);
    }
}
