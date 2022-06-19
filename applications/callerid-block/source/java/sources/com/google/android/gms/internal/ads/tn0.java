package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tn0.class */
final /* synthetic */ class tn0 implements Runnable {

    /* renamed from: b */
    private final jt f8611b;

    private tn0(jt jtVar) {
        this.f8611b = jtVar;
    }

    /* renamed from: a */
    static Runnable m5504a(jt jtVar) {
        return new tn0(jtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8611b.destroy();
    }
}
