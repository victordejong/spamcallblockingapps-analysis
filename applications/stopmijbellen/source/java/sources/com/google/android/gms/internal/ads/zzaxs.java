package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxs.class */
public final class zzaxs implements Runnable {
    public final /* synthetic */ Surface zza;
    public final /* synthetic */ zzaxu zzb;

    public zzaxs(zzaxu zzaxuVar, Surface surface) {
        this.zzb = zzaxuVar;
        this.zza = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaxv zzaxvVar;
        zzaxvVar = this.zzb.zzb;
        zzaxvVar.zzm(this.zza);
    }
}
