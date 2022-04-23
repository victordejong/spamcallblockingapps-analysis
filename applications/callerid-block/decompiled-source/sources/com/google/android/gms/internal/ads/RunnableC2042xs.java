package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.xs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xs.class */
final /* synthetic */ class RunnableC2042xs implements Runnable {

    /* renamed from: b */
    private final rq f9163b;

    /* renamed from: c */
    private final boolean f9164c;

    /* renamed from: d */
    private final long f9165d;

    RunnableC2042xs(rq rqVar, boolean z, long j) {
        this.f9163b = rqVar;
        this.f9164c = z;
        this.f9165d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9163b.a1(this.f9164c, this.f9165d);
    }
}
