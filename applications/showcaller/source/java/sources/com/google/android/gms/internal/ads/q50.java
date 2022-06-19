package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q50.class */
final /* synthetic */ class q50 implements Runnable {

    /* renamed from: d */
    private final x40 f28316d;

    private q50(x40 x40Var) {
        this.f28316d = x40Var;
    }

    /* renamed from: a */
    public static Runnable m12029a(x40 x40Var) {
        return new q50(x40Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f28316d.zzi();
    }
}
