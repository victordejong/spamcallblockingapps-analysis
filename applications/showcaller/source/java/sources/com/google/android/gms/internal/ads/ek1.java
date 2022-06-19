package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ek1.class */
final /* synthetic */ class ek1 implements Runnable {

    /* renamed from: d */
    private final wn0 f22256d;

    private ek1(wn0 wn0Var) {
        this.f22256d = wn0Var;
    }

    /* renamed from: a */
    public static Runnable m15446a(wn0 wn0Var) {
        return new ek1(wn0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f22256d.destroy();
    }
}
