package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeg.class */
final class zzaeg {
    public byte[] zza;
    public int zzb;
    private final int zzc;
    private boolean zzd;
    private boolean zze;

    public zzaeg(int i, int i2) {
        this.zzc = i;
        byte[] bArr = new byte[131];
        this.zza = bArr;
        bArr[2] = (byte) 1;
    }

    public final void zza(byte[] bArr, int i, int i2) {
        if (!this.zzd) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.zza;
        int length = bArr2.length;
        int i4 = this.zzb + i3;
        if (length < i4) {
            this.zza = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.zza, this.zzb, i3);
        this.zzb += i3;
    }

    public final void zzb() {
        this.zzd = false;
        this.zze = false;
    }

    public final void zzc(int i) {
        boolean z = true;
        zzdy.zzf(!this.zzd);
        if (i != this.zzc) {
            z = false;
        }
        this.zzd = z;
        if (z) {
            this.zzb = 3;
            this.zze = false;
        }
    }

    public final boolean zzd(int i) {
        if (!this.zzd) {
            return false;
        }
        this.zzb -= i;
        this.zzd = false;
        this.zze = true;
        return true;
    }

    public final boolean zze() {
        return this.zze;
    }
}
