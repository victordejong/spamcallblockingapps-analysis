package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azh.class */
final /* synthetic */ class azh implements Runnable {

    /* renamed from: a */
    private final adt f43343a;

    private azh(adt adtVar) {
        this.f43343a = adtVar;
    }

    /* renamed from: a */
    public static Runnable m18310a(adt adtVar) {
        return new azh(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f43343a.destroy();
    }
}
