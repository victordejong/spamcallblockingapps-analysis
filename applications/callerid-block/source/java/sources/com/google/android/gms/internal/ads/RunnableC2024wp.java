package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.wp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wp.class */
final class RunnableC2024wp implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f9039b;

    /* renamed from: c */
    final /* synthetic */ int f9040c;

    /* renamed from: d */
    final /* synthetic */ zzbcw f9041d;

    RunnableC2024wp(zzbcw zzbcwVar, int i, int i2) {
        this.f9041d = zzbcwVar;
        this.f9039b = i;
        this.f9040c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzbcw.K(this.f9041d) != null) {
            zzbcw.K(this.f9041d).m8108d(this.f9039b, this.f9040c);
        }
    }
}
