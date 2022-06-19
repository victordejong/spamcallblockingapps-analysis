package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hh1.class */
final /* synthetic */ class hh1 implements Runnable {

    /* renamed from: b */
    private final f71 f6741b;

    private hh1(f71 f71Var) {
        this.f6741b = f71Var;
    }

    /* renamed from: a */
    static Runnable m7269a(f71 f71Var) {
        return new hh1(f71Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6741b.s();
    }
}
