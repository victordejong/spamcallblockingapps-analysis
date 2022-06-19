package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hq.class */
final class RunnableC1773hq implements Runnable {

    /* renamed from: b */
    final /* synthetic */ boolean f6759b;

    /* renamed from: c */
    final /* synthetic */ zzbdf f6760c;

    RunnableC1773hq(zzbdf zzbdfVar, boolean z) {
        this.f6760c = zzbdfVar;
        this.f6759b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbdf.o(this.f6760c, "windowVisibilityChanged", new String[]{"isVisible", String.valueOf(this.f6759b)});
    }
}
