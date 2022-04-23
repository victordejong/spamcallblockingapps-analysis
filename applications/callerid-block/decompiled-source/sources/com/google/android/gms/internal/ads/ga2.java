package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ga2.class */
public final class ga2 {

    /* renamed from: a */
    private final byte[] f6631a;

    private ga2(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f6631a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    /* renamed from: a */
    public static ga2 m7408a(byte[] bArr, int i, int i2) {
        return new ga2(bArr, 0, i2);
    }

    /* renamed from: b */
    public final byte[] m7407b() {
        byte[] bArr = this.f6631a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
