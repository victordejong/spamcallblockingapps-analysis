package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelu.class */
public class zzelu extends zzemv {
    private final zzdmm zza;

    public zzelu(zzdep zzdepVar, zzdmb zzdmbVar, zzdfj zzdfjVar, zzdfy zzdfyVar, zzdgd zzdgdVar, zzdfe zzdfeVar, zzdjo zzdjoVar, zzdmt zzdmtVar, zzdgx zzdgxVar, zzdmm zzdmmVar, zzdjk zzdjkVar) {
        super(zzdepVar, zzdmbVar, zzdfjVar, zzdfyVar, zzdgdVar, zzdjoVar, zzdgxVar, zzdmtVar, zzdjkVar, zzdfeVar);
        this.zza = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzemv, com.google.android.gms.internal.ads.zzbxn
    public final void zzs(zzces zzcesVar) {
        this.zza.zza(zzcesVar);
    }

    @Override // com.google.android.gms.internal.ads.zzemv, com.google.android.gms.internal.ads.zzbxn
    public final void zzt(zzcew zzcewVar) throws RemoteException {
        this.zza.zza(new zzces(zzcewVar.zzf(), zzcewVar.zze()));
    }

    @Override // com.google.android.gms.internal.ads.zzemv, com.google.android.gms.internal.ads.zzbxn
    public final void zzu() throws RemoteException {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzemv, com.google.android.gms.internal.ads.zzbxn
    public final void zzv() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzemv, com.google.android.gms.internal.ads.zzbxn
    public final void zzy() {
        this.zza.zzc();
    }
}
