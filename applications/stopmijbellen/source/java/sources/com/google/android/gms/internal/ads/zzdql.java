package com.google.android.gms.internal.ads;

import p226s.C4263g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdql.class */
public final class zzdql {
    public zzbpj zza;
    public zzbpg zzb;
    public zzbpw zzc;
    public zzbpt zzd;
    public zzbui zze;
    public final C4263g<String, zzbpp> zzf = new C4263g<>();
    public final C4263g<String, zzbpm> zzg = new C4263g<>();

    public final zzdql zza(zzbpg zzbpgVar) {
        this.zzb = zzbpgVar;
        return this;
    }

    public final zzdql zzb(zzbpj zzbpjVar) {
        this.zza = zzbpjVar;
        return this;
    }

    public final zzdql zzc(String str, zzbpp zzbppVar, zzbpm zzbpmVar) {
        this.zzf.put(str, zzbppVar);
        if (zzbpmVar != null) {
            this.zzg.put(str, zzbpmVar);
        }
        return this;
    }

    public final zzdql zzd(zzbui zzbuiVar) {
        this.zze = zzbuiVar;
        return this;
    }

    public final zzdql zze(zzbpt zzbptVar) {
        this.zzd = zzbptVar;
        return this;
    }

    public final zzdql zzf(zzbpw zzbpwVar) {
        this.zzc = zzbpwVar;
        return this;
    }

    public final zzdqn zzg() {
        return new zzdqn(this);
    }
}
