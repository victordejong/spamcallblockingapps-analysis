package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v11.class */
final /* synthetic */ class v11 implements Runnable {

    /* renamed from: b */
    private final vo0 f8862b;

    private v11(vo0 vo0Var) {
        this.f8862b = vo0Var;
    }

    /* renamed from: a */
    static Runnable m5321a(vo0 vo0Var) {
        return new v11(vo0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8862b.m5197b();
    }
}
