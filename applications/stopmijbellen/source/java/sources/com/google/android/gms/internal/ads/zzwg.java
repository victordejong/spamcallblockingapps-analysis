package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwg.class */
public class zzwg {
    public final zzwa zza;
    public final zzwf zzb;
    public zzwc zzc;
    private final int zzd;

    public zzwg(zzwd zzwdVar, zzwf zzwfVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzwfVar;
        this.zzd = i;
        this.zza = new zzwa(zzwdVar, j, 0L, j3, j4, j5, j6);
    }

    public static final int zzf(zzwq zzwqVar, long j, zzxm zzxmVar) {
        if (j == zzwqVar.zze()) {
            return 0;
        }
        zzxmVar.zza = j;
        return 1;
    }

    public static final boolean zzg(zzwq zzwqVar, long j) throws IOException {
        long zze = j - zzwqVar.zze();
        if (zze < 0 || zze > 262144) {
            return false;
        }
        ((zzwk) zzwqVar).zzo((int) zze, false);
        return true;
    }

    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            zzwc zzwcVar = this.zzc;
            zzdy.zzb(zzwcVar);
            j = zzwcVar.zzf;
            j2 = zzwcVar.zzg;
            j3 = zzwcVar.zzh;
            if (j2 - j <= this.zzd) {
                zzc(false, j);
                return zzf(zzwqVar, j, zzxmVar);
            } else if (!zzg(zzwqVar, j3)) {
                return zzf(zzwqVar, j3, zzxmVar);
            } else {
                zzwqVar.zzj();
                zzwf zzwfVar = this.zzb;
                j4 = zzwcVar.zzb;
                zzwe zza = zzwfVar.zza(zzwqVar, j4);
                i = zza.zzb;
                if (i == -3) {
                    zzc(false, j3);
                    return zzf(zzwqVar, j3, zzxmVar);
                } else if (i == -2) {
                    j10 = zza.zzc;
                    j11 = zza.zzd;
                    zzwc.zzh(zzwcVar, j10, j11);
                } else if (i != -1) {
                    j5 = zza.zzd;
                    zzg(zzwqVar, j5);
                    j6 = zza.zzd;
                    zzc(true, j6);
                    j7 = zza.zzd;
                    return zzf(zzwqVar, j7, zzxmVar);
                } else {
                    j8 = zza.zzc;
                    j9 = zza.zzd;
                    zzwc.zzg(zzwcVar, j8, j9);
                }
            }
        }
    }

    public final zzxp zzb() {
        return this.zza;
    }

    public final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        zzwc zzwcVar = this.zzc;
        if (zzwcVar != null) {
            j6 = zzwcVar.zza;
            if (j6 == j) {
                return;
            }
        }
        long zzf = this.zza.zzf(j);
        j2 = this.zza.zzc;
        j3 = this.zza.zzd;
        j4 = this.zza.zze;
        j5 = this.zza.zzf;
        this.zzc = new zzwc(j, zzf, 0L, j2, j3, j4, j5);
    }

    public final boolean zze() {
        return this.zzc != null;
    }
}
