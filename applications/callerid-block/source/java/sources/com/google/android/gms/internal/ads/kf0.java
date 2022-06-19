package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kf0.class */
final /* synthetic */ class kf0 implements Runnable {

    /* renamed from: b */
    private final jt f6977b;

    private kf0(jt jtVar) {
        this.f6977b = jtVar;
    }

    /* renamed from: a */
    static Runnable m6814a(jt jtVar) {
        return new kf0(jtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6977b.destroy();
    }
}
