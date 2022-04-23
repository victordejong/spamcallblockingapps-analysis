package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.u */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/u.class */
public final class C2903u {

    /* renamed from: a */
    public byte[] f10526a;

    /* renamed from: b */
    public int f10527b;

    /* renamed from: c */
    public int f10528c;

    /* renamed from: d */
    public int f10529d;

    public C2903u() {
        this.f10526a = C2885h0.f10482f;
    }

    public C2903u(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C2903u(byte[] bArr, int i) {
        this.f10526a = bArr;
        this.f10529d = i;
    }

    /* renamed from: a */
    public int m28565a(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f10528c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f10528c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f10528c = i4;
            byte[] bArr = this.f10526a;
            int i5 = this.f10527b;
            this.f10527b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.f10526a;
        int i6 = this.f10527b;
        byte b = bArr2[i6];
        if (i2 == 8) {
            this.f10528c = 0;
            this.f10527b = i6 + 1;
        }
        m28566a();
        return ((-1) >>> (32 - i)) & (i3 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: a */
    public final void m28566a() {
        int i;
        int i2 = this.f10527b;
        C2877e.m28731b(i2 >= 0 && (i2 < (i = this.f10529d) || (i2 == i && this.f10528c == 0)));
    }

    /* renamed from: a */
    public void m28564a(int i, int i2) {
        int i3;
        int i4 = i;
        if (i2 < 32) {
            i4 = i & ((1 << i2) - 1);
        }
        int min = Math.min(8 - this.f10528c, i2);
        int i5 = (8 - this.f10528c) - min;
        byte[] bArr = this.f10526a;
        int i6 = this.f10527b;
        bArr[i6] = (byte) (((65280 >> i3) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i2 - min;
        bArr[i6] = (byte) (((i4 >>> i7) << i5) | bArr[i6]);
        while (true) {
            i6++;
            if (i7 > 8) {
                this.f10526a[i6] = (byte) (i4 >>> (i7 - 8));
                i7 -= 8;
            } else {
                int i8 = 8 - i7;
                byte[] bArr2 = this.f10526a;
                bArr2[i6] = (byte) (bArr2[i6] & ((1 << i8) - 1));
                bArr2[i6] = (byte) (((i4 & ((1 << i7) - 1)) << i8) | bArr2[i6]);
                m28556c(i2);
                m28566a();
                return;
            }
        }
    }

    /* renamed from: a */
    public void m28563a(C2904v vVar) {
        m28561a(vVar.f10530a, vVar.m28541d());
        m28558b(vVar.m28543c() * 8);
    }

    /* renamed from: a */
    public void m28562a(byte[] bArr) {
        m28561a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m28561a(byte[] bArr, int i) {
        this.f10526a = bArr;
        this.f10527b = 0;
        this.f10528c = 0;
        this.f10529d = i;
    }

    /* renamed from: a */
    public void m28560a(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f10526a;
            int i4 = this.f10527b;
            int i5 = i4 + 1;
            this.f10527b = i5;
            byte b = bArr2[i4];
            int i6 = this.f10528c;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 != 0) {
            bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
            int i8 = this.f10528c;
            if (i8 + i7 > 8) {
                byte b2 = bArr[i3];
                byte[] bArr3 = this.f10526a;
                int i9 = this.f10527b;
                this.f10527b = i9 + 1;
                bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
                this.f10528c = i8 - 8;
            }
            int i10 = this.f10528c + i7;
            this.f10528c = i10;
            byte[] bArr4 = this.f10526a;
            int i11 = this.f10527b;
            bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
            if (i10 == 8) {
                this.f10528c = 0;
                this.f10527b = i11 + 1;
            }
            m28566a();
        }
    }

    /* renamed from: b */
    public int m28559b() {
        return ((this.f10529d - this.f10527b) * 8) - this.f10528c;
    }

    /* renamed from: b */
    public void m28558b(int i) {
        int i2 = i / 8;
        this.f10527b = i2;
        this.f10528c = i - (i2 * 8);
        m28566a();
    }

    /* renamed from: c */
    public void m28557c() {
        if (this.f10528c != 0) {
            this.f10528c = 0;
            this.f10527b++;
            m28566a();
        }
    }

    /* renamed from: c */
    public void m28556c(int i) {
        int i2 = i / 8;
        int i3 = this.f10527b + i2;
        this.f10527b = i3;
        int i4 = this.f10528c + (i - (i2 * 8));
        this.f10528c = i4;
        if (i4 > 7) {
            this.f10527b = i3 + 1;
            this.f10528c = i4 - 8;
        }
        m28566a();
    }

    /* renamed from: d */
    public int m28555d() {
        return (this.f10527b * 8) + this.f10528c;
    }

    /* renamed from: e */
    public boolean m28554e() {
        boolean z = (this.f10526a[this.f10527b] & (128 >> this.f10528c)) != 0;
        m28553f();
        return z;
    }

    /* renamed from: f */
    public void m28553f() {
        int i = this.f10528c + 1;
        this.f10528c = i;
        if (i == 8) {
            this.f10528c = 0;
            this.f10527b++;
        }
        m28566a();
    }
}
