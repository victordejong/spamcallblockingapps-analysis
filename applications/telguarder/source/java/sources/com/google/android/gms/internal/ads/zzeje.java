package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeje.class */
public final class zzeje {
    private final byte[] zzilj = new byte[256];
    private int zzilk;
    private int zzill;

    public zzeje(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zzilj[i] = (byte) i;
        }
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            byte[] bArr2 = this.zzilj;
            b = (b + bArr2[i2] + bArr[i2 % bArr.length]) & 255;
            byte b2 = bArr2[i2];
            bArr2[i2] = bArr2[b];
            bArr2[b] = b2;
        }
        this.zzilk = 0;
        this.zzill = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    public final void zzs(byte[] bArr) {
        int i = this.zzilk;
        byte b = this.zzill;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.zzilj;
            b = (b + bArr2[i]) & 255;
            byte b2 = bArr2[i];
            bArr2[i] = bArr2[b];
            bArr2[b] = b2;
            bArr[i2] = (byte) (bArr2[(bArr2[i] + bArr2[b]) & 255] ^ bArr[i2]);
        }
        this.zzilk = i;
        this.zzill = b;
    }
}
