package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzk.class */
public final /* synthetic */ class zzk implements Runnable {
    private final zzl zzdsl;
    private final Drawable zzdsm;

    public zzk(zzl zzlVar, Drawable drawable) {
        this.zzdsl = zzlVar;
        this.zzdsm = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzl zzlVar = this.zzdsl;
        zzlVar.zzdsn.zzaas.getWindow().setBackgroundDrawable(this.zzdsm);
    }
}
