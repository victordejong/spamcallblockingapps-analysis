package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpw.class */
public final class dpw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dpt f15340a;

    public dpw(dpt dptVar) {
        this.f15340a = dptVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        dqd dqdVar;
        z = this.f15340a.f15306H;
        if (!z) {
            dqdVar = this.f15340a.f15323q;
            dqdVar.mo8845a((dqd) this.f15340a);
        }
    }
}
