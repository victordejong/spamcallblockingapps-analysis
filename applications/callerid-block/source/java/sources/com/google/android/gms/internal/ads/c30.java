package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c30.class */
final /* synthetic */ class c30 implements Runnable {

    /* renamed from: b */
    private final d30 f6245b;

    /* renamed from: c */
    private final Runnable f6246c;

    c30(d30 d30Var, Runnable runnable) {
        this.f6245b = d30Var;
        this.f6246c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6245b.n(this.f6246c);
    }
}
