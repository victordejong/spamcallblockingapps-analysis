package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/daz.class */
public final class daz {

    /* renamed from: a */
    private final byte[] f13916a = new byte[256];

    /* renamed from: b */
    private int f13917b;

    /* renamed from: c */
    private int f13918c;

    public daz(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f13916a[i] = (byte) i;
        }
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            b = (b + this.f13916a[i2] + bArr[i2 % bArr.length]) & 255;
            byte b2 = this.f13916a[i2];
            this.f13916a[i2] = this.f13916a[b];
            this.f13916a[b] = b2;
        }
        this.f13917b = 0;
        this.f13918c = 0;
    }

    /* renamed from: a */
    public final void m10249a(byte[] bArr) {
        int i = this.f13917b;
        int i2 = this.f13918c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.f13916a[i]) & 255;
            byte b = this.f13916a[i];
            this.f13916a[i] = this.f13916a[i2];
            this.f13916a[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.f13916a[(this.f13916a[i] + this.f13916a[i2]) & 255]);
        }
        this.f13917b = i;
        this.f13918c = i2;
    }
}
