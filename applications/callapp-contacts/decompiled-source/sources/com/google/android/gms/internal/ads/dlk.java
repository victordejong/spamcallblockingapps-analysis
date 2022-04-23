package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlk.class */
public final class dlk {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f26924a = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    /* renamed from: b  reason: collision with root package name */
    private int f26925b;

    /* renamed from: c  reason: collision with root package name */
    private int f26926c;

    public dlk(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f26924a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f26924a;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & 255;
            byte b2 = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b2;
        }
        this.f26925b = 0;
        this.f26926c = 0;
    }

    public final void a(byte[] bArr) {
        int i = this.f26925b;
        int i2 = this.f26926c;
        for (int i3 = 0; i3 < 256; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f26924a;
            i2 = (i2 + bArr2[i]) & 255;
            byte b2 = bArr2[i];
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b2;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + bArr2[i2]) & 255] ^ bArr[i3]);
        }
        this.f26925b = i;
        this.f26926c = i2;
    }
}
