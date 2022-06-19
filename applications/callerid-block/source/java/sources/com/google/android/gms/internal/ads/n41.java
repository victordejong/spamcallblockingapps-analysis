package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n41.class */
final /* synthetic */ class n41 implements Runnable {

    /* renamed from: b */
    private final o41 f7683b;

    /* renamed from: c */
    private final ml1 f7684c;

    /* renamed from: d */
    private final al1 f7685d;

    /* renamed from: e */
    private final yz0 f7686e;

    n41(o41 o41Var, ml1 ml1Var, al1 al1Var, yz0 yz0Var) {
        this.f7683b = o41Var;
        this.f7684c = ml1Var;
        this.f7685d = al1Var;
        this.f7686e = yz0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o41 o41Var = this.f7683b;
        q41.d(o41Var.d, this.f7684c, this.f7685d, this.f7686e);
    }
}
