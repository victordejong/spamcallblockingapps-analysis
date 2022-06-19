package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boj.class */
final /* synthetic */ class boj implements Runnable {

    /* renamed from: a */
    private final bev f11677a;

    private boj(bev bevVar) {
        this.f11677a = bevVar;
    }

    /* renamed from: a */
    public static Runnable m11740a(bev bevVar) {
        return new boj(bevVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11677a.m12019a();
    }
}
