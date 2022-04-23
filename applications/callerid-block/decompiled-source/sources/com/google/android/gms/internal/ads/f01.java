package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f01.class */
final /* synthetic */ class f01 implements Runnable {

    /* renamed from: b */
    private final vo0 f6469b;

    private f01(vo0 vo0Var) {
        this.f6469b = vo0Var;
    }

    /* renamed from: a */
    static Runnable m7580a(vo0 vo0Var) {
        return new f01(vo0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6469b.m5197b();
    }
}
