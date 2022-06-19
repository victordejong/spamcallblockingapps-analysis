package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTrack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmb.class */
final class zzmb {
    private final zzma zza;
    private int zzb;
    private long zzc;
    private long zzd;
    private long zze;
    private long zzf;

    public zzmb(AudioTrack audioTrack) {
        if (zzfn.zza >= 19) {
            this.zza = new zzma(audioTrack);
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

    @TargetApi(19)
    public final long zza() {
        zzma zzmaVar = this.zza;
        if (zzmaVar != null) {
            return zzmaVar.zza();
        }
        return -1L;
    }

    @TargetApi(19)
    public final long zzb() {
        zzma zzmaVar = this.zza;
        if (zzmaVar != null) {
            return zzmaVar.zzb();
        }
        return -9223372036854775807L;
    }

    public final void zzc() {
        if (this.zzb == 4) {
            zze();
        }
    }

    public final void zzd() {
        zzh(4);
    }

    public final void zze() {
        if (this.zza != null) {
            zzh(0);
        }
    }

    public final boolean zzf() {
        return this.zzb == 2;
    }

    @TargetApi(19)
    public final boolean zzg(long j) {
        zzma zzmaVar = this.zza;
        if (zzmaVar == null || j - this.zze < this.zzd) {
            return false;
        }
        this.zze = j;
        boolean zzc = zzmaVar.zzc();
        int i = this.zzb;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && zzc) {
                        zze();
                        return true;
                    }
                } else if (!zzc) {
                    zze();
                    return false;
                }
            } else if (!zzc) {
                zze();
            } else if (this.zza.zza() > this.zzf) {
                zzh(2);
                return true;
            }
        } else if (zzc) {
            if (this.zza.zzb() >= this.zzc) {
                this.zzf = this.zza.zza();
                zzh(1);
                return true;
            }
            zzc = false;
        } else if (j - this.zzc > 500000) {
            zzh(3);
            return false;
        }
        return zzc;
    }
}
