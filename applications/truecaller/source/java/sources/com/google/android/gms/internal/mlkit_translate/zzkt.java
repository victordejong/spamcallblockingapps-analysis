package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkt.class */
public class zzkt {
    private static final zzjq zza = zzjq.zza();
    private zziy zzb;
    private volatile zzlk zzc;
    private volatile zziy zzd;

    private final zzlk zzb(zzlk zzlkVar) {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    try {
                        this.zzc = zzlkVar;
                        this.zzd = zziy.zza;
                    } catch (zzkk e) {
                        this.zzc = zzlkVar;
                        this.zzd = zziy.zza;
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
        if (!(obj instanceof zzkt)) {
            return false;
        }
        zzkt zzktVar = (zzkt) obj;
        zzlk zzlkVar = this.zzc;
        zzlk zzlkVar2 = zzktVar.zzc;
        return (zzlkVar == null && zzlkVar2 == null) ? zzc().equals(zzktVar.zzc()) : (zzlkVar == null || zzlkVar2 == null) ? zzlkVar != null ? zzlkVar.equals(zzktVar.zzb(zzlkVar.zzi())) : zzb(zzlkVar2.zzi()).equals(zzlkVar2) : zzlkVar.equals(zzlkVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzlk zza(zzlk zzlkVar) {
        zzlk zzlkVar2 = this.zzc;
        this.zzb = null;
        this.zzd = null;
        this.zzc = zzlkVar;
        return zzlkVar2;
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

    public final zziy zzc() {
        if (this.zzd != null) {
            return this.zzd;
        }
        synchronized (this) {
            if (this.zzd != null) {
                return this.zzd;
            }
            if (this.zzc == null) {
                this.zzd = zziy.zza;
            } else {
                this.zzd = this.zzc.zze();
            }
            return this.zzd;
        }
    }
}
