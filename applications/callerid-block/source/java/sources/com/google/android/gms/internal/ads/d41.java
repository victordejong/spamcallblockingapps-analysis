package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/d41.class */
final /* synthetic */ class d41 implements Runnable {

    /* renamed from: b */
    private final vo0 f6311b;

    private d41(vo0 vo0Var) {
        this.f6311b = vo0Var;
    }

    /* renamed from: a */
    static Runnable m7760a(vo0 vo0Var) {
        return new d41(vo0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6311b.m5197b();
    }
}
