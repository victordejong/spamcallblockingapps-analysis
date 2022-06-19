package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkq.class */
public class zzkq {
    private static final zzjp zzb = zzjp.zza();
    public volatile zzli zza;
    private volatile zzjd zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkq)) {
            return false;
        }
        zzkq zzkqVar = (zzkq) obj;
        zzli zzliVar = this.zza;
        zzli zzliVar2 = zzkqVar.zza;
        if (zzliVar == null && zzliVar2 == null) {
            return zzb().equals(zzkqVar.zzb());
        }
        if (zzliVar != null && zzliVar2 != null) {
            return zzliVar.equals(zzliVar2);
        }
        if (zzliVar != null) {
            zzkqVar.zzc(zzliVar.zzbL());
            return zzliVar.equals(zzkqVar.zza);
        }
        zzc(zzliVar2.zzbL());
        return this.zza.equals(zzliVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzjb) this.zzc).zza.length;
        }
        if (this.zza == null) {
            return 0;
        }
        return this.zza.zzbw();
    }

    public final zzjd zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzjd.zzb;
            } else {
                this.zzc = this.zza.zzbo();
            }
            return this.zzc;
        }
    }

    public final void zzc(zzli zzliVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza != null) {
                return;
            }
            try {
                this.zza = zzliVar;
                this.zzc = zzjd.zzb;
            } catch (zzkn e) {
                this.zza = zzliVar;
                this.zzc = zzjd.zzb;
            }
        }
    }
}
