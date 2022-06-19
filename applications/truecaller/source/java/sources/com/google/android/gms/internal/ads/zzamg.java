package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamg.class */
public final class zzamg {
    private byte[] zza;
    private int zzb;
    private int zzc;
    private int zzd;

    public zzamg(byte[] bArr, int i, int i2) {
        zza(bArr, i, i2);
    }

    private final int zzh() {
        int i = 0;
        int i2 = 0;
        while (!zzd()) {
            i2++;
        }
        if (i2 > 0) {
            i = zze(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    private final boolean zzi(int i) {
        if (i < 2 || i >= this.zzb) {
            return false;
        }
        byte[] bArr = this.zza;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    private final void zzj() {
        boolean z;
        int i = this.zzc;
        if (i >= 0) {
            int i2 = this.zzb;
            z = true;
            if (i >= i2) {
                if (i == i2 && this.zzd == 0) {
                    z = true;
                }
            }
            zzakt.zzd(z);
        }
        z = false;
        zzakt.zzd(z);
    }

    public final void zza(byte[] bArr, int i, int i2) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = i2;
        this.zzd = 0;
        zzj();
    }

    public final void zzb() {
        int i = 1;
        int i2 = this.zzd + 1;
        this.zzd = i2;
        if (i2 == 8) {
            this.zzd = 0;
            int i3 = this.zzc;
            if (true == zzi(i3 + 1)) {
                i = 2;
            }
            this.zzc = i3 + i;
        }
        zzj();
    }

    public final void zzc(int i) {
        int i2 = this.zzc;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.zzc = i4;
        int i5 = (i - (i3 * 8)) + this.zzd;
        this.zzd = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.zzc = i4 + 1;
            this.zzd = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.zzc) {
                zzj();
                return;
            }
            i6 = i7;
            if (zzi(i7)) {
                this.zzc++;
                i6 = i7 + 2;
            }
        }
    }

    public final boolean zzd() {
        boolean z = (this.zza[this.zzc] & (128 >> this.zzd)) != 0;
        zzb();
        return z;
    }

    public final int zze(int i) {
        int i2;
        int i3;
        this.zzd += i;
        int i4 = 0;
        while (true) {
            i2 = this.zzd;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.zzd = i5;
            byte[] bArr = this.zza;
            int i6 = this.zzc;
            i4 |= (bArr[i6] & 255) << i5;
            if (true != zzi(i6 + 1)) {
                i3 = 1;
            }
            this.zzc = i6 + i3;
        }
        byte[] bArr2 = this.zza;
        int i7 = this.zzc;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.zzd = 0;
            if (true != zzi(i7 + 1)) {
                i3 = 1;
            }
            this.zzc = i7 + i3;
        }
        zzj();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    public final int zzf() {
        return zzh();
    }

    public final int zzg() {
        int zzh = zzh();
        return ((zzh + 1) / 2) * (zzh % 2 == 0 ? -1 : 1);
    }
}
