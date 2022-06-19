package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adf.class */
final class adf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ade f7896a;

    public adf(ade adeVar) {
        this.f7896a = adeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        act actVar;
        actVar = this.f7896a.f7893a;
        actVar.destroy();
    }
}
