package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoy.class */
public final class zzaoy implements zzaob {
    private int zzb = -1;
    private int zzc = -1;
    private int zzd = 0;
    private ByteBuffer zze;
    private ByteBuffer zzf;
    private boolean zzg;

    public zzaoy() {
        ByteBuffer byteBuffer = zzaob.zza;
        this.zze = byteBuffer;
        this.zzf = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zza(int i, int i2, int i3) throws zzaoa {
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
            this.zze = zzaob.zza;
            return true;
        }
        throw new zzaoa(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzb() {
        int i = this.zzd;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzd() {
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee A[LOOP:2: B:31:0x00ee->B:33:0x00f4, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007e, B:33:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzaob
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoy.zze(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzf() {
        this.zzg = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.zzf;
        this.zzf = zzaob.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzh() {
        return this.zzg && this.zzf == zzaob.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzi() {
        this.zzf = zzaob.zza;
        this.zzg = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzj() {
        zzi();
        this.zze = zzaob.zza;
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = 0;
    }
}
