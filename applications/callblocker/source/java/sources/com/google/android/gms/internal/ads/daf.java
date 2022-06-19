package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/daf.class */
public final class daf {

    /* renamed from: a */
    private final byte[] f13896a;

    private daf(byte[] bArr, int i, int i2) {
        this.f13896a = new byte[i2];
        System.arraycopy(bArr, 0, this.f13896a, 0, i2);
    }

    /* renamed from: a */
    public static daf m10277a(byte[] bArr) {
        return bArr == null ? null : new daf(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public final byte[] m10278a() {
        byte[] bArr = new byte[this.f13896a.length];
        System.arraycopy(this.f13896a, 0, bArr, 0, this.f13896a.length);
        return bArr;
    }
}
