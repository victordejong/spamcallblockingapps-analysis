package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bth.class */
final /* synthetic */ class bth implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final adt f25062a;

    private bth(adt adtVar) {
        this.f25062a = adtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(adt adtVar) {
        return new bth(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25062a.P();
    }
}
