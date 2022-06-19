package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzus.class */
final class zzus {
    private boolean zzc;
    private int zze;
    private zzur zza = new zzur();
    private zzur zzb = new zzur();
    private long zzd = -9223372036854775807L;

    public final float zza() {
        if (this.zza.zzf()) {
            return (float) (1.0E9d / this.zza.zza());
        }
        return -1.0f;
    }

    public final int zzb() {
        return this.zze;
    }

    public final long zzc() {
        if (this.zza.zzf()) {
            return this.zza.zza();
        }
        return -9223372036854775807L;
    }

    public final long zzd() {
        if (this.zza.zzf()) {
            return this.zza.zzb();
        }
        return -9223372036854775807L;
    }

    public final void zze(long j) {
        this.zza.zzc(j);
        int i = 0;
        if (this.zza.zzf()) {
            this.zzc = false;
        } else if (this.zzd != -9223372036854775807L) {
            if (!this.zzc || this.zzb.zze()) {
                this.zzb.zzd();
                this.zzb.zzc(this.zzd);
            }
            this.zzc = true;
            this.zzb.zzc(j);
        }
        if (this.zzc && this.zzb.zzf()) {
            zzur zzurVar = this.zza;
            this.zza = this.zzb;
            this.zzb = zzurVar;
            this.zzc = false;
        }
        this.zzd = j;
        if (!this.zza.zzf()) {
            i = this.zze + 1;
        }
        this.zze = i;
    }

    public final void zzf() {
        this.zza.zzd();
        this.zzb.zzd();
        this.zzc = false;
        this.zzd = -9223372036854775807L;
        this.zze = 0;
    }

    public final boolean zzg() {
        return this.zza.zzf();
    }
}
