package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bb2.class */
public final class bb2 {

    /* renamed from: a */
    private final byte[] f6129a = new byte[256];

    /* renamed from: b */
    private int f6130b;

    /* renamed from: c */
    private int f6131c;

    public bb2(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f6129a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f6129a;
            byte b = bArr2[i3];
            i2 = (i2 + b + bArr[i3 % bArr.length]) & 255;
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.f6130b = 0;
        this.f6131c = 0;
    }

    /* renamed from: a */
    public final void m8044a(byte[] bArr) {
        int i = this.f6130b;
        int i2 = this.f6131c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f6129a;
            byte b = bArr2[i];
            i2 = (i2 + b) & 255;
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + b) & 255] ^ bArr[i3]);
        }
        this.f6130b = i;
        this.f6131c = i2;
    }
}
