package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkq.class */
public final class dkq {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f26900a;

    private dkq(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f26900a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public static dkq a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new dkq(bArr, 0, bArr.length);
    }

    public final byte[] a() {
        byte[] bArr = this.f26900a;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
