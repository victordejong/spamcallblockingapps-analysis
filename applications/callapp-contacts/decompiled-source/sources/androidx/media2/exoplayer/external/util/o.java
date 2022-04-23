package androidx.media2.exoplayer.external.util;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f4162a;

    /* renamed from: b  reason: collision with root package name */
    public int f4163b;

    /* renamed from: c  reason: collision with root package name */
    public int f4164c;

    /* renamed from: d  reason: collision with root package name */
    private int f4165d;

    public o() {
        this.f4162a = ac.f;
    }

    public o(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public o(byte[] bArr, int i) {
        this.f4162a = bArr;
        this.f4165d = i;
    }

    public final int a() {
        return ((this.f4165d - this.f4163b) * 8) - this.f4164c;
    }

    public final void a(int i) {
        int i2 = i / 8;
        this.f4163b = i2;
        this.f4164c = i - (i2 * 8);
        g();
    }

    public final void a(byte[] bArr, int i) {
        this.f4162a = bArr;
        this.f4163b = 0;
        this.f4164c = 0;
        this.f4165d = i;
    }

    public final int b() {
        return (this.f4163b * 8) + this.f4164c;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.f4163b + i2;
        this.f4163b = i3;
        int i4 = this.f4164c + (i - (i2 * 8));
        this.f4164c = i4;
        if (i4 > 7) {
            this.f4163b = i3 + 1;
            this.f4164c = i4 - 8;
        }
        g();
    }

    public final void b(byte[] bArr, int i) {
        int i2 = (i >> 3) + 0;
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.f4162a;
            int i4 = this.f4163b;
            int i5 = i4 + 1;
            this.f4163b = i5;
            byte b2 = bArr2[i4];
            int i6 = this.f4164c;
            bArr[i3] = (byte) (b2 << i6);
            bArr[i3] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i3]);
        }
        int i7 = i & 7;
        if (i7 != 0) {
            bArr[i2] = (byte) (bArr[i2] & (255 >> i7));
            int i8 = this.f4164c;
            if (i8 + i7 > 8) {
                byte b3 = bArr[i2];
                byte[] bArr3 = this.f4162a;
                int i9 = this.f4163b;
                this.f4163b = i9 + 1;
                bArr[i2] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
                this.f4164c = i8 - 8;
            }
            int i10 = this.f4164c + i7;
            this.f4164c = i10;
            byte[] bArr4 = this.f4162a;
            int i11 = this.f4163b;
            bArr[i2] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i2]);
            if (i10 == 8) {
                this.f4164c = 0;
                this.f4163b = i11 + 1;
            }
            g();
        }
    }

    public final int c() {
        a.b(this.f4164c == 0);
        return this.f4163b;
    }

    public final int c(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f4164c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f4164c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f4164c = i4;
            byte[] bArr = this.f4162a;
            int i5 = this.f4163b;
            this.f4163b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.f4162a;
        int i6 = this.f4163b;
        byte b2 = bArr2[i6];
        if (i2 == 8) {
            this.f4164c = 0;
            this.f4163b = i6 + 1;
        }
        g();
        return ((-1) >>> (32 - i)) & (i3 | ((b2 & 255) >> (8 - i2)));
    }

    public final void c(byte[] bArr, int i) {
        a.b(this.f4164c == 0);
        System.arraycopy(this.f4162a, this.f4163b, bArr, 0, i);
        this.f4163b += i;
        g();
    }

    public final void d() {
        int i = this.f4164c + 1;
        this.f4164c = i;
        if (i == 8) {
            this.f4164c = 0;
            this.f4163b++;
        }
        g();
    }

    public final boolean e() {
        boolean z = (this.f4162a[this.f4163b] & (128 >> this.f4164c)) != 0;
        d();
        return z;
    }

    public final void f() {
        if (this.f4164c != 0) {
            this.f4164c = 0;
            this.f4163b++;
            g();
        }
    }

    public final void g() {
        int i;
        int i2 = this.f4163b;
        a.b(i2 >= 0 && (i2 < (i = this.f4165d) || (i2 == i && this.f4164c == 0)));
    }
}
