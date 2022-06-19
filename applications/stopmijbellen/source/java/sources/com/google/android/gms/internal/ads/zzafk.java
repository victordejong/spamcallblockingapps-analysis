package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafk.class */
final class zzafk implements zzafj {
    private final zzws zza;
    private final zzxt zzb;
    private final zzafm zzc;
    private final zzab zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzafk(zzws zzwsVar, zzxt zzxtVar, zzafm zzafmVar, String str, int i) throws zzbj {
        this.zza = zzwsVar;
        this.zzb = zzxtVar;
        this.zzc = zzafmVar;
        int i2 = (zzafmVar.zzb * zzafmVar.zze) / 8;
        int i3 = zzafmVar.zzd;
        if (i3 == i2) {
            int i4 = zzafmVar.zzc * i2;
            int i5 = i4 * 8;
            int max = Math.max(i2, i4 / 10);
            this.zze = max;
            zzz zzzVar = new zzz();
            zzzVar.zzS(str);
            zzzVar.zzv(i5);
            zzzVar.zzO(i5);
            zzzVar.zzL(max);
            zzzVar.zzw(zzafmVar.zzb);
            zzzVar.zzT(zzafmVar.zzc);
            zzzVar.zzN(i);
            this.zzd = zzzVar.zzY();
            return;
        }
        throw zzbj.zza(C0082b.m8757e(50, "Expected block size: ", i2, "; got: ", i3), null);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void zza(int i, long j) {
        this.zza.zzL(new zzafp(this.zzc, 1, i, j));
        this.zzb.zzk(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void zzb(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    @Override // com.google.android.gms.internal.ads.zzafj
    public final boolean zzc(zzwq zzwqVar, long j) throws IOException {
        int i;
        zzafm zzafmVar;
        int i2;
        int i3;
        while (true) {
            i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i <= 0 || (i2 = this.zzg) >= (i3 = this.zze)) {
                break;
            }
            int zza = zzxr.zza(this.zzb, zzwqVar, (int) Math.min(i3 - i2, (long) j), true);
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
            long zzt = zzfn.zzt(this.zzh, 1000000L, zzafmVar.zzc);
            int i6 = i5 * i4;
            int i7 = this.zzg - i6;
            this.zzb.zzs(j2 + zzt, 1, i6, i7, null);
            this.zzh += i5;
            this.zzg = i7;
        }
        return i <= 0;
    }
}
