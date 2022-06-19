package p193e.p1577m.p1578a.p1596c.p1636q1;

import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.q1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/s.class */
public final class C24797s {

    /* renamed from: a */
    public byte[] f69500a;

    /* renamed from: b */
    public int f69501b;

    /* renamed from: c */
    public int f69502c;

    /* renamed from: d */
    public int f69503d;

    public C24797s() {
        this.f69500a = C24773d0.f69432f;
    }

    public C24797s(byte[] bArr) {
        int length = bArr.length;
        this.f69500a = bArr;
        this.f69503d = length;
    }

    public C24797s(byte[] bArr, int i) {
        this.f69500a = bArr;
        this.f69503d = i;
    }

    /* renamed from: a */
    public final void m4561a() {
        int i;
        int i2 = this.f69501b;
        C26232y.m2286x(i2 >= 0 && (i2 < (i = this.f69503d) || (i2 == i && this.f69502c == 0)));
    }

    /* renamed from: b */
    public int m4560b() {
        return ((this.f69503d - this.f69501b) * 8) - this.f69502c;
    }

    /* renamed from: c */
    public void m4559c() {
        if (this.f69502c == 0) {
            return;
        }
        this.f69502c = 0;
        this.f69501b++;
        m4561a();
    }

    /* renamed from: d */
    public int m4558d() {
        return (this.f69501b * 8) + this.f69502c;
    }

    /* renamed from: e */
    public boolean m4557e() {
        boolean z = (this.f69500a[this.f69501b] & (128 >> this.f69502c)) != 0;
        m4551k();
        return z;
    }

    /* renamed from: f */
    public int m4556f(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f69502c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f69502c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f69502c = i5;
            byte[] bArr = this.f69500a;
            int i6 = this.f69501b;
            this.f69501b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f69500a;
        int i7 = this.f69501b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f69502c = 0;
            this.f69501b = i7 + 1;
        }
        m4561a();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: g */
    public void m4555g(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f69500a;
            int i4 = this.f69501b;
            int i5 = i4 + 1;
            this.f69501b = i5;
            byte b = bArr2[i4];
            int i6 = this.f69502c;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.f69502c;
        if (i8 + i7 > 8) {
            byte b2 = bArr[i3];
            byte[] bArr3 = this.f69500a;
            int i9 = this.f69501b;
            this.f69501b = i9 + 1;
            bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
            this.f69502c = i8 - 8;
        }
        int i10 = this.f69502c + i7;
        this.f69502c = i10;
        byte[] bArr4 = this.f69500a;
        int i11 = this.f69501b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.f69502c = 0;
            this.f69501b = i11 + 1;
        }
        m4561a();
    }

    /* renamed from: h */
    public void m4554h(byte[] bArr, int i, int i2) {
        C26232y.m2286x(this.f69502c == 0);
        System.arraycopy(this.f69500a, this.f69501b, bArr, i, i2);
        this.f69501b += i2;
        m4561a();
    }

    /* renamed from: i */
    public void m4553i(byte[] bArr, int i) {
        this.f69500a = bArr;
        this.f69501b = 0;
        this.f69502c = 0;
        this.f69503d = i;
    }

    /* renamed from: j */
    public void m4552j(int i) {
        int i2 = i / 8;
        this.f69501b = i2;
        this.f69502c = i - (i2 * 8);
        m4561a();
    }

    /* renamed from: k */
    public void m4551k() {
        int i = this.f69502c + 1;
        this.f69502c = i;
        if (i == 8) {
            this.f69502c = 0;
            this.f69501b++;
        }
        m4561a();
    }

    /* renamed from: l */
    public void m4550l(int i) {
        int i2 = i / 8;
        int i3 = this.f69501b + i2;
        this.f69501b = i3;
        int i4 = (i - (i2 * 8)) + this.f69502c;
        this.f69502c = i4;
        if (i4 > 7) {
            this.f69501b = i3 + 1;
            this.f69502c = i4 - 8;
        }
        m4561a();
    }
}
