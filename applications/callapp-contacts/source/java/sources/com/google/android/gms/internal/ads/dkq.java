package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkq.class */
public final class dkq {

    /* renamed from: a */
    private final byte[] f47158a;

    private dkq(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f47158a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    /* renamed from: a */
    public static dkq m16536a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new dkq(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public final byte[] m16537a() {
        byte[] bArr = this.f47158a;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
