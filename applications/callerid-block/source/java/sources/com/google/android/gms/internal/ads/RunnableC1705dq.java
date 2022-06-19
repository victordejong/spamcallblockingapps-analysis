package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.dq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dq.class */
final /* synthetic */ class RunnableC1705dq implements Runnable {

    /* renamed from: b */
    private final zzbcy f6351b;

    private RunnableC1705dq(zzbcy zzbcyVar) {
        this.f6351b = zzbcyVar;
    }

    /* renamed from: a */
    static Runnable m7709a(zzbcy zzbcyVar) {
        return new RunnableC1705dq(zzbcyVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6351b.i();
    }
}
