package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgg.class */
public class zzgg {
    private static final zzfh zza = zzfh.zza();
    private zzep zzb;
    private volatile zzhb zzc;
    private volatile zzep zzd;

    private final zzhb zzb(zzhb zzhbVar) {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    try {
                        this.zzc = zzhbVar;
                        this.zzd = zzep.zza;
                    } catch (zzgb e) {
                        this.zzc = zzhbVar;
                        this.zzd = zzep.zza;
                    }
                }
            }
        }
        return this.zzc;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgg)) {
            return false;
        }
        zzgg zzggVar = (zzgg) obj;
        zzhb zzhbVar = this.zzc;
        zzhb zzhbVar2 = zzggVar.zzc;
        return (zzhbVar == null && zzhbVar2 == null) ? zzc().equals(zzggVar.zzc()) : (zzhbVar == null || zzhbVar2 == null) ? zzhbVar != null ? zzhbVar.equals(zzggVar.zzb(zzhbVar.zzn())) : zzb(zzhbVar2.zzn()).equals(zzhbVar2) : zzhbVar.equals(zzhbVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzhb zza(zzhb zzhbVar) {
        zzhb zzhbVar2 = this.zzc;
        this.zzb = null;
        this.zzd = null;
        this.zzc = zzhbVar;
        return zzhbVar2;
    }

    public final int zzb() {
        if (this.zzd != null) {
            return this.zzd.zza();
        }
        if (this.zzc == null) {
            return 0;
        }
        return this.zzc.zzj();
    }

    public final zzep zzc() {
        if (this.zzd != null) {
            return this.zzd;
        }
        synchronized (this) {
            if (this.zzd != null) {
                return this.zzd;
            }
            if (this.zzc == null) {
                this.zzd = zzep.zza;
            } else {
                this.zzd = this.zzc.zze();
            }
            return this.zzd;
        }
    }
}
