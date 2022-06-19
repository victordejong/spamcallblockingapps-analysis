package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcke.class */
final class zzcke implements Runnable {
    public final /* synthetic */ MediaPlayer zza;
    public final /* synthetic */ zzckm zzb;

    public zzcke(zzckm zzckmVar, MediaPlayer mediaPlayer) {
        this.zzb = zzckmVar;
        this.zza = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzckn zzcknVar;
        zzckn zzcknVar2;
        zzckm.zzl(this.zzb, this.zza);
        zzcknVar = this.zzb.zzs;
        if (zzcknVar != null) {
            zzcknVar2 = this.zzb.zzs;
            zzcknVar2.zzf();
        }
    }
}
