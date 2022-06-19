package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawp.class */
public final /* synthetic */ class zzawp implements Runnable {
    private final zzawm zzeah;
    private final Bitmap zzeai;

    public zzawp(zzawm zzawmVar, Bitmap bitmap) {
        this.zzeah = zzawmVar;
        this.zzeai = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeah.zza(this.zzeai);
    }
}
