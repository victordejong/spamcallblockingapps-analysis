package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ut */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ut.class */
public final class RunnableC3555ut implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3552uq f17462a;

    public RunnableC3555ut(AbstractC3552uq abstractC3552uq) {
        this.f17462a = abstractC3552uq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17462a.f17454b = Thread.currentThread();
        this.f17462a.mo6839a();
    }
}
