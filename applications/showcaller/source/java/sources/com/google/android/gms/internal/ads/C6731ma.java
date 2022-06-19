package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ma */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ma.class */
public final class C6731ma {

    /* renamed from: a */
    private byte[] f26489a;

    /* renamed from: b */
    private int f26490b;

    /* renamed from: c */
    private int f26491c;

    /* renamed from: d */
    private int f26492d;

    public C6731ma(byte[] bArr, int i, int i2) {
        m13331a(bArr, i, i2);
    }

    /* renamed from: h */
    private final int m13324h() {
        int i = 0;
        int i2 = 0;
        while (!m13328d()) {
            i2++;
        }
        if (i2 > 0) {
            i = m13327e(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: i */
    private final boolean m13323i(int i) {
        if (i < 2 || i >= this.f26490b) {
            return false;
        }
        byte[] bArr = this.f26489a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: j */
    private final void m13322j() {
        boolean z;
        int i = this.f26491c;
        if (i >= 0) {
            int i2 = this.f26490b;
            z = true;
            if (i >= i2) {
                if (i == i2 && this.f26492d == 0) {
                    z = true;
                }
            }
            C7173y8.m8895d(z);
        }
        z = false;
        C7173y8.m8895d(z);
    }

    /* renamed from: a */
    public final void m13331a(byte[] bArr, int i, int i2) {
        this.f26489a = bArr;
        this.f26491c = i;
        this.f26490b = i2;
        this.f26492d = 0;
        m13322j();
    }

    /* renamed from: b */
    public final void m13330b() {
        int i = 1;
        int i2 = this.f26492d + 1;
        this.f26492d = i2;
        if (i2 == 8) {
            this.f26492d = 0;
            int i3 = this.f26491c;
            if (true == m13323i(i3 + 1)) {
                i = 2;
            }
            this.f26491c = i3 + i;
        }
        m13322j();
    }

    /* renamed from: c */
    public final void m13329c(int i) {
        int i2 = this.f26491c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f26491c = i4;
        int i5 = this.f26492d + (i - (i3 * 8));
        this.f26492d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f26491c = i4 + 1;
            this.f26492d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f26491c) {
                m13322j();
                return;
            }
            i6 = i7;
            if (m13323i(i7)) {
                this.f26491c++;
                i6 = i7 + 2;
            }
        }
    }

    /* renamed from: d */
    public final boolean m13328d() {
        boolean z = (this.f26489a[this.f26491c] & (128 >> this.f26492d)) != 0;
        m13330b();
        return z;
    }

    /* renamed from: e */
    public final int m13327e(int i) {
        int i2;
        int i3;
        this.f26492d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f26492d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f26492d = i5;
            byte[] bArr = this.f26489a;
            int i6 = this.f26491c;
            i4 |= (bArr[i6] & 255) << i5;
            if (true != m13323i(i6 + 1)) {
                i3 = 1;
            }
            this.f26491c = i6 + i3;
        }
        byte[] bArr2 = this.f26489a;
        int i7 = this.f26491c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f26492d = 0;
            if (true != m13323i(i7 + 1)) {
                i3 = 1;
            }
            this.f26491c = i7 + i3;
        }
        m13322j();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: f */
    public final int m13326f() {
        return m13324h();
    }

    /* renamed from: g */
    public final int m13325g() {
        int m13324h = m13324h();
        return (m13324h % 2 == 0 ? -1 : 1) * ((m13324h + 1) / 2);
    }
}
