package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hr.class */
final /* synthetic */ class RunnableC1774hr implements Runnable {

    /* renamed from: b */
    private final zzbef f6762b;

    /* renamed from: c */
    private final boolean f6763c;

    /* renamed from: d */
    private final long f6764d;

    RunnableC1774hr(zzbef zzbefVar, boolean z, long j) {
        this.f6762b = zzbefVar;
        this.f6763c = z;
        this.f6764d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6762b.D(this.f6763c, this.f6764d);
    }
}
