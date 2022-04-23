package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bht.class */
final /* synthetic */ class bht implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final adt f24480a;

    private bht(adt adtVar) {
        this.f24480a = adtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(adt adtVar) {
        return new bht(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24480a.destroy();
    }
}
