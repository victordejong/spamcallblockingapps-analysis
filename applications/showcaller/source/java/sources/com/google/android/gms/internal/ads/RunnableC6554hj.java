package com.google.android.gms.internal.ads;

import android.view.Surface;
/* renamed from: com.google.android.gms.internal.ads.hj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hj.class */
public final class RunnableC6554hj implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Surface f23923d;

    /* renamed from: e */
    final /* synthetic */ C6629jj f23924e;

    public RunnableC6554hj(C6629jj c6629jj, Surface surface) {
        this.f23924e = c6629jj;
        this.f23923d = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6666kj abstractC6666kj;
        abstractC6666kj = this.f23924e.f24892b;
        abstractC6666kj.mo11397h(this.f23923d);
    }
}
