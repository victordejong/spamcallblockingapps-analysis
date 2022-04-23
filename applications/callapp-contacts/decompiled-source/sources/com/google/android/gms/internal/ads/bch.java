package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bch.class */
final /* synthetic */ class bch implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bcz f24164a;

    private bch(bcz bczVar) {
        this.f24164a = bczVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(bcz bczVar) {
        return new bch(bczVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24164a.f();
    }
}
