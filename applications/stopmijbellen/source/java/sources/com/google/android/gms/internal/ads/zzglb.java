package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglb.class */
public class zzglb {
    private static final zzgjx zzb = zzgjx.zza();
    public volatile zzglv zza;
    private volatile zzgjf zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzglb)) {
            return false;
        }
        zzglb zzglbVar = (zzglb) obj;
        zzglv zzglvVar = this.zza;
        zzglv zzglvVar2 = zzglbVar.zza;
        if (zzglvVar == null && zzglvVar2 == null) {
            return zzb().equals(zzglbVar.zzb());
        }
        if (zzglvVar != null && zzglvVar2 != null) {
            return zzglvVar.equals(zzglvVar2);
        }
        if (zzglvVar != null) {
            zzglbVar.zzc(zzglvVar.zzbp());
            return zzglvVar.equals(zzglbVar.zza);
        }
        zzc(zzglvVar2.zzbp());
        return this.zza.equals(zzglvVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzgjb) this.zzc).zza.length;
        }
        if (this.zza == null) {
            return 0;
        }
        return this.zza.zzas();
    }

    public final zzgjf zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzgjf.zzb;
            } else {
                this.zzc = this.zza.zzao();
            }
            return this.zzc;
        }
    }

    public final void zzc(zzglv zzglvVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza != null) {
                return;
            }
            try {
                this.zza = zzglvVar;
                this.zzc = zzgjf.zzb;
            } catch (zzgkx e) {
                this.zza = zzglvVar;
                this.zzc = zzgjf.zzb;
            }
        }
    }
}
