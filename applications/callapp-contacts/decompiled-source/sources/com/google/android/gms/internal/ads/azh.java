package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azh.class */
final /* synthetic */ class azh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final adt f24029a;

    private azh(adt adtVar) {
        this.f24029a = adtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(adt adtVar) {
        return new azh(adtVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24029a.destroy();
    }
}
