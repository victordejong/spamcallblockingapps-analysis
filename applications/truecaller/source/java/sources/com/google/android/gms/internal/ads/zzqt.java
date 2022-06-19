package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqt.class */
public final class zzqt implements zzqs {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;

    private zzqt(long[] jArr, long[] jArr2, long j, long j2) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static zzqt zza(long j, long j2, zzon zzonVar, zzamf zzamfVar) {
        int i;
        zzamfVar.zzk(10);
        int zzv = zzamfVar.zzv();
        if (zzv <= 0) {
            return null;
        }
        int i2 = zzonVar.zzd;
        long zzH = zzamq.zzH(zzv, (i2 >= 32000 ? 1152 : 576) * 1000000, i2);
        int zzo = zzamfVar.zzo();
        int zzo2 = zzamfVar.zzo();
        int zzo3 = zzamfVar.zzo();
        zzamfVar.zzk(2);
        long j3 = j2 + zzonVar.zzc;
        long[] jArr = new long[zzo];
        long[] jArr2 = new long[zzo];
        ?? r11 = j2;
        for (int i3 = 0; i3 < zzo; i3++) {
            jArr[i3] = (i3 * zzH) / zzo;
            jArr2[i3] = Math.max((long) r11, j3);
            if (zzo3 == 1) {
                i = zzamfVar.zzn();
            } else if (zzo3 == 2) {
                i = zzamfVar.zzo();
            } else if (zzo3 == 3) {
                i = zzamfVar.zzr();
            } else if (zzo3 != 4) {
                return null;
            } else {
                i = zzamfVar.zzB();
            }
            r11 += i * zzo2;
        }
        if (j != -1) {
        }
        return new zzqt(jArr, jArr2, zzH, r11);
    }

    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzb(long j) {
        return this.zza[zzamq.zzD(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzqs
    public final long zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        int zzD = zzamq.zzD(this.zza, j, true, true);
        zzou zzouVar = new zzou(this.zza[zzD], this.zzb[zzD]);
        if (zzouVar.zzb < j) {
            long[] jArr = this.zza;
            if (zzD != jArr.length - 1) {
                int i = zzD + 1;
                return new zzor(zzouVar, new zzou(jArr[i], this.zzb[i]));
            }
        }
        return new zzor(zzouVar, zzouVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzc;
    }
}
