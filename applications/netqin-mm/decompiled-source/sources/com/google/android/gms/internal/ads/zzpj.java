package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpj.class */
public final class zzpj {

    /* renamed from: a */
    public byte[] f28775a;

    /* renamed from: b */
    public int f28776b;

    /* renamed from: c */
    public int f28777c;

    /* renamed from: d */
    public int f28778d = 0;

    public zzpj(byte[] bArr, int i, int i2) {
        this.f28775a = bArr;
        this.f28777c = i;
        this.f28776b = i2;
        m11664e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: a */
    public final int m11670a(int i) {
        boolean z;
        if (i == 0) {
            return 0;
        }
        int i2 = i / 8;
        int i3 = 0;
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = m11666c(this.f28777c + 1) ? this.f28777c + 2 : this.f28777c + 1;
            int i7 = this.f28778d;
            if (i7 != 0) {
                byte[] bArr = this.f28775a;
                z = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.f28777c] & 255) << i7);
            } else {
                z = this.f28775a[this.f28777c];
            }
            i4 -= 8;
            int i8 = z == true ? 1 : 0;
            char c = z == true ? 1 : 0;
            i3 |= (255 & i8) << i4;
            this.f28777c = i6;
        }
        int i9 = i3;
        if (i4 > 0) {
            int i10 = this.f28778d + i4;
            byte b = (byte) (255 >> (8 - i4));
            int i11 = m11666c(this.f28777c + 1) ? this.f28777c + 2 : this.f28777c + 1;
            if (i10 > 8) {
                byte[] bArr2 = this.f28775a;
                i9 = (b & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[this.f28777c] & 255) << (i10 - 8)))) | i3;
                this.f28777c = i11;
            } else {
                int i12 = (b & ((255 & this.f28775a[this.f28777c]) >> (8 - i10))) | i3;
                i9 = i12;
                if (i10 == 8) {
                    this.f28777c = i11;
                    i9 = i12;
                }
            }
            this.f28778d = i10 % 8;
        }
        m11664e();
        return i9;
    }

    /* renamed from: a */
    public final boolean m11671a() {
        return m11670a(1) == 1;
    }

    /* renamed from: b */
    public final int m11669b() {
        return m11665d();
    }

    /* renamed from: b */
    public final void m11668b(int i) {
        int i2 = this.f28777c;
        int i3 = (i / 8) + i2;
        this.f28777c = i3;
        int i4 = this.f28778d + (i % 8);
        this.f28778d = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.f28777c = i3 + 1;
            this.f28778d = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 <= this.f28777c) {
                i5 = i6;
                if (m11666c(i6)) {
                    this.f28777c++;
                    i5 = i6 + 2;
                }
            } else {
                m11664e();
                return;
            }
        }
    }

    /* renamed from: c */
    public final int m11667c() {
        int d = m11665d();
        return (d % 2 == 0 ? -1 : 1) * ((d + 1) / 2);
    }

    /* renamed from: c */
    public final boolean m11666c(int i) {
        if (2 > i || i >= this.f28776b) {
            return false;
        }
        byte[] bArr = this.f28775a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: d */
    public final int m11665d() {
        int i = 0;
        int i2 = 0;
        while (!m11671a()) {
            i2++;
        }
        if (i2 > 0) {
            i = m11670a(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: e */
    public final void m11664e() {
        int i;
        int i2;
        int i3 = this.f28777c;
        zzoz.m11694b(i3 >= 0 && (i = this.f28778d) >= 0 && i < 8 && (i3 < (i2 = this.f28776b) || (i3 == i2 && i == 0)));
    }
}
