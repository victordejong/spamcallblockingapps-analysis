package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacw.class */
final class zzacw {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzfd zzg = new zzfd(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzwq zzwqVar, boolean z) throws IOException {
        zza();
        this.zzg.zzC(27);
        if (!zzwt.zzc(zzwqVar, this.zzg.zzH(), 0, 27, z) || this.zzg.zzs() != 1332176723) {
            return false;
        }
        if (this.zzg.zzk() != 0) {
            if (!z) {
                throw zzbj.zzc("unsupported bit stream revision");
            }
            return false;
        }
        this.zza = this.zzg.zzk();
        this.zzb = this.zzg.zzp();
        this.zzg.zzq();
        this.zzg.zzq();
        this.zzg.zzq();
        int zzk = this.zzg.zzk();
        this.zzc = zzk;
        this.zzd = zzk + 27;
        this.zzg.zzC(zzk);
        if (!zzwt.zzc(zzwqVar, this.zzg.zzH(), 0, this.zzc, z)) {
            return false;
        }
        for (int i = 0; i < this.zzc; i++) {
            this.zzf[i] = this.zzg.zzk();
            this.zze += this.zzf[i];
        }
        return true;
    }

    public final boolean zzc(zzwq zzwqVar, long j) throws IOException {
        int i;
        zzdy.zzd(zzwqVar.zze() == zzwqVar.zzd());
        this.zzg.zzC(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || zzwqVar.zze() + 4 < j) && zzwt.zzc(zzwqVar, this.zzg.zzH(), 0, 4, true)) {
                this.zzg.zzF(0);
                if (this.zzg.zzs() == 1332176723) {
                    zzwqVar.zzj();
                    return true;
                }
                ((zzwk) zzwqVar).zzo(1, false);
            }
        }
        do {
            if (i != 0 && zzwqVar.zze() >= j) {
                return false;
            }
        } while (zzwqVar.zzb(1) != -1);
        return false;
    }
}
