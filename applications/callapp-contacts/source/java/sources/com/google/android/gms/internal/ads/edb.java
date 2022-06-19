package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edb.class */
public final class edb {

    /* renamed from: a */
    private byte[] f48731a;

    /* renamed from: b */
    private int f48732b;

    /* renamed from: c */
    private int f48733c;

    /* renamed from: d */
    private int f48734d = 0;

    public edb(byte[] bArr, int i, int i2) {
        this.f48731a = bArr;
        this.f48733c = i;
        this.f48732b = i2;
        m15208d();
    }

    /* renamed from: c */
    private final boolean m15209c(int i) {
        if (2 > i || i >= this.f48732b) {
            return false;
        }
        byte[] bArr = this.f48731a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: d */
    private final void m15208d() {
        int i;
        int i2;
        int i3 = this.f48733c;
        ecr.m15247b(i3 >= 0 && (i = this.f48734d) >= 0 && i < 8 && (i3 < (i2 = this.f48732b) || (i3 == i2 && i == 0)));
    }

    /* renamed from: a */
    public final void m15213a(int i) {
        int i2 = this.f48733c;
        int i3 = (i / 8) + i2;
        this.f48733c = i3;
        int i4 = this.f48734d + (i % 8);
        this.f48734d = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.f48733c = i3 + 1;
            this.f48734d = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 > this.f48733c) {
                m15208d();
                return;
            }
            i5 = i6;
            if (m15209c(i6)) {
                this.f48733c++;
                i5 = i6 + 2;
            }
        }
    }

    /* renamed from: a */
    public final boolean m15214a() {
        return m15211b(1) == 1;
    }

    /* renamed from: b */
    public final int m15212b() {
        int m15210c = m15210c();
        return (m15210c % 2 == 0 ? -1 : 1) * ((m15210c + 1) / 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: b */
    public final int m15211b(int i) {
        int i2;
        boolean z;
        if (i == 0) {
            return 0;
        }
        int i3 = i / 8;
        int i4 = i;
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = m15209c(this.f48733c + 1) ? this.f48733c + 2 : this.f48733c + 1;
            int i8 = this.f48734d;
            if (i8 != 0) {
                byte[] bArr = this.f48731a;
                z = ((bArr[i7] & 255) >>> (8 - i8)) | ((bArr[this.f48733c] & 255) << i8);
            } else {
                z = this.f48731a[this.f48733c];
            }
            int i9 = z == true ? 1 : 0;
            Object[] objArr = z == true ? 1 : 0;
            i4 -= 8;
            i5 |= (255 & i9) << i4;
            this.f48733c = i7;
        }
        int i10 = i5;
        if (i4 > 0) {
            int i11 = this.f48734d + i4;
            byte b = (byte) (255 >> (8 - i4));
            int i12 = m15209c(this.f48733c + 1) ? this.f48733c + 2 : this.f48733c + 1;
            if (i11 > 8) {
                byte[] bArr2 = this.f48731a;
                i2 = (b & (((255 & bArr2[i12]) >> (16 - i11)) | ((bArr2[this.f48733c] & 255) << (i11 - 8)))) | i5;
                this.f48733c = i12;
            } else {
                int i13 = (b & ((255 & this.f48731a[this.f48733c]) >> (8 - i11))) | i5;
                i2 = i13;
                if (i11 == 8) {
                    this.f48733c = i12;
                    i2 = i13;
                }
            }
            this.f48734d = i11 % 8;
            i10 = i2;
        }
        m15208d();
        return i10;
    }

    /* renamed from: c */
    public final int m15210c() {
        int i = 0;
        int i2 = 0;
        while (!m15214a()) {
            i2++;
        }
        if (i2 > 0) {
            i = m15211b(i2);
        }
        return ((1 << i2) - 1) + i;
    }
}
