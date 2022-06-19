package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchy.class */
public final class zzchy implements Runnable {
    public final /* synthetic */ MediaPlayer zza;
    public final /* synthetic */ zzcig zzb;

    public zzchy(zzcig zzcigVar, MediaPlayer mediaPlayer) {
        this.zzb = zzcigVar;
        this.zza = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcih zzcihVar;
        zzcih zzcihVar2;
        zzcig.zzu(this.zzb, this.zza);
        zzcihVar = this.zzb.zzs;
        if (zzcihVar != null) {
            zzcihVar2 = this.zzb.zzs;
            zzcihVar2.zzb();
        }
    }
}
