package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawv.class */
public final class zzawv {
    private final byte[] zza;
    private final int zzb;
    private int zzc;
    private int zzd = 0;

    public zzawv(byte[] bArr, int i, int i2) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = i2;
        zzg();
    }

    private final int zzf() {
        int i = 0;
        int i2 = 0;
        while (!zze()) {
            i2++;
        }
        if (i2 > 0) {
            i = zza(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    private final void zzg() {
        boolean z;
        int i;
        int i2 = this.zzc;
        if (i2 >= 0 && (i = this.zzd) >= 0 && i < 8) {
            int i3 = this.zzb;
            z = true;
            if (i2 >= i3) {
                if (i2 == i3 && i == 0) {
                    z = true;
                }
            }
            zzawm.zze(z);
        }
        z = false;
        zzawm.zze(z);
    }

    private final boolean zzh(int i) {
        if (i < 2 || i >= this.zzb) {
            return false;
        }
        byte[] bArr = this.zza;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46 */
    public final int zza(int i) {
        int i2;
        boolean z;
        int i3 = 0;
        int i4 = 0;
        int i5 = i;
        while (true) {
            i2 = i5;
            if (i3 >= (i >> 3)) {
                break;
            }
            int i6 = zzh(this.zzc + 1) ? this.zzc + 2 : this.zzc + 1;
            int i7 = this.zzd;
            if (i7 != 0) {
                byte[] bArr = this.zza;
                z = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.zzc] & 255) << i7);
            } else {
                z = this.zza[this.zzc];
            }
            int i8 = z == true ? 1 : 0;
            Object[] objArr = z == true ? 1 : 0;
            int i9 = i2 - 8;
            i4 |= (255 & i8) << i9;
            this.zzc = i6;
            i3++;
            i5 = i9;
        }
        int i10 = i4;
        if (i2 > 0) {
            int i11 = this.zzd + i2;
            byte b = (byte) (255 >> (8 - i2));
            int i12 = zzh(this.zzc + 1) ? this.zzc + 2 : this.zzc + 1;
            if (i11 > 8) {
                byte[] bArr2 = this.zza;
                i10 = (b & (((255 & bArr2[i12]) >> (16 - i11)) | ((bArr2[this.zzc] & 255) << (i11 - 8)))) | i4;
                this.zzc = i12;
            } else {
                int i13 = (b & ((255 & this.zza[this.zzc]) >> (8 - i11))) | i4;
                i10 = i13;
                if (i11 == 8) {
                    this.zzc = i12;
                    i10 = i13;
                }
            }
            this.zzd = i11 % 8;
        }
        zzg();
        return i10;
    }

    public final int zzb() {
        int zzf = zzf();
        return ((zzf + 1) / 2) * (zzf % 2 == 0 ? -1 : 1);
    }

    public final int zzc() {
        return zzf();
    }

    public final void zzd(int i) {
        int i2 = this.zzc;
        int i3 = (i >> 3) + i2;
        this.zzc = i3;
        int i4 = this.zzd + (i & 7);
        this.zzd = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.zzc = i3 + 1;
            this.zzd = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 > this.zzc) {
                zzg();
                return;
            }
            i5 = i6;
            if (zzh(i6)) {
                this.zzc++;
                i5 = i6 + 2;
            }
        }
    }

    public final boolean zze() {
        return zza(1) == 1;
    }
}
