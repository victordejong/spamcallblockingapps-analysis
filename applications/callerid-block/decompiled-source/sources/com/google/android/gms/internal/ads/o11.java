package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o11.class */
final /* synthetic */ class o11 implements Runnable {

    /* renamed from: b */
    private final q11 f7821b;

    /* renamed from: c */
    private final ml1 f7822c;

    /* renamed from: d */
    private final al1 f7823d;

    o11(q11 q11Var, ml1 ml1Var, al1 al1Var) {
        this.f7821b = q11Var;
        this.f7822c = ml1Var;
        this.f7823d = al1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7821b.d(this.f7822c, this.f7823d);
    }
}
