package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdy.class */
public final class zzdy {
    private final zzdx zza;
    private int zzb;
    private long zzc;
    private long zzd;
    private long zze;
    private long zzf;

    public zzdy(AudioTrack audioTrack) {
        if (zzamq.zza >= 19) {
            this.zza = new zzdx(audioTrack);
            zze();
            return;
        }
        this.zza = null;
        zzh(3);
    }

    private final void zzh(int i) {
        this.zzb = i;
        char c = 10000;
        if (i == 0) {
            this.zze = 0L;
            this.zzf = -1L;
            this.zzc = System.nanoTime() / 1000;
        } else if (i == 1) {
            this.zzd = 10000L;
            return;
        } else {
            c = (i == 2 || i == 3) ? (char) 38528 : (char) 41248;
        }
        this.zzd = c;
    }

    public final boolean zza(long j) {
        zzdx zzdxVar = this.zza;
        boolean z = false;
        if (zzdxVar == null || j - this.zze < this.zzd) {
            return false;
        }
        this.zze = j;
        boolean zza = zzdxVar.zza();
        int i = this.zzb;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && zza) {
                        zze();
                        return true;
                    }
                } else if (!zza) {
                    zze();
                    return false;
                }
            } else if (!zza) {
                zze();
            } else if (this.zza.zzc() > this.zzf) {
                zzh(2);
                return true;
            }
        } else if (zza) {
            if (this.zza.zzb() >= this.zzc) {
                this.zzf = this.zza.zzc();
                zzh(1);
                return true;
            }
            return z;
        } else if (j - this.zzc > 500000) {
            zzh(3);
            return false;
        }
        z = zza;
        return z;
    }

    public final void zzb() {
        zzh(4);
    }

    public final void zzc() {
        if (this.zzb == 4) {
            zze();
        }
    }

    public final boolean zzd() {
        return this.zzb == 2;
    }

    public final void zze() {
        if (this.zza != null) {
            zzh(0);
        }
    }

    public final long zzf() {
        zzdx zzdxVar = this.zza;
        if (zzdxVar != null) {
            return zzdxVar.zzb();
        }
        return -9223372036854775807L;
    }

    public final long zzg() {
        zzdx zzdxVar = this.zza;
        if (zzdxVar != null) {
            return zzdxVar.zzc();
        }
        return -1L;
    }
}
