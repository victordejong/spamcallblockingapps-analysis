package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzft.class */
public class zzft {
    private static final zzeq zza = zzeq.zza();
    private zzdu zzb;
    private volatile zzgo zzc;
    private volatile zzdu zzd;

    private final zzgo zzb(zzgo zzgoVar) {
        if (this.zzc == null) {
            synchronized (this) {
                if (this.zzc == null) {
                    try {
                        this.zzc = zzgoVar;
                        this.zzd = zzdu.zza;
                    } catch (zzfo e) {
                        this.zzc = zzgoVar;
                        this.zzd = zzdu.zza;
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
        if (!(obj instanceof zzft)) {
            return false;
        }
        zzft zzftVar = (zzft) obj;
        zzgo zzgoVar = this.zzc;
        zzgo zzgoVar2 = zzftVar.zzc;
        return (zzgoVar == null && zzgoVar2 == null) ? zzc().equals(zzftVar.zzc()) : (zzgoVar == null || zzgoVar2 == null) ? zzgoVar != null ? zzgoVar.equals(zzftVar.zzb(zzgoVar.zzbt())) : zzb(zzgoVar2.zzbt()).equals(zzgoVar2) : zzgoVar.equals(zzgoVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzgo zza(zzgo zzgoVar) {
        zzgo zzgoVar2 = this.zzc;
        this.zzb = null;
        this.zzd = null;
        this.zzc = zzgoVar;
        return zzgoVar2;
    }

    public final int zzb() {
        if (this.zzd != null) {
            return this.zzd.zza();
        }
        if (this.zzc == null) {
            return 0;
        }
        return this.zzc.zzbn();
    }

    public final zzdu zzc() {
        if (this.zzd != null) {
            return this.zzd;
        }
        synchronized (this) {
            if (this.zzd != null) {
                return this.zzd;
            }
            if (this.zzc == null) {
                this.zzd = zzdu.zza;
            } else {
                this.zzd = this.zzc.zzbh();
            }
            return this.zzd;
        }
    }
}
