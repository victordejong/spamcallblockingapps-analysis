package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztf.class */
public final class zztf {
    private final zzox zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private long zzh;

    public zztf(zzox zzoxVar) {
        this.zza = zzoxVar;
    }

    public final void zza() {
        this.zzb = false;
        this.zzc = false;
        this.zzd = false;
        this.zze = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(int r5, long r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.zze = r1
            r0 = r4
            r1 = 0
            r0.zzd = r1
            r0 = 1
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r5
            r1 = 182(0xb6, float:2.55E-43)
            if (r0 == r1) goto L2c
            r0 = r5
            r1 = 179(0xb3, float:2.51E-43)
            if (r0 != r1) goto L26
            r0 = 179(0xb3, float:2.51E-43)
            r9 = r0
            goto L2c
        L26:
            r0 = 0
            r10 = r0
            goto L32
        L2c:
            r0 = 1
            r10 = r0
            r0 = r9
            r5 = r0
        L32:
            r0 = r4
            r1 = r10
            r0.zzb = r1
            r0 = r5
            r1 = 182(0xb6, float:2.55E-43)
            if (r0 != r1) goto L46
            r0 = r8
            r10 = r0
            goto L49
        L46:
            r0 = 0
            r10 = r0
        L49:
            r0 = r4
            r1 = r10
            r0.zzc = r1
            r0 = r4
            r1 = 0
            r0.zzf = r1
            r0 = r4
            r1 = r6
            r0.zzh = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztf.zzb(int, long):void");
    }

    public final void zzc(byte[] bArr, int i, int i2) {
        if (this.zzc) {
            int i3 = this.zzf;
            int i4 = (i + 1) - i3;
            if (i4 >= i2) {
                this.zzf = (i2 - i) + i3;
                return;
            }
            this.zzd = ((bArr[i4] & 192) >> 6) == 0;
            this.zzc = false;
        }
    }

    public final void zzd(long j, int i, boolean z) {
        if (this.zze == 182 && z && this.zzb) {
            long j2 = this.zzh;
            if (j2 != -9223372036854775807L) {
                long j3 = this.zzg;
                this.zza.zzv(j2, this.zzd ? 1 : 0, (int) (j - j3), i, null);
            }
        }
        if (this.zze != 179) {
            this.zzg = j;
        }
    }
}
