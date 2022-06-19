package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqu.class */
public final class zzqu implements zzqs {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long[] zzf;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private zzqu(long j, int i, long j2, long j3, long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = j3;
        this.zze = j3 == -1 ? (char) 65535 : j + j3;
    }

    public static zzqu zza(long j, long j2, zzon zzonVar, zzamf zzamfVar) {
        int zzB;
        int i = zzonVar.zzg;
        int i2 = zzonVar.zzd;
        int zzv = zzamfVar.zzv();
        if ((zzv & 1) != 1 || (zzB = zzamfVar.zzB()) == 0) {
            return null;
        }
        long zzH = zzamq.zzH(zzB, i * 1000000, i2);
        if ((zzv & 6) != 6) {
            return new zzqu(j2, zzonVar.zzc, zzH, -1L, null);
        }
        long zzt = zzamfVar.zzt();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = zzamfVar.zzn();
        }
        if (j != -1) {
        }
        return new zzqu(j2, zzonVar.zzc, zzH, zzt, jArr);
    }

    private final long zzd(int i) {
        return (this.zzc * i) / 100;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38 */
    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzb(long j) {
        long j2 = j - this.zza;
        if (!zze() || j2 <= this.zzb) {
            return 0L;
        }
        long[] jArr = (long[]) zzakt.zze(this.zzf);
        double d = (j2 * 256.0d) / this.zzd;
        int zzD = zzamq.zzD(jArr, (long) d, true, true);
        long zzd = zzd(zzD);
        long j3 = jArr[zzD];
        int i = zzD + 1;
        long zzd2 = zzd(i);
        char c = zzD == 99 ? (char) 256 : jArr[i];
        return Math.round((j3 == c ? (char) 0 : (d - j3) / (c - j3)) * (zzd2 - zzd)) + zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return this.zzf != null;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        long[] jArr;
        if (!zze()) {
            zzou zzouVar = new zzou(0L, this.zza + this.zzb);
            return new zzor(zzouVar, zzouVar);
        }
        long zzy = zzamq.zzy(j, 0L, this.zzc);
        double d = (zzy * 100.0d) / this.zzc;
        char c = 0;
        if (d > PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                double d2 = ((long[]) zzakt.zze(this.zzf))[i];
                c = d2 + (((i == 99 ? (char) 0 : jArr[i + 1]) - d2) * (d - i));
            }
        }
        zzou zzouVar2 = new zzou(zzy, this.zza + zzamq.zzy(Math.round((c / 0) * this.zzd), this.zzb, this.zzd - 1));
        return new zzor(zzouVar2, zzouVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzc;
    }
}
