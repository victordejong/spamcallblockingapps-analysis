package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tr2.class */
public final class tr2 {

    /* renamed from: a */
    private final byte[] f8717a;

    /* renamed from: b */
    private final int f8718b;

    /* renamed from: c */
    private int f8719c;

    /* renamed from: d */
    private int f8720d = 0;

    public tr2(byte[] bArr, int i, int i2) {
        this.f8717a = bArr;
        this.f8719c = i;
        this.f8718b = i2;
        m5477h();
    }

    /* renamed from: f */
    private final int m5479f() {
        int i = 0;
        int i2 = 0;
        while (!m5483b()) {
            i2++;
        }
        if (i2 > 0) {
            i = m5482c(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: g */
    private final boolean m5478g(int i) {
        if (i < 2 || i >= this.f8718b) {
            return false;
        }
        byte[] bArr = this.f8717a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: h */
    private final void m5477h() {
        boolean z;
        int i;
        int i2 = this.f8719c;
        if (i2 >= 0 && (i = this.f8720d) >= 0 && i < 8) {
            int i3 = this.f8718b;
            z = true;
            if (i2 >= i3) {
                if (i2 == i3 && i == 0) {
                    z = true;
                }
            }
            jr2.m6923d(z);
        }
        z = false;
        jr2.m6923d(z);
    }

    /* renamed from: a */
    public final void m5484a(int i) {
        int i2 = this.f8719c;
        int i3 = (i >> 3) + i2;
        this.f8719c = i3;
        int i4 = this.f8720d + (i & 7);
        this.f8720d = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.f8719c = i3 + 1;
            this.f8720d = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 <= this.f8719c) {
                i5 = i6;
                if (m5478g(i6)) {
                    this.f8719c++;
                    i5 = i6 + 2;
                }
            } else {
                m5477h();
                return;
            }
        }
    }

    /* renamed from: b */
    public final boolean m5483b() {
        return m5482c(1) == 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* renamed from: c */
    public final int m5482c(int i) {
        boolean z;
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (i2 < (i >> 3)) {
            int i5 = m5478g(this.f8719c + 1) ? this.f8719c + 2 : this.f8719c + 1;
            int i6 = this.f8720d;
            if (i6 != 0) {
                byte[] bArr = this.f8717a;
                z = ((bArr[i5] & 255) >>> (8 - i6)) | ((bArr[this.f8719c] & 255) << i6);
            } else {
                z = this.f8717a[this.f8719c];
            }
            int i7 = i4 - 8;
            int i8 = z == true ? 1 : 0;
            char c = z == true ? 1 : 0;
            i3 |= (255 & i8) << i7;
            this.f8719c = i5;
            i2++;
            i4 = i7;
        }
        int i9 = i3;
        if (i4 > 0) {
            int i10 = this.f8720d + i4;
            byte b = (byte) (255 >> (8 - i4));
            int i11 = m5478g(this.f8719c + 1) ? this.f8719c + 2 : this.f8719c + 1;
            byte[] bArr2 = this.f8717a;
            int i12 = this.f8719c;
            if (i10 > 8) {
                i9 = (b & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[i12] & 255) << (i10 - 8)))) | i3;
            } else {
                int i13 = (b & ((255 & bArr2[i12]) >> (8 - i10))) | i3;
                i9 = i13;
                if (i10 == 8) {
                    i9 = i13;
                }
                this.f8720d = i10 % 8;
            }
            this.f8719c = i11;
            this.f8720d = i10 % 8;
        }
        m5477h();
        return i9;
    }

    /* renamed from: d */
    public final int m5481d() {
        return m5479f();
    }

    /* renamed from: e */
    public final int m5480e() {
        int f = m5479f();
        return (f % 2 == 0 ? -1 : 1) * ((f + 1) / 2);
    }
}
