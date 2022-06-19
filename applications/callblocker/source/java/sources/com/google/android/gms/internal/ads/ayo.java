package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayo.class */
final /* synthetic */ class ayo implements Runnable {

    /* renamed from: a */
    private final azh f10622a;

    private ayo(azh azhVar) {
        this.f10622a = azhVar;
    }

    /* renamed from: a */
    public static Runnable m12292a(azh azhVar) {
        return new ayo(azhVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10622a.mo12142f();
    }
}
