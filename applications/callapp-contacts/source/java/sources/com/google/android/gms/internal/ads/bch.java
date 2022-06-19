package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bch.class */
final /* synthetic */ class bch implements Runnable {

    /* renamed from: a */
    private final bcz f43544a;

    private bch(bcz bczVar) {
        this.f43544a = bczVar;
    }

    /* renamed from: a */
    public static Runnable m18207a(bcz bczVar) {
        return new bch(bczVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f43544a.mo17895f();
    }
}
