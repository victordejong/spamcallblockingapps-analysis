package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsg.class */
public final class zzsg {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzamf zzg = new zzamf(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zznv zznvVar, long j) throws IOException {
        int i;
        zzakt.zza(zznvVar.zzn() == zznvVar.zzm());
        this.zzg.zza(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || zznvVar.zzn() + 4 < j) && zzny.zze(zznvVar, this.zzg.zzi(), 0, 4, true)) {
                this.zzg.zzh(0);
                if (this.zzg.zzt() == 1332176723) {
                    zznvVar.zzl();
                    return true;
                }
                ((zznp) zznvVar).zzd(1, false);
            }
        }
        do {
            if (i != 0 && zznvVar.zzn() >= j) {
                return false;
            }
        } while (zznvVar.zzc(1) != -1);
        return false;
    }

    public final boolean zzc(zznv zznvVar, boolean z) throws IOException {
        zza();
        this.zzg.zza(27);
        if (!zzny.zze(zznvVar, this.zzg.zzi(), 0, 27, z) || this.zzg.zzt() != 1332176723) {
            return false;
        }
        if (this.zzg.zzn() != 0) {
            if (!z) {
                throw zzaha.zzc("unsupported bit stream revision");
            }
            return false;
        }
        this.zza = this.zzg.zzn();
        this.zzb = this.zzg.zzy();
        this.zzg.zzu();
        this.zzg.zzu();
        this.zzg.zzu();
        int zzn = this.zzg.zzn();
        this.zzc = zzn;
        this.zzd = zzn + 27;
        this.zzg.zza(zzn);
        if (!zzny.zze(zznvVar, this.zzg.zzi(), 0, this.zzc, z)) {
            return false;
        }
        for (int i = 0; i < this.zzc; i++) {
            this.zzf[i] = this.zzg.zzn();
            this.zze += this.zzf[i];
        }
        return true;
    }
}
