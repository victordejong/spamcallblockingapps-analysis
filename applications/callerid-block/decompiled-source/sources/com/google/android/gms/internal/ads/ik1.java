package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ik1.class */
final /* synthetic */ class ik1 implements Runnable {

    /* renamed from: b */
    private final dk1 f6806b;

    private ik1(dk1 dk1Var) {
        this.f6806b = dk1Var;
    }

    /* renamed from: a */
    static Runnable m7186a(dk1 dk1Var) {
        return new ik1(dk1Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6806b.s();
    }
}
