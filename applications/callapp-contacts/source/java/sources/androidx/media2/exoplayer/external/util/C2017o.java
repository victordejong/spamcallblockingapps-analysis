package androidx.media2.exoplayer.external.util;
/* renamed from: androidx.media2.exoplayer.external.util.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/o.class */
public final class C2017o {

    /* renamed from: a */
    public byte[] f8127a;

    /* renamed from: b */
    public int f8128b;

    /* renamed from: c */
    public int f8129c;

    /* renamed from: d */
    private int f8130d;

    public C2017o() {
        this.f8127a = C1996ac.f8067f;
    }

    public C2017o(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C2017o(byte[] bArr, int i) {
        this.f8127a = bArr;
        this.f8130d = i;
    }

    /* renamed from: a */
    public final int m41555a() {
        return ((this.f8130d - this.f8128b) * 8) - this.f8129c;
    }

    /* renamed from: a */
    public final void m41554a(int i) {
        int i2 = i / 8;
        this.f8128b = i2;
        this.f8129c = i - (i2 * 8);
        m41543g();
    }

    /* renamed from: a */
    public final void m41553a(byte[] bArr, int i) {
        this.f8127a = bArr;
        this.f8128b = 0;
        this.f8129c = 0;
        this.f8130d = i;
    }

    /* renamed from: b */
    public final int m41552b() {
        return (this.f8128b * 8) + this.f8129c;
    }

    /* renamed from: b */
    public final void m41551b(int i) {
        int i2 = i / 8;
        int i3 = this.f8128b + i2;
        this.f8128b = i3;
        int i4 = this.f8129c + (i - (i2 * 8));
        this.f8129c = i4;
        if (i4 > 7) {
            this.f8128b = i3 + 1;
            this.f8129c = i4 - 8;
        }
        m41543g();
    }

    /* renamed from: b */
    public final void m41550b(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = (i >> 3) + 0;
        for (int i5 = 0; i5 < i4; i5++) {
            byte[] bArr2 = this.f8127a;
            int i6 = this.f8128b;
            this.f8128b = i6 + 1;
            byte b = bArr2[i6];
            int i7 = this.f8129c;
            bArr[i5] = (byte) (b << i7);
            bArr[i5] = (byte) (((255 & bArr2[i3]) >> (8 - i7)) | bArr[i5]);
        }
        int i8 = i & 7;
        if (i8 == 0) {
            return;
        }
        bArr[i4] = (byte) (bArr[i4] & (255 >> i8));
        int i9 = this.f8129c;
        if (i9 + i8 > 8) {
            byte b2 = bArr[i4];
            byte[] bArr3 = this.f8127a;
            this.f8128b = this.f8128b + 1;
            bArr[i4] = (byte) (b2 | ((bArr3[i2] & 255) << i9));
            this.f8129c = i9 - 8;
        }
        int i10 = this.f8129c + i8;
        this.f8129c = i10;
        byte[] bArr4 = this.f8127a;
        int i11 = this.f8128b;
        bArr[i4] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i8))) | bArr[i4]);
        if (i10 == 8) {
            this.f8129c = 0;
            this.f8128b = i11 + 1;
        }
        m41543g();
    }

    /* renamed from: c */
    public final int m41549c() {
        C1993a.m41686b(this.f8129c == 0);
        return this.f8128b;
    }

    /* renamed from: c */
    public final int m41548c(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.f8129c += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.f8129c;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.f8129c = i5;
            byte[] bArr = this.f8127a;
            int i6 = this.f8128b;
            this.f8128b = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.f8127a;
        int i7 = this.f8128b;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.f8129c = 0;
            this.f8128b = i7 + 1;
        }
        m41543g();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    /* renamed from: c */
    public final void m41547c(byte[] bArr, int i) {
        C1993a.m41686b(this.f8129c == 0);
        System.arraycopy(this.f8127a, this.f8128b, bArr, 0, i);
        this.f8128b += i;
        m41543g();
    }

    /* renamed from: d */
    public final void m41546d() {
        int i = this.f8129c + 1;
        this.f8129c = i;
        if (i == 8) {
            this.f8129c = 0;
            this.f8128b++;
        }
        m41543g();
    }

    /* renamed from: e */
    public final boolean m41545e() {
        boolean z = (this.f8127a[this.f8128b] & (128 >> this.f8129c)) != 0;
        m41546d();
        return z;
    }

    /* renamed from: f */
    public final void m41544f() {
        if (this.f8129c == 0) {
            return;
        }
        this.f8129c = 0;
        this.f8128b++;
        m41543g();
    }

    /* renamed from: g */
    public final void m41543g() {
        int i;
        int i2 = this.f8128b;
        C1993a.m41686b(i2 >= 0 && (i2 < (i = this.f8130d) || (i2 == i && this.f8129c == 0)));
    }
}
