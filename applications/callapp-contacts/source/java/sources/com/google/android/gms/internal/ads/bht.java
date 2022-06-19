package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bht.class */
final /* synthetic */ class bht implements Runnable {

    /* renamed from: a */
    private final adt f43989a;

    private bht(adt adtVar) {
        this.f43989a = adtVar;
    }

    /* renamed from: a */
    public static Runnable m17849a(adt adtVar) {
        return new bht(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f43989a.destroy();
    }
}
