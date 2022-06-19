package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggq.class */
public class zzggq {
    private static final zzgfm zzb = zzgfm.zza();
    public volatile zzghi zza;
    private volatile zzgex zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzggq)) {
            return false;
        }
        zzggq zzggqVar = (zzggq) obj;
        zzghi zzghiVar = this.zza;
        zzghi zzghiVar2 = zzggqVar.zza;
        if (zzghiVar == null && zzghiVar2 == null) {
            return zzb().equals(zzggqVar.zzb());
        }
        if (zzghiVar != null && zzghiVar2 != null) {
            return zzghiVar.equals(zzghiVar2);
        }
        if (zzghiVar != null) {
            zzggqVar.zzc(zzghiVar.zzbe());
            return zzghiVar.equals(zzggqVar.zza);
        }
        zzc(zzghiVar2.zzbe());
        return this.zza.equals(zzghiVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzget) this.zzc).zza.length;
        }
        if (this.zza == null) {
            return 0;
        }
        return this.zza.zzaw();
    }

    public final zzgex zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzgex.zzb;
            } else {
                this.zzc = this.zza.zzan();
            }
            return this.zzc;
        }
    }

    public final void zzc(zzghi zzghiVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza != null) {
                return;
            }
            try {
                this.zza = zzghiVar;
                this.zzc = zzgex.zzb;
            } catch (zzggm e) {
                this.zza = zzghiVar;
                this.zzc = zzgex.zzb;
            }
        }
    }
}
