package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zw1.class */
final /* synthetic */ class zw1 implements Runnable {

    /* renamed from: d */
    private final el1 f33439d;

    private zw1(el1 el1Var) {
        this.f33439d = el1Var;
    }

    /* renamed from: a */
    public static Runnable m8156a(el1 el1Var) {
        return new zw1(el1Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33439d.m15437b();
    }
}
