package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bth.class */
final /* synthetic */ class bth implements Runnable {

    /* renamed from: a */
    private final adt f44701a;

    private bth(adt adtVar) {
        this.f44701a = adtVar;
    }

    /* renamed from: a */
    public static Runnable m17615a(adt adtVar) {
        return new bth(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44701a.mo13794P();
    }
}
