package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kb1.class */
final /* synthetic */ class kb1 implements Runnable {

    /* renamed from: d */
    private final wn0 f25096d;

    private kb1(wn0 wn0Var) {
        this.f25096d = wn0Var;
    }

    /* renamed from: a */
    public static Runnable m13929a(wn0 wn0Var) {
        return new kb1(wn0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25096d.destroy();
    }
}
