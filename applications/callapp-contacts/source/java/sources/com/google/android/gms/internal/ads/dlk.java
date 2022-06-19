package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlk.class */
public final class dlk {

    /* renamed from: a */
    private final byte[] f47182a = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    /* renamed from: b */
    private int f47183b;

    /* renamed from: c */
    private int f47184c;

    public dlk(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f47182a[i] = (byte) i;
        }
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            byte[] bArr2 = this.f47182a;
            b = (b + bArr2[i2] + bArr[i2 % bArr.length]) & 255;
            byte b2 = bArr2[i2];
            bArr2[i2] = bArr2[b];
            bArr2[b] = b2;
        }
        this.f47183b = 0;
        this.f47184c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* renamed from: a */
    public final void m16508a(byte[] bArr) {
        int i = this.f47183b;
        byte b = this.f47184c;
        for (int i2 = 0; i2 < 256; i2++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f47182a;
            b = (b + bArr2[i]) & 255;
            byte b2 = bArr2[i];
            bArr2[i] = bArr2[b];
            bArr2[b] = b2;
            bArr[i2] = (byte) (bArr2[(bArr2[i] + bArr2[b]) & 255] ^ bArr[i2]);
        }
        this.f47183b = i;
        this.f47184c = b;
    }
}
