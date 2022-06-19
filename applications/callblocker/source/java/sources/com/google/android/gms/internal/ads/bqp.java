package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqp.class */
final /* synthetic */ class bqp implements Runnable {

    /* renamed from: a */
    private final bev f11840a;

    private bqp(bev bevVar) {
        this.f11840a = bevVar;
    }

    /* renamed from: a */
    public static Runnable m11714a(bev bevVar) {
        return new bqp(bevVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11840a.m12019a();
    }
}
