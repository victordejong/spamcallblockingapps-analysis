package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.x0.l */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/l.class */
public final class C27433l {

    /* renamed from: a */
    public byte[] f77196a;

    /* renamed from: b */
    public int f77197b;

    /* renamed from: c */
    public int f77198c;

    /* renamed from: d */
    public int f77199d;

    public C27433l() {
        this.f77196a = C27445x.f77234f;
    }

    public C27433l(byte[] bArr) {
        int length = bArr.length;
        this.f77196a = bArr;
        this.f77199d = length;
    }

    /* renamed from: a */
    public final void m351a() {
        int i;
        int i2 = this.f77197b;
        MediaSessionCompat.m43184y(i2 >= 0 && (i2 < (i = this.f77199d) || (i2 == i && this.f77198c == 0)));
    }

    /* renamed from: b */
    public int m350b() {
        return ((this.f77199d - this.f77197b) * 8) - this.f77198c;
    }

    /* renamed from: c */
    public int m349c() {
        return (this.f77197b * 8) + this.f77198c;
    }

    /* renamed from: d */
    public boolean m348d() {
        boolean z = (this.f77196a[this.f77197b] & (128 >> this.f77198c)) != 0;
        m343i();
        return z;
    }

    /* renamed from: e */
    public int m347e(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f77198c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f77198c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f77198c = i5;
            byte[] bArr = this.f77196a;
            int i6 = this.f77197b;
            this.f77197b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f77196a;
        int i7 = this.f77197b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f77198c = 0;
            this.f77197b = i7 + 1;
        }
        m351a();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: f */
    public void m346f(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f77196a;
            int i4 = this.f77197b;
            int i5 = i4 + 1;
            this.f77197b = i5;
            byte b = bArr2[i4];
            int i6 = this.f77198c;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.f77198c;
        if (i8 + i7 > 8) {
            byte b2 = bArr[i3];
            byte[] bArr3 = this.f77196a;
            int i9 = this.f77197b;
            this.f77197b = i9 + 1;
            bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
            this.f77198c = i8 - 8;
        }
        int i10 = this.f77198c + i7;
        this.f77198c = i10;
        byte[] bArr4 = this.f77196a;
        int i11 = this.f77197b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.f77198c = 0;
            this.f77197b = i11 + 1;
        }
        m351a();
    }

    /* renamed from: g */
    public void m345g(byte[] bArr, int i) {
        this.f77196a = bArr;
        this.f77197b = 0;
        this.f77198c = 0;
        this.f77199d = i;
    }

    /* renamed from: h */
    public void m344h(int i) {
        int i2 = i / 8;
        this.f77197b = i2;
        this.f77198c = i - (i2 * 8);
        m351a();
    }

    /* renamed from: i */
    public void m343i() {
        int i = this.f77198c + 1;
        this.f77198c = i;
        if (i == 8) {
            this.f77198c = 0;
            this.f77197b++;
        }
        m351a();
    }

    /* renamed from: j */
    public void m342j(int i) {
        int i2 = i / 8;
        int i3 = this.f77197b + i2;
        this.f77197b = i3;
        int i4 = (i - (i2 * 8)) + this.f77198c;
        this.f77198c = i4;
        if (i4 > 7) {
            this.f77197b = i3 + 1;
            this.f77198c = i4 - 8;
        }
        m351a();
    }
}
