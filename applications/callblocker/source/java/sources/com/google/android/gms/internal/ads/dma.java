package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dma.class */
public final class dma implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f14708a;

    /* renamed from: b */
    private final /* synthetic */ dlt f14709b;

    public dma(dlt dltVar, int i) {
        this.f14709b = dltVar;
        this.f14708a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        dluVar = this.f14709b.f14694b;
        dluVar.m9184a(this.f14708a);
    }
}
