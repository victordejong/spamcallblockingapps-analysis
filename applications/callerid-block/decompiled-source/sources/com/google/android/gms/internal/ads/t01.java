package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/t01.class */
final /* synthetic */ class t01 implements Runnable {

    /* renamed from: b */
    private final jt f8581b;

    private t01(jt jtVar) {
        this.f8581b = jtVar;
    }

    /* renamed from: a */
    static Runnable m5550a(jt jtVar) {
        return new t01(jtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8581b.t();
    }
}
