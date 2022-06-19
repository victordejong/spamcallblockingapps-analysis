package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckr.class */
public final class zzckr implements Runnable {
    public final /* synthetic */ zzcks zza;

    public zzckr(zzcks zzcksVar) {
        this.zza = zzcksVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzt.zzy().zzd(this.zza);
    }
}
