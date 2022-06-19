package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeam.class */
final class zzeam extends zzcff {
    public final /* synthetic */ zzeao zza;

    public zzeam(zzeao zzeaoVar) {
        this.zza = zzeaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zze(int i) throws RemoteException {
        zzead zzeadVar;
        long j;
        zzeadVar = this.zza.zzc;
        j = this.zza.zza;
        zzeadVar.zzm(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        zzead zzeadVar;
        long j;
        zzeadVar = this.zza.zzc;
        j = this.zza.zza;
        zzeadVar.zzm(j, zzbewVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzg() throws RemoteException {
        zzead zzeadVar;
        long j;
        zzeadVar = this.zza.zzc;
        j = this.zza.zza;
        zzeadVar.zzp(j);
    }
}
