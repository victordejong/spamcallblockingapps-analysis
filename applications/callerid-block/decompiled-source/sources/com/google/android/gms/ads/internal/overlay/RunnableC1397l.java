package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.gms.ads.internal.overlay.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/l.class */
final /* synthetic */ class RunnableC1397l implements Runnable {

    /* renamed from: b */
    private final m f5513b;

    /* renamed from: c */
    private final Drawable f5514c;

    RunnableC1397l(m mVar, Drawable drawable) {
        this.f5513b = mVar;
        this.f5514c = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.f5513b;
        mVar.c.b.getWindow().setBackgroundDrawable(this.f5514c);
    }
}
