package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpq.class */
public final class zzpq {
    private byte[] data;
    private int zzbki;
    private int zzbkj = 0;
    private int zzbkk;

    public zzpq(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.zzbki = i;
        this.zzbkk = i2;
        zzjh();
    }

    private final boolean zzbn(int i) {
        if (2 > i || i >= this.zzbkk) {
            return false;
        }
        byte[] bArr = this.data;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    private final int zzjg() {
        int i = 0;
        int i2 = 0;
        while (!zzjd()) {
            i2++;
        }
        if (i2 > 0) {
            i = zzbl(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    private final void zzjh() {
        int i;
        int i2;
        int i3 = this.zzbki;
        zzpg.checkState(i3 >= 0 && (i = this.zzbkj) >= 0 && i < 8 && (i3 < (i2 = this.zzbkk) || (i3 == i2 && i == 0)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49 */
    public final int zzbl(int i) {
        int i2;
        boolean z;
        if (i == 0) {
            return 0;
        }
        int i3 = i / 8;
        int i4 = i;
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = zzbn(this.zzbki + 1) ? this.zzbki + 2 : this.zzbki + 1;
            int i8 = this.zzbkj;
            if (i8 != 0) {
                byte[] bArr = this.data;
                z = ((bArr[i7] & 255) >>> (8 - i8)) | ((bArr[this.zzbki] & 255) << i8);
            } else {
                z = this.data[this.zzbki];
            }
            int i9 = z == true ? 1 : 0;
            Object[] objArr = z == true ? 1 : 0;
            i4 -= 8;
            i5 |= (255 & i9) << i4;
            this.zzbki = i7;
        }
        int i10 = i5;
        if (i4 > 0) {
            int i11 = this.zzbkj + i4;
            byte b = (byte) (255 >> (8 - i4));
            int i12 = zzbn(this.zzbki + 1) ? this.zzbki + 2 : this.zzbki + 1;
            if (i11 > 8) {
                byte[] bArr2 = this.data;
                i2 = (b & (((255 & bArr2[i12]) >> (16 - i11)) | ((bArr2[this.zzbki] & 255) << (i11 - 8)))) | i5;
                this.zzbki = i12;
            } else {
                int i13 = (b & ((255 & this.data[this.zzbki]) >> (8 - i11))) | i5;
                i2 = i13;
                if (i11 == 8) {
                    this.zzbki = i12;
                    i2 = i13;
                }
            }
            this.zzbkj = i11 % 8;
            i10 = i2;
        }
        zzjh();
        return i10;
    }

    public final void zzbm(int i) {
        int i2 = this.zzbki;
        int i3 = (i / 8) + i2;
        this.zzbki = i3;
        int i4 = this.zzbkj + (i % 8);
        this.zzbkj = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.zzbki = i3 + 1;
            this.zzbkj = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 > this.zzbki) {
                zzjh();
                return;
            }
            i5 = i6;
            if (zzbn(i6)) {
                this.zzbki++;
                i5 = i6 + 2;
            }
        }
    }

    public final boolean zzjd() {
        return zzbl(1) == 1;
    }

    public final int zzje() {
        return zzjg();
    }

    public final int zzjf() {
        int zzjg = zzjg();
        return (zzjg % 2 == 0 ? -1 : 1) * ((zzjg + 1) / 2);
    }
}
