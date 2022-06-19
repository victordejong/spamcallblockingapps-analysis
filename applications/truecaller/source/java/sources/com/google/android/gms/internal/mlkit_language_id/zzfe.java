package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfe.class */
public class zzfe {
    private static final zzef zza = zzef.zza();
    private zzdn zzb;
    private volatile zzfz zzc;
    private volatile zzdn zzd;

    private final zzfz zzb(zzfz zzfzVar) {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    try {
                        this.zzc = zzfzVar;
                        this.zzd = zzdn.zza;
                    } catch (zzez e) {
                        this.zzc = zzfzVar;
                        this.zzd = zzdn.zza;
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
        if (!(obj instanceof zzfe)) {
            return false;
        }
        zzfe zzfeVar = (zzfe) obj;
        zzfz zzfzVar = this.zzc;
        zzfz zzfzVar2 = zzfeVar.zzc;
        return (zzfzVar == null && zzfzVar2 == null) ? zzc().equals(zzfeVar.zzc()) : (zzfzVar == null || zzfzVar2 == null) ? zzfzVar != null ? zzfzVar.equals(zzfeVar.zzb(zzfzVar.zzn())) : zzb(zzfzVar2.zzn()).equals(zzfzVar2) : zzfzVar.equals(zzfzVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzfz zza(zzfz zzfzVar) {
        zzfz zzfzVar2 = this.zzc;
        this.zzb = null;
        this.zzd = null;
        this.zzc = zzfzVar;
        return zzfzVar2;
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

    public final zzdn zzc() {
        if (this.zzd != null) {
            return this.zzd;
        }
        synchronized (this) {
            if (this.zzd != null) {
                return this.zzd;
            }
            if (this.zzc == null) {
                this.zzd = zzdn.zza;
            } else {
                this.zzd = this.zzc.zze();
            }
            return this.zzd;
        }
    }
}
