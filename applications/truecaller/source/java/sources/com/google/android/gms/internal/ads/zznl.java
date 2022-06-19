package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznl.class */
public class zznl {
    public final zznf zza;
    public final zznk zzb;
    public zznh zzc;
    private final int zzd;

    public zznl(zzni zzniVar, zznk zznkVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zznkVar;
        this.zzd = i;
        this.zza = new zznf(zzniVar, j, 0L, j3, j4, j5, j6);
    }

    public static final int zzf(zznv zznvVar, long j, zzoq zzoqVar) {
        if (j == zznvVar.zzn()) {
            return 0;
        }
        zzoqVar.zza = j;
        return 1;
    }

    public static final boolean zzg(zznv zznvVar, long j) throws IOException {
        long zzn = j - zznvVar.zzn();
        if (zzn < 0 || zzn > 262144) {
            return false;
        }
        ((zznp) zznvVar).zzd((int) zzn, false);
        return true;
    }

    public final zzot zza() {
        return this.zza;
    }

    public final void zzb(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        zznh zznhVar = this.zzc;
        if (zznhVar != null) {
            j6 = zznhVar.zza;
            if (j6 == j) {
                return;
            }
        }
        long zzh = this.zza.zzh(j);
        j2 = this.zza.zzc;
        j3 = this.zza.zzd;
        j4 = this.zza.zze;
        j5 = this.zza.zzf;
        this.zzc = new zznh(j, zzh, 0L, j2, j3, j4, j5);
    }

    public final boolean zzc() {
        return this.zzc != null;
    }

    public final int zzd(zznv zznvVar, zzoq zzoqVar) throws IOException {
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
            zznh zznhVar = this.zzc;
            zzakt.zze(zznhVar);
            j = zznhVar.zzf;
            j2 = zznhVar.zzg;
            j3 = zznhVar.zzh;
            if (j2 - j <= this.zzd) {
                zze(false, j);
                return zzf(zznvVar, j, zzoqVar);
            } else if (!zzg(zznvVar, j3)) {
                return zzf(zznvVar, j3, zzoqVar);
            } else {
                zznvVar.zzl();
                zznk zznkVar = this.zzb;
                j4 = zznhVar.zzb;
                zznj zza = zznkVar.zza(zznvVar, j4);
                i = zza.zzb;
                if (i == -3) {
                    zze(false, j3);
                    return zzf(zznvVar, j3, zzoqVar);
                } else if (i == -2) {
                    j10 = zza.zzc;
                    j11 = zza.zzd;
                    zznh.zzf(zznhVar, j10, j11);
                } else if (i != -1) {
                    j5 = zza.zzd;
                    zzg(zznvVar, j5);
                    j6 = zza.zzd;
                    zze(true, j6);
                    j7 = zza.zzd;
                    return zzf(zznvVar, j7, zzoqVar);
                } else {
                    j8 = zza.zzc;
                    j9 = zza.zzd;
                    zznh.zzg(zznhVar, j8, j9);
                }
            }
        }
    }

    public final void zze(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }
}
