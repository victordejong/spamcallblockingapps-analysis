package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ij */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ij.class */
final /* synthetic */ class RunnableC3221ij implements Runnable {

    /* renamed from: a */
    private final AbstractC3200hp f16765a;

    private RunnableC3221ij(AbstractC3200hp abstractC3200hp) {
        this.f16765a = abstractC3200hp;
    }

    /* renamed from: a */
    public static Runnable m7753a(AbstractC3200hp abstractC3200hp) {
        return new RunnableC3221ij(abstractC3200hp);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16765a.mo7782a();
    }
}
