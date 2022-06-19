package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztl.class */
public final class zztl {
    private final zzox zza;
    private long zzb;
    private boolean zzc;
    private int zzd;
    private long zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private long zzk;
    private long zzl;
    private boolean zzm;

    public zztl(zzox zzoxVar) {
        this.zza = zzoxVar;
    }

    private final void zze(int i) {
        long j = this.zzl;
        if (j == -9223372036854775807L) {
            return;
        }
        boolean z = this.zzm;
        long j2 = this.zzb;
        long j3 = this.zzk;
        this.zza.zzv(j, z ? 1 : 0, (int) (j2 - j3), i, null);
    }

    public final void zza() {
        this.zzf = false;
        this.zzg = false;
        this.zzh = false;
        this.zzi = false;
        this.zzj = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0092, code lost:
        if (r8 <= 9) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(long r5, int r7, int r8, long r9, boolean r11) {
        /*
            r4 = this;
            r0 = 0
            r12 = r0
            r0 = r4
            r1 = 0
            r0.zzg = r1
            r0 = r4
            r1 = 0
            r0.zzh = r1
            r0 = r4
            r1 = r9
            r0.zze = r1
            r0 = r4
            r1 = 0
            r0.zzd = r1
            r0 = r4
            r1 = r5
            r0.zzb = r1
            r0 = r8
            r1 = 32
            if (r0 < r1) goto L68
            r0 = r8
            r1 = 40
            if (r0 != r1) goto L2e
            goto L68
        L2e:
            r0 = r4
            boolean r0 = r0.zzi
            if (r0 == 0) goto L4b
            r0 = r4
            boolean r0 = r0.zzj
            if (r0 != 0) goto L4b
            r0 = r11
            if (r0 == 0) goto L46
            r0 = r4
            r1 = r7
            r0.zze(r1)
        L46:
            r0 = r4
            r1 = 0
            r0.zzi = r1
        L4b:
            r0 = r8
            r1 = 35
            if (r0 <= r1) goto L59
            r0 = r8
            r1 = 39
            if (r0 != r1) goto L68
        L59:
            r0 = r4
            r1 = r4
            boolean r1 = r1.zzj
            r2 = 1
            r1 = r1 ^ r2
            r0.zzh = r1
            r0 = r4
            r1 = 1
            r0.zzj = r1
        L68:
            r0 = r8
            r1 = 16
            if (r0 < r1) goto L7c
            r0 = r8
            r1 = 21
            if (r0 > r1) goto L7c
            r0 = 1
            r11 = r0
            goto L7f
        L7c:
            r0 = 0
            r11 = r0
        L7f:
            r0 = r4
            r1 = r11
            r0.zzc = r1
            r0 = r11
            if (r0 != 0) goto L95
            r0 = r12
            r11 = r0
            r0 = r8
            r1 = 9
            if (r0 > r1) goto L98
        L95:
            r0 = 1
            r11 = r0
        L98:
            r0 = r4
            r1 = r11
            r0.zzf = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztl.zzb(long, int, int, long, boolean):void");
    }

    public final void zzc(byte[] bArr, int i, int i2) {
        if (this.zzf) {
            int i3 = this.zzd;
            int i4 = (i + 2) - i3;
            if (i4 >= i2) {
                this.zzd = (i2 - i) + i3;
                return;
            }
            this.zzg = (bArr[i4] & 128) != 0;
            this.zzf = false;
        }
    }

    public final void zzd(long j, int i, boolean z) {
        if (this.zzj && this.zzg) {
            this.zzm = this.zzc;
            this.zzj = false;
        } else if (!this.zzh && !this.zzg) {
        } else {
            if (z && this.zzi) {
                zze(i + ((int) (j - this.zzb)));
            }
            this.zzk = this.zzb;
            this.zzl = this.zze;
            this.zzm = this.zzc;
            this.zzi = true;
        }
    }
}
