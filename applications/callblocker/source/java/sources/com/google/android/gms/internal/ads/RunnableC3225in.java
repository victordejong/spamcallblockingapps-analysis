package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.in */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/in.class */
final /* synthetic */ class RunnableC3225in implements Runnable {

    /* renamed from: a */
    private final AbstractC3200hp f16775a;

    private RunnableC3225in(AbstractC3200hp abstractC3200hp) {
        this.f16775a = abstractC3200hp;
    }

    /* renamed from: a */
    public static Runnable m7752a(AbstractC3200hp abstractC3200hp) {
        return new RunnableC3225in(abstractC3200hp);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16775a.mo7782a();
    }
}
