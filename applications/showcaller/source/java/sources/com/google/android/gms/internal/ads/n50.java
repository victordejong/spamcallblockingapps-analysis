package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n50.class */
final /* synthetic */ class n50 implements Runnable {

    /* renamed from: d */
    private final x40 f26990d;

    private n50(x40 x40Var) {
        this.f26990d = x40Var;
    }

    /* renamed from: a */
    public static Runnable m13005a(x40 x40Var) {
        return new n50(x40Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f26990d.zzi();
    }
}
