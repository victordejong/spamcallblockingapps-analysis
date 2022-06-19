package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ox1.class */
final /* synthetic */ class ox1 implements Runnable {

    /* renamed from: d */
    private final wn0 f27772d;

    private ox1(wn0 wn0Var) {
        this.f27772d = wn0Var;
    }

    /* renamed from: a */
    public static Runnable m12478a(wn0 wn0Var) {
        return new ox1(wn0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27772d.mo7962C();
    }
}
