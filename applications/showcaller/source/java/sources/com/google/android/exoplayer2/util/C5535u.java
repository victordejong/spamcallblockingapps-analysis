package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.u */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/u.class */
public final class C5535u {

    /* renamed from: a */
    public byte[] f17937a;

    /* renamed from: b */
    private int f17938b;

    /* renamed from: c */
    private int f17939c;

    /* renamed from: d */
    private int f17940d;

    public C5535u() {
        this.f17937a = C5515h0.f17881f;
    }

    public C5535u(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C5535u(byte[] bArr, int i) {
        this.f17937a = bArr;
        this.f17940d = i;
    }

    /* renamed from: a */
    private void m18710a() {
        int i;
        int i2 = this.f17938b;
        C5508e.m18910f(i2 >= 0 && (i2 < (i = this.f17940d) || (i2 == i && this.f17939c == 0)));
    }

    /* renamed from: b */
    public int m18709b() {
        return ((this.f17940d - this.f17938b) * 8) - this.f17939c;
    }

    /* renamed from: c */
    public void m18708c() {
        if (this.f17939c == 0) {
            return;
        }
        this.f17939c = 0;
        this.f17938b++;
        m18710a();
    }

    /* renamed from: d */
    public int m18707d() {
        C5508e.m18910f(this.f17939c == 0);
        return this.f17938b;
    }

    /* renamed from: e */
    public int m18706e() {
        return (this.f17938b * 8) + this.f17939c;
    }

    /* renamed from: f */
    public void m18705f(int i, int i2) {
        int i3;
        int i4 = i;
        if (i2 < 32) {
            i4 = i & ((1 << i2) - 1);
        }
        int min = Math.min(8 - this.f17939c, i2);
        int i5 = (8 - this.f17939c) - min;
        byte[] bArr = this.f17937a;
        int i6 = this.f17938b;
        bArr[i6] = (byte) (((65280 >> i3) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i2 - min;
        bArr[i6] = (byte) (((i4 >>> i7) << i5) | bArr[i6]);
        while (true) {
            i6++;
            if (i7 <= 8) {
                int i8 = 8 - i7;
                byte[] bArr2 = this.f17937a;
                bArr2[i6] = (byte) (bArr2[i6] & ((1 << i8) - 1));
                bArr2[i6] = (byte) (((i4 & ((1 << i7) - 1)) << i8) | bArr2[i6]);
                m18694q(i2);
                m18710a();
                return;
            }
            this.f17937a[i6] = (byte) (i4 >>> (i7 - 8));
            i7 -= 8;
        }
    }

    /* renamed from: g */
    public boolean m18704g() {
        boolean z = (this.f17937a[this.f17938b] & (128 >> this.f17939c)) != 0;
        m18695p();
        return z;
    }

    /* renamed from: h */
    public int m18703h(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f17939c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f17939c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f17939c = i5;
            byte[] bArr = this.f17937a;
            int i6 = this.f17938b;
            this.f17938b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f17937a;
        int i7 = this.f17938b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f17939c = 0;
            this.f17938b = i7 + 1;
        }
        m18710a();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: i */
    public void m18702i(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f17937a;
            int i4 = this.f17938b;
            int i5 = i4 + 1;
            this.f17938b = i5;
            byte b = bArr2[i4];
            int i6 = this.f17939c;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.f17939c;
        if (i8 + i7 > 8) {
            byte b2 = bArr[i3];
            byte[] bArr3 = this.f17937a;
            int i9 = this.f17938b;
            this.f17938b = i9 + 1;
            bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
            this.f17939c = i8 - 8;
        }
        int i10 = this.f17939c + i7;
        this.f17939c = i10;
        byte[] bArr4 = this.f17937a;
        int i11 = this.f17938b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.f17939c = 0;
            this.f17938b = i11 + 1;
        }
        m18710a();
    }

    /* renamed from: j */
    public long m18701j(int i) {
        return i <= 32 ? C5515h0.m18802v0(m18703h(i)) : C5515h0.m18806t0(m18703h(i - 32), m18703h(32));
    }

    /* renamed from: k */
    public void m18700k(byte[] bArr, int i, int i2) {
        C5508e.m18910f(this.f17939c == 0);
        System.arraycopy(this.f17937a, this.f17938b, bArr, i, i2);
        this.f17938b += i2;
        m18710a();
    }

    /* renamed from: l */
    public void m18699l(C5536v c5536v) {
        m18697n(c5536v.f17941a, c5536v.m18675d());
        m18696o(c5536v.m18676c() * 8);
    }

    /* renamed from: m */
    public void m18698m(byte[] bArr) {
        m18697n(bArr, bArr.length);
    }

    /* renamed from: n */
    public void m18697n(byte[] bArr, int i) {
        this.f17937a = bArr;
        this.f17938b = 0;
        this.f17939c = 0;
        this.f17940d = i;
    }

    /* renamed from: o */
    public void m18696o(int i) {
        int i2 = i / 8;
        this.f17938b = i2;
        this.f17939c = i - (i2 * 8);
        m18710a();
    }

    /* renamed from: p */
    public void m18695p() {
        int i = this.f17939c + 1;
        this.f17939c = i;
        if (i == 8) {
            this.f17939c = 0;
            this.f17938b++;
        }
        m18710a();
    }

    /* renamed from: q */
    public void m18694q(int i) {
        int i2 = i / 8;
        int i3 = this.f17938b + i2;
        this.f17938b = i3;
        int i4 = this.f17939c + (i - (i2 * 8));
        this.f17939c = i4;
        if (i4 > 7) {
            this.f17938b = i3 + 1;
            this.f17939c = i4 - 8;
        }
        m18710a();
    }

    /* renamed from: r */
    public void m18693r(int i) {
        C5508e.m18910f(this.f17939c == 0);
        this.f17938b += i;
        m18710a();
    }
}
