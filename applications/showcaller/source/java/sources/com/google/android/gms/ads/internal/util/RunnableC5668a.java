package com.google.android.gms.ads.internal.util;
/* renamed from: com.google.android.gms.ads.internal.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/a.class */
public final class RunnableC5668a implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC5673b0 f18434d;

    public RunnableC5668a(AbstractC5673b0 abstractC5673b0) {
        this.f18434d = abstractC5673b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18434d.f18444b = Thread.currentThread();
        this.f18434d.mo13197a();
    }
}
