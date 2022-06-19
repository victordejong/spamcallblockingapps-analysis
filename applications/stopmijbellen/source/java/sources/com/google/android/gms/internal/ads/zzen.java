package com.google.android.gms.internal.ads;

import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzen.class */
public final class zzen<T> {
    @Nonnull
    public final T zza;
    private zzu zzb = new zzu();
    private boolean zzc;
    private boolean zzd;

    public zzen(@Nonnull T t) {
        this.zza = t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzen.class == obj.getClass()) {
            return this.zza.equals(((zzen) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(int i, zzel<T> zzelVar) {
        if (!this.zzd) {
            if (i != -1) {
                this.zzb.zza(i);
            }
            this.zzc = true;
            zzelVar.zza(this.zza);
        }
    }

    public final void zzb(zzem<T> zzemVar) {
        if (this.zzd || !this.zzc) {
            return;
        }
        zzw zzb = this.zzb.zzb();
        this.zzb = new zzu();
        this.zzc = false;
        zzemVar.zza(this.zza, zzb);
    }

    public final void zzc(zzem<T> zzemVar) {
        this.zzd = true;
        if (this.zzc) {
            zzemVar.zza(this.zza, this.zzb.zzb());
        }
    }
}
