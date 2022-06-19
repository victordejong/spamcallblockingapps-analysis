package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wb3.class */
public final class wb3 {

    /* renamed from: a */
    private final byte[] f31500a;

    private wb3(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f31500a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    /* renamed from: a */
    public static wb3 m9670a(byte[] bArr, int i, int i2) {
        return new wb3(bArr, 0, i2);
    }

    /* renamed from: b */
    public final byte[] m9669b() {
        byte[] bArr = this.f31500a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
