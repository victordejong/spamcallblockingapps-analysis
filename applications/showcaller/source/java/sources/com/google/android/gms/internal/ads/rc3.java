package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rc3.class */
public final class rc3 {

    /* renamed from: a */
    private final byte[] f28851a = new byte[256];

    /* renamed from: b */
    private int f28852b;

    /* renamed from: c */
    private int f28853c;

    public rc3(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f28851a[i] = (byte) i;
        }
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            byte[] bArr2 = this.f28851a;
            byte b2 = bArr2[i2];
            b = (b + b2 + bArr[i2 % bArr.length]) & 255;
            bArr2[i2] = bArr2[b];
            bArr2[b] = b2;
        }
        this.f28852b = 0;
        this.f28853c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* renamed from: a */
    public final void m11610a(byte[] bArr) {
        int i = this.f28852b;
        byte b = this.f28853c;
        for (int i2 = 0; i2 < 256; i2++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f28851a;
            byte b2 = bArr2[i];
            b = (b + b2) & 255;
            bArr2[i] = bArr2[b];
            bArr2[b] = b2;
            bArr[i2] = (byte) (bArr2[(bArr2[i] + b2) & 255] ^ bArr[i2]);
        }
        this.f28852b = i;
        this.f28853c = b;
    }
}
