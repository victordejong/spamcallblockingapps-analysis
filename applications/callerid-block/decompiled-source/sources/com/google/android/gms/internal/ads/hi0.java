package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hi0.class */
final /* synthetic */ class hi0 implements Runnable {

    /* renamed from: b */
    private final bj0 f6742b;

    private hi0(bj0 bj0Var) {
        this.f6742b = bj0Var;
    }

    /* renamed from: a */
    static Runnable m7268a(bj0 bj0Var) {
        return new hi0(bj0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6742b.m7965t();
    }
}
