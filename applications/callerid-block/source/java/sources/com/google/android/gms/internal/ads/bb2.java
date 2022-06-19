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
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            byte[] bArr2 = this.f6129a;
            byte b2 = bArr2[i2];
            b = (b + b2 + bArr[i2 % bArr.length]) & 255;
            bArr2[i2] = bArr2[b];
            bArr2[b] = b2;
        }
        this.f6130b = 0;
        this.f6131c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* renamed from: a */
    public final void m8044a(byte[] bArr) {
        int i = this.f6130b;
        byte b = this.f6131c;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f6129a;
            byte b2 = bArr2[i];
            b = (b + b2) & 255;
            bArr2[i] = bArr2[b];
            bArr2[b] = b2;
            bArr[i2] = (byte) (bArr2[(bArr2[i] + b2) & 255] ^ bArr[i2]);
        }
        this.f6130b = i;
        this.f6131c = b;
    }
}
