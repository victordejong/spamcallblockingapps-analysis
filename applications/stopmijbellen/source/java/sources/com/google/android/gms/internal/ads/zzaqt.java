package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqt.class */
final class zzaqt implements zzapv {
    private int zzb = -1;
    private int zzc = -1;
    private int zzd = 0;
    private ByteBuffer zze;
    private ByteBuffer zzf;
    private boolean zzg;

    public zzaqt() {
        ByteBuffer byteBuffer = zzapv.zza;
        this.zze = byteBuffer;
        this.zzf = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zzb() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final ByteBuffer zzc() {
        ByteBuffer byteBuffer = this.zzf;
        this.zzf = zzapv.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzd() {
        this.zzf = zzapv.zza;
        this.zzg = false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zze() {
        this.zzg = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee A[LOOP:2: B:31:0x00ee->B:33:0x00f4, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007e, B:33:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzapv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqt.zzf(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzg() {
        zzd();
        this.zze = zzapv.zza;
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzh(int i, int i2, int i3) throws zzapu {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.zzb == i && this.zzc == i2 && this.zzd == i3) {
                return false;
            }
            this.zzb = i;
            this.zzc = i2;
            this.zzd = i3;
            if (i3 != 2) {
                return true;
            }
            this.zze = zzapv.zza;
            return true;
        }
        throw new zzapu(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzi() {
        int i = this.zzd;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzj() {
        return this.zzg && this.zzf == zzapv.zza;
    }
}
