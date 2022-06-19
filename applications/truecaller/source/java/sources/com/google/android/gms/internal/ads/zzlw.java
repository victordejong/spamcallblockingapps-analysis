package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlw.class */
public final class zzlw {
    private boolean zzc;
    private int zze;
    private zzlv zza = new zzlv();
    private zzlv zzb = new zzlv();
    private long zzd = -9223372036854775807L;

    public final void zza() {
        this.zza.zza();
        this.zzb.zza();
        this.zzc = false;
        this.zzd = -9223372036854775807L;
        this.zze = 0;
    }

    public final void zzb(long j) {
        this.zza.zzf(j);
        int i = 0;
        if (this.zza.zzb()) {
            this.zzc = false;
        } else if (this.zzd != -9223372036854775807L) {
            if (!this.zzc || this.zzb.zzc()) {
                this.zzb.zza();
                this.zzb.zzf(this.zzd);
            }
            this.zzc = true;
            this.zzb.zzf(j);
        }
        if (this.zzc && this.zzb.zzb()) {
            zzlv zzlvVar = this.zza;
            this.zza = this.zzb;
            this.zzb = zzlvVar;
            this.zzc = false;
        }
        this.zzd = j;
        if (!this.zza.zzb()) {
            i = this.zze + 1;
        }
        this.zze = i;
    }

    public final boolean zzc() {
        return this.zza.zzb();
    }

    public final int zzd() {
        return this.zze;
    }

    public final long zze() {
        if (this.zza.zzb()) {
            return this.zza.zzd();
        }
        return -9223372036854775807L;
    }

    public final long zzf() {
        if (this.zza.zzb()) {
            return this.zza.zze();
        }
        return -9223372036854775807L;
    }

    public final float zzg() {
        if (this.zza.zzb()) {
            return (float) (1.0E9d / this.zza.zze());
        }
        return -1.0f;
    }
}
