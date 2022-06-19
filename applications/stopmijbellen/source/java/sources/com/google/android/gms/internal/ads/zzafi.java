package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafi.class */
final class zzafi implements zzafj {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, C3681R.styleable.AppCompatTheme_windowActionBarOverlay, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzws zzc;
    private final zzxt zzd;
    private final zzafm zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzfd zzh;
    private final int zzi;
    private final zzab zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzafi(zzws zzwsVar, zzxt zzxtVar, zzafm zzafmVar) throws zzbj {
        this.zzc = zzwsVar;
        this.zzd = zzxtVar;
        this.zze = zzafmVar;
        int max = Math.max(1, zzafmVar.zzc / 10);
        this.zzi = max;
        zzfd zzfdVar = new zzfd(zzafmVar.zzf);
        zzfdVar.zzi();
        int zzi = zzfdVar.zzi();
        this.zzf = zzi;
        int i = zzafmVar.zzb;
        int i2 = (((zzafmVar.zzd - (i * 4)) * 8) / (zzafmVar.zze * i)) + 1;
        if (zzi == i2) {
            int zze = zzfn.zze(max, zzi);
            this.zzg = new byte[zzafmVar.zzd * zze];
            this.zzh = new zzfd((zzi + zzi) * i * zze);
            int i3 = ((zzafmVar.zzc * zzafmVar.zzd) * 8) / zzi;
            zzz zzzVar = new zzz();
            zzzVar.zzS("audio/raw");
            zzzVar.zzv(i3);
            zzzVar.zzO(i3);
            zzzVar.zzL((max + max) * i);
            zzzVar.zzw(zzafmVar.zzb);
            zzzVar.zzT(zzafmVar.zzc);
            zzzVar.zzN(2);
            this.zzj = zzzVar.zzY();
            return;
        }
        throw zzbj.zza(C0082b.m8757e(56, "Expected frames per block: ", i2, "; got: ", zzi), null);
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long j = this.zzl;
        long zzt = zzfn.zzt(this.zzn, 1000000L, this.zze.zzc);
        int zze = zze(i);
        this.zzd.zzs(j + zzt, 1, zze, this.zzm - zze, null);
        this.zzn += i;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void zza(int i, long j) {
        this.zzc.zzL(new zzafp(this.zze, this.zzf, i, j));
        this.zzd.zzk(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v102, types: [int] */
    /* JADX WARN: Type inference failed for: r0v113, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzafj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzwq r7, long r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafi.zzc(com.google.android.gms.internal.ads.zzwq, long):boolean");
    }
}
