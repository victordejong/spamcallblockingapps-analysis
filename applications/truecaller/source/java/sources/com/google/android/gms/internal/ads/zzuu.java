package com.google.android.gms.internal.ads;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuu.class */
public final class zzuu implements zzut {
    private final zznx zza;
    private final zzox zzb;
    private final zzuw zzc;
    private final zzafv zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzuu(zznx zznxVar, zzox zzoxVar, zzuw zzuwVar, String str, int i) throws zzaha {
        this.zza = zznxVar;
        this.zzb = zzoxVar;
        this.zzc = zzuwVar;
        int i2 = (zzuwVar.zzb * zzuwVar.zze) / 8;
        int i3 = zzuwVar.zzd;
        if (i3 == i2) {
            int i4 = zzuwVar.zzc * i2;
            int i5 = i4 * 8;
            int max = Math.max(i2, i4 / 10);
            this.zze = max;
            zzaft zzaftVar = new zzaft();
            zzaftVar.zzN(str);
            zzaftVar.zzI(i5);
            zzaftVar.zzJ(i5);
            zzaftVar.zzO(max);
            zzaftVar.zzaa(zzuwVar.zzb);
            zzaftVar.zzab(zzuwVar.zzc);
            zzaftVar.zzac(i);
            this.zzd = zzaftVar.zzah();
            return;
        }
        throw zzaha.zzb(C22128a.m8683N1(50, "Expected block size: ", i2, "; got: ", i3), null);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zza(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzb(int i, long j) {
        this.zza.zzD(new zzuz(this.zzc, 1, i, j));
        this.zzb.zzs(this.zzd);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    @Override // com.google.android.gms.internal.ads.zzut
    public final boolean zzc(zznv zznvVar, long j) throws IOException {
        int i;
        zzuw zzuwVar;
        int i2;
        int i3;
        while (true) {
            i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i <= 0 || (i2 = this.zzg) >= (i3 = this.zze)) {
                break;
            }
            int zza = zzov.zza(this.zzb, zznvVar, (int) Math.min(i3 - i2, (long) j), true);
            if (zza == -1) {
                j = 0;
            } else {
                this.zzg += zza;
                j -= zza;
            }
        }
        int i4 = this.zzc.zzd;
        int i5 = this.zzg / i4;
        if (i5 > 0) {
            long j2 = this.zzf;
            long zzH = zzamq.zzH(this.zzh, 1000000L, zzuwVar.zzc);
            int i6 = i5 * i4;
            int i7 = this.zzg - i6;
            this.zzb.zzv(j2 + zzH, 1, i6, i7, null);
            this.zzh += i5;
            this.zzg = i7;
        }
        return i <= 0;
    }
}
