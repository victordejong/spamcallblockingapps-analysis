package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.up */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/up.class */
final class RunnableC1980up implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f8822b;

    /* renamed from: c */
    final /* synthetic */ String f8823c;

    /* renamed from: d */
    final /* synthetic */ zzbcw f8824d;

    RunnableC1980up(zzbcw zzbcwVar, String str, String str2) {
        this.f8824d = zzbcwVar;
        this.f8822b = str;
        this.f8823c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzbcw.K(this.f8824d) != null) {
            zzbcw.K(this.f8824d).m8104h(this.f8822b, this.f8823c);
        }
    }
}
