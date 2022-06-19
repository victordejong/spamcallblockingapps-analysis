package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.fj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fj.class */
public final class RunnableC6480fj implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f22910d;

    /* renamed from: e */
    final /* synthetic */ long f22911e;

    /* renamed from: f */
    final /* synthetic */ C6629jj f22912f;

    public RunnableC6480fj(C6629jj c6629jj, int i, long j) {
        this.f22912f = c6629jj;
        this.f22910d = i;
        this.f22911e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6666kj abstractC6666kj;
        abstractC6666kj = this.f22912f.f24892b;
        abstractC6666kj.mo11385x(this.f22910d, this.f22911e);
    }
}
