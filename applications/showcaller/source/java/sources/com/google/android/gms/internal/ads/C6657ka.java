package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ka */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ka.class */
public final class C6657ka {

    /* renamed from: a */
    public byte[] f25088a;

    /* renamed from: b */
    private int f25089b;

    /* renamed from: c */
    private int f25090c;

    /* renamed from: d */
    private int f25091d;

    public C6657ka() {
        this.f25088a = C7101wa.f31480f;
    }

    public C6657ka(byte[] bArr, int i) {
        this.f25088a = bArr;
        this.f25091d = i;
    }

    /* renamed from: m */
    private final void m13942m() {
        boolean z;
        int i = this.f25089b;
        if (i >= 0) {
            int i2 = this.f25091d;
            z = true;
            if (i >= i2) {
                if (i == i2 && this.f25090c == 0) {
                    z = true;
                }
            }
            C7173y8.m8895d(z);
        }
        z = false;
        C7173y8.m8895d(z);
    }

    /* renamed from: a */
    public final void m13954a(byte[] bArr, int i) {
        this.f25088a = bArr;
        this.f25089b = 0;
        this.f25090c = 0;
        this.f25091d = i;
    }

    /* renamed from: b */
    public final int m13953b() {
        return ((this.f25091d - this.f25089b) * 8) - this.f25090c;
    }

    /* renamed from: c */
    public final int m13952c() {
        return (this.f25089b * 8) + this.f25090c;
    }

    /* renamed from: d */
    public final void m13951d(int i) {
        int i2 = i / 8;
        this.f25089b = i2;
        this.f25090c = i - (i2 * 8);
        m13942m();
    }

    /* renamed from: e */
    public final void m13950e() {
        int i = this.f25090c + 1;
        this.f25090c = i;
        if (i == 8) {
            this.f25090c = 0;
            this.f25089b++;
        }
        m13942m();
    }

    /* renamed from: f */
    public final void m13949f(int i) {
        int i2 = i / 8;
        int i3 = this.f25089b + i2;
        this.f25089b = i3;
        int i4 = this.f25090c + (i - (i2 * 8));
        this.f25090c = i4;
        if (i4 > 7) {
            this.f25089b = i3 + 1;
            this.f25090c = i4 - 8;
        }
        m13942m();
    }

    /* renamed from: g */
    public final boolean m13948g() {
        boolean z = (this.f25088a[this.f25089b] & (128 >> this.f25090c)) != 0;
        m13950e();
        return z;
    }

    /* renamed from: h */
    public final int m13947h(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f25090c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f25090c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f25090c = i5;
            byte[] bArr = this.f25088a;
            int i6 = this.f25089b;
            this.f25089b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f25088a;
        int i7 = this.f25089b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f25090c = 0;
            this.f25089b = i7 + 1;
        }
        m13942m();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: i */
    public final void m13946i(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte b;
        int i5 = i2 >> 3;
        for (int i6 = 0; i6 < i5; i6++) {
            byte[] bArr2 = this.f25088a;
            int i7 = this.f25089b;
            this.f25089b = i7 + 1;
            bArr[i6] = (byte) (bArr2[i7] << this.f25090c);
            bArr[i6] = (byte) (((255 & bArr2[i3]) >> (8 - i4)) | b);
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b2 = (byte) (bArr[i5] & (255 >> i8));
        bArr[i5] = b2;
        int i9 = this.f25090c;
        byte b3 = b2;
        int i10 = i9;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.f25088a;
            int i11 = this.f25089b;
            this.f25089b = i11 + 1;
            b3 = (byte) (b2 | ((bArr3[i11] & 255) << i9));
            bArr[i5] = b3;
            i10 = i9 - 8;
        }
        int i12 = i10 + i8;
        this.f25090c = i12;
        byte[] bArr4 = this.f25088a;
        int i13 = this.f25089b;
        bArr[i5] = (byte) (((byte) (((255 & bArr4[i13]) >> (8 - i12)) << (8 - i8))) | b3);
        if (i12 == 8) {
            this.f25090c = 0;
            this.f25089b = i13 + 1;
        }
        m13942m();
    }

    /* renamed from: j */
    public final void m13945j() {
        if (this.f25090c == 0) {
            return;
        }
        this.f25090c = 0;
        this.f25089b++;
        m13942m();
    }

    /* renamed from: k */
    public final void m13944k(int i) {
        C7173y8.m8895d(this.f25090c == 0);
        this.f25089b += i;
        m13942m();
    }

    /* renamed from: l */
    public final void m13943l(int i, int i2) {
        byte b;
        int i3;
        byte b2;
        int i4 = i & 16383;
        int min = Math.min(8 - this.f25090c, 14);
        int i5 = this.f25090c;
        int i6 = (8 - i5) - min;
        byte[] bArr = this.f25088a;
        int i7 = this.f25089b;
        bArr[i7] = (byte) (((65280 >> i5) | ((1 << i6) - 1)) & bArr[i7]);
        int i8 = 14 - min;
        bArr[i7] = (byte) (b | ((i4 >>> i8) << i6));
        while (true) {
            i7++;
            if (i8 <= 8) {
                byte[] bArr2 = this.f25088a;
                bArr2[i7] = (byte) (bArr2[i7] & ((1 << (8 - i8)) - 1));
                bArr2[i7] = (byte) (((i4 & ((1 << i8) - 1)) << i3) | b2);
                m13949f(14);
                m13942m();
                return;
            }
            i8 -= 8;
            this.f25088a[i7] = (byte) (i4 >>> i8);
        }
    }
}
