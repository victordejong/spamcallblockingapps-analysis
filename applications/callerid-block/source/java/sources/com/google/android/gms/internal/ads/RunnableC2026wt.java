package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.wt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wt.class */
final /* synthetic */ class RunnableC2026wt implements Runnable {

    /* renamed from: b */
    private final jt f9062b;

    private RunnableC2026wt(jt jtVar) {
        this.f9062b = jtVar;
    }

    /* renamed from: a */
    static Runnable m5000a(jt jtVar) {
        return new RunnableC2026wt(jtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9062b.destroy();
    }
}
