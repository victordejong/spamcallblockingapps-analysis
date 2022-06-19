package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepk.class */
public final class zzepk {
    private final zzdqn zza;
    private final zzeox zzb;
    private final zzdeu zzc;

    public zzepk(zzdqn zzdqnVar, zzfio zzfioVar) {
        this.zza = zzdqnVar;
        final zzeox zzeoxVar = new zzeox(zzfioVar);
        this.zzb = zzeoxVar;
        final zzbui zzg = zzdqnVar.zzg();
        this.zzc = new zzdeu() { // from class: com.google.android.gms.internal.ads.zzepj
            @Override // com.google.android.gms.internal.ads.zzdeu
            public final void zza(zzbew zzbewVar) {
                zzeox zzeoxVar2 = zzeox.this;
                zzbui zzbuiVar = zzg;
                zzeoxVar2.zza(zzbewVar);
                if (zzbuiVar != null) {
                    try {
                        zzbuiVar.zzf(zzbewVar);
                    } catch (RemoteException e) {
                        zzciz.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (zzbuiVar != null) {
                    try {
                        zzbuiVar.zze(zzbewVar.zza);
                    } catch (RemoteException e2) {
                        zzciz.zzl("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final zzdeu zza() {
        return this.zzc;
    }

    public final zzdgf zzb() {
        return this.zzb;
    }

    public final zzdok zzc() {
        return new zzdok(this.zza, this.zzb.zzb());
    }

    public final zzeox zzd() {
        return this.zzb;
    }

    public final void zze(zzbgx zzbgxVar) {
        this.zzb.zzf(zzbgxVar);
    }
}
