package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zp.class */
final /* synthetic */ class RunnableC3686zp implements Runnable {

    /* renamed from: a */
    private final AbstractC3685zo f17697a;

    private RunnableC3686zp(AbstractC3685zo abstractC3685zo) {
        this.f17697a = abstractC3685zo;
    }

    /* renamed from: a */
    public static Runnable m6688a(AbstractC3685zo abstractC3685zo) {
        return new RunnableC3686zp(abstractC3685zo);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17697a.mo6697b();
    }
}
