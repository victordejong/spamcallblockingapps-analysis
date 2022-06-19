package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabk.class */
final class zzabk implements zzabi {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long[] zzf;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private zzabk(long j, int i, long j2, long j3, long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = j3;
        this.zze = j3 == -1 ? (char) 65535 : j + j3;
    }

    public static zzabk zza(long j, long j2, zzxj zzxjVar, zzfd zzfdVar) {
        int zzn;
        int i = zzxjVar.zzg;
        int i2 = zzxjVar.zzd;
        int zze = zzfdVar.zze();
        if ((zze & 1) != 1 || (zzn = zzfdVar.zzn()) == 0) {
            return null;
        }
        long zzt = zzfn.zzt(zzn, i * 1000000, i2);
        if ((zze & 6) != 6) {
            return new zzabk(j2, zzxjVar.zzc, zzt, -1L, null);
        }
        long zzs = zzfdVar.zzs();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = zzfdVar.zzk();
        }
        if (j != -1) {
            long j3 = j2 + zzs;
            if (j != j3) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(", ");
                sb.append(j3);
                Log.w("XingSeeker", sb.toString());
            }
        }
        return new zzabk(j2, zzxjVar.zzc, zzt, zzs, jArr);
    }

    private final long zzd(int i) {
        return (this.zzc * i) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzb() {
        return this.zze;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38 */
    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzc(long j) {
        long j2 = j - this.zza;
        if (!zzh() || j2 <= this.zzb) {
            return 0L;
        }
        long[] jArr = (long[]) zzdy.zzb(this.zzf);
        double d = (j2 * 256.0d) / this.zzd;
        int zzd = zzfn.zzd(jArr, (long) d, true, true);
        long zzd2 = zzd(zzd);
        long j3 = jArr[zzd];
        int i = zzd + 1;
        long zzd3 = zzd(i);
        char c = zzd == 99 ? (char) 256 : jArr[i];
        return Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (zzd3 - zzd2)) + zzd2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzc;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        long[] jArr;
        if (!zzh()) {
            zzxq zzxqVar = new zzxq(0L, this.zza + this.zzb);
            return new zzxn(zzxqVar, zzxqVar);
        }
        long zzo = zzfn.zzo(j, 0L, this.zzc);
        double d = (zzo * 100.0d) / this.zzc;
        char c = 0;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) zzdy.zzb(this.zzf))[i];
                c = d2 + (((i == 99 ? (char) 0 : jArr[i + 1]) - d2) * (d - i));
            }
        }
        zzxq zzxqVar2 = new zzxq(zzo, this.zza + zzfn.zzo(Math.round((c / 0) * this.zzd), this.zzb, this.zzd - 1));
        return new zzxn(zzxqVar2, zzxqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return this.zzf != null;
    }
}
