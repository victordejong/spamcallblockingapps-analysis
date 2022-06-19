package com.google.android.gms.internal.ads;

import io.agora.rtc.Constants;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzus.class */
public final class zzus implements zzut {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 143, Constants.ERR_MODULE_NOT_FOUND, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zznx zzc;
    private final zzox zzd;
    private final zzuw zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzamf zzh;
    private final int zzi;
    private final zzafv zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzus(zznx zznxVar, zzox zzoxVar, zzuw zzuwVar) throws zzaha {
        this.zzc = zznxVar;
        this.zzd = zzoxVar;
        this.zze = zzuwVar;
        int max = Math.max(1, zzuwVar.zzc / 10);
        this.zzi = max;
        zzamf zzamfVar = new zzamf(zzuwVar.zzf);
        zzamfVar.zzp();
        int zzp = zzamfVar.zzp();
        this.zzf = zzp;
        int i = zzuwVar.zzb;
        int i2 = (((zzuwVar.zzd - (i * 4)) * 8) / (zzuwVar.zze * i)) + 1;
        if (zzp == i2) {
            int zzw = zzamq.zzw(max, zzp);
            this.zzg = new byte[zzuwVar.zzd * zzw];
            this.zzh = new zzamf((zzp + zzp) * i * zzw);
            int i3 = ((zzuwVar.zzc * zzuwVar.zzd) * 8) / zzp;
            zzaft zzaftVar = new zzaft();
            zzaftVar.zzN("audio/raw");
            zzaftVar.zzI(i3);
            zzaftVar.zzJ(i3);
            zzaftVar.zzO((max + max) * i);
            zzaftVar.zzaa(zzuwVar.zzb);
            zzaftVar.zzab(zzuwVar.zzc);
            zzaftVar.zzac(2);
            this.zzj = zzaftVar.zzah();
            return;
        }
        throw zzaha.zzb(C22128a.m8683N1(56, "Expected frames per block: ", i2, "; got: ", zzp), null);
    }

    private final void zzd(int i) {
        long j = this.zzl;
        long zzH = zzamq.zzH(this.zzn, 1000000L, this.zze.zzc);
        int zzf = zzf(i);
        this.zzd.zzv(j + zzH, 1, zzf, this.zzm - zzf, null);
        this.zzn += i;
        this.zzm -= zzf;
    }

    private final int zze(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zzf(int i) {
        return (i + i) * this.zze.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zza(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzb(int i, long j) {
        this.zzc.zzD(new zzuz(this.zze, this.zzf, i, j));
        this.zzd.zzs(this.zzj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v102, types: [int] */
    /* JADX WARN: Type inference failed for: r0v113, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzut
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zznv r7, long r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzus.zzc(com.google.android.gms.internal.ads.zznv, long):boolean");
    }
}
