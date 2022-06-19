package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfc.class */
public final class zzfc {
    public byte[] zza;
    private int zzb;
    private int zzc;
    private int zzd;

    public zzfc() {
        this.zza = zzfn.zzf;
    }

    public zzfc(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzd = i;
    }

    private final void zzm() {
        boolean z;
        int i = this.zzb;
        if (i >= 0) {
            int i2 = this.zzd;
            z = true;
            if (i >= i2) {
                if (i == i2 && this.zzc == 0) {
                    z = true;
                }
            }
            zzdy.zzf(z);
        }
        z = false;
        zzdy.zzf(z);
    }

    public final int zza() {
        return ((this.zzd - this.zzb) * 8) - this.zzc;
    }

    public final int zzb() {
        return (this.zzb * 8) + this.zzc;
    }

    public final int zzc(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.zzc += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.zzc;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.zzc = i5;
            byte[] bArr = this.zza;
            int i6 = this.zzb;
            this.zzb = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.zza;
        int i7 = this.zzb;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.zzc = 0;
            this.zzb = i7 + 1;
        }
        zzm();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    public final void zzd() {
        if (this.zzc == 0) {
            return;
        }
        this.zzc = 0;
        this.zzb++;
        zzm();
    }

    public final void zze(int i, int i2) {
        byte b;
        int i3;
        byte b2;
        int i4 = i & 16383;
        int min = Math.min(8 - this.zzc, 14);
        int i5 = this.zzc;
        int i6 = (8 - i5) - min;
        byte[] bArr = this.zza;
        int i7 = this.zzb;
        bArr[i7] = (byte) (((65280 >> i5) | ((1 << i6) - 1)) & bArr[i7]);
        int i8 = 14 - min;
        bArr[i7] = (byte) (b | ((i4 >>> i8) << i6));
        while (true) {
            i7++;
            if (i8 <= 8) {
                byte[] bArr2 = this.zza;
                bArr2[i7] = (byte) (bArr2[i7] & ((1 << (8 - i8)) - 1));
                bArr2[i7] = (byte) (((i4 & ((1 << i8) - 1)) << i3) | b2);
                zzj(14);
                zzm();
                return;
            }
            i8 -= 8;
            this.zza[i7] = (byte) (i4 >>> i8);
        }
    }

    public final void zzf(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte b;
        int i5 = i2 >> 3;
        for (int i6 = 0; i6 < i5; i6++) {
            byte[] bArr2 = this.zza;
            int i7 = this.zzb;
            this.zzb = i7 + 1;
            bArr[i6] = (byte) (bArr2[i7] << this.zzc);
            bArr[i6] = (byte) (((255 & bArr2[i3]) >> (8 - i4)) | b);
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b2 = (byte) (bArr[i5] & (255 >> i8));
        bArr[i5] = b2;
        int i9 = this.zzc;
        byte b3 = b2;
        int i10 = i9;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.zza;
            int i11 = this.zzb;
            this.zzb = i11 + 1;
            b3 = (byte) (b2 | ((bArr3[i11] & 255) << i9));
            bArr[i5] = b3;
            i10 = i9 - 8;
        }
        int i12 = i10 + i8;
        this.zzc = i12;
        byte[] bArr4 = this.zza;
        int i13 = this.zzb;
        bArr[i5] = (byte) (((byte) (((255 & bArr4[i13]) >> (8 - i12)) << (8 - i8))) | b3);
        if (i12 == 8) {
            this.zzc = 0;
            this.zzb = i13 + 1;
        }
        zzm();
    }

    public final void zzg(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzb = 0;
        this.zzc = 0;
        this.zzd = i;
    }

    public final void zzh(int i) {
        int i2 = i / 8;
        this.zzb = i2;
        this.zzc = i - (i2 * 8);
        zzm();
    }

    public final void zzi() {
        int i = this.zzc + 1;
        this.zzc = i;
        if (i == 8) {
            this.zzc = 0;
            this.zzb++;
        }
        zzm();
    }

    public final void zzj(int i) {
        int i2 = i / 8;
        int i3 = this.zzb + i2;
        this.zzb = i3;
        int i4 = (i - (i2 * 8)) + this.zzc;
        this.zzc = i4;
        if (i4 > 7) {
            this.zzb = i3 + 1;
            this.zzc = i4 - 8;
        }
        zzm();
    }

    public final void zzk(int i) {
        zzdy.zzf(this.zzc == 0);
        this.zzb += i;
        zzm();
    }

    public final boolean zzl() {
        boolean z = (this.zza[this.zzb] & (128 >> this.zzc)) != 0;
        zzi();
        return z;
    }
}
