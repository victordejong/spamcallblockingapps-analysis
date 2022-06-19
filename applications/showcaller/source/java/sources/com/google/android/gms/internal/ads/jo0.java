package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jo0.class */
final /* synthetic */ class jo0 implements Runnable {

    /* renamed from: d */
    private final wn0 f24941d;

    private jo0(wn0 wn0Var) {
        this.f24941d = wn0Var;
    }

    /* renamed from: a */
    public static Runnable m14092a(wn0 wn0Var) {
        return new jo0(wn0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24941d.destroy();
    }
}
