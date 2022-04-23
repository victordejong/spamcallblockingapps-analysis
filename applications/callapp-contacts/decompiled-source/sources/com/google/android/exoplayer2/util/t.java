package com.google.android.exoplayer2.util;

import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f22331a;

    /* renamed from: b  reason: collision with root package name */
    public int f22332b;

    /* renamed from: c  reason: collision with root package name */
    public int f22333c;

    /* renamed from: d  reason: collision with root package name */
    private int f22334d;

    public t() {
        this.f22331a = af.f;
    }

    public t(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public t(byte[] bArr, int i) {
        this.f22331a = bArr;
        this.f22334d = i;
    }

    public final int a() {
        return ((this.f22334d - this.f22332b) * 8) - this.f22333c;
    }

    public final String a(int i, Charset charset) {
        byte[] bArr = new byte[i];
        c(bArr, i);
        return new String(bArr, charset);
    }

    public final void a(int i) {
        int i2 = i / 8;
        this.f22332b = i2;
        this.f22333c = i - (i2 * 8);
        g();
    }

    public final void a(byte[] bArr, int i) {
        this.f22331a = bArr;
        this.f22332b = 0;
        this.f22333c = 0;
        this.f22334d = i;
    }

    public final int b() {
        return (this.f22332b * 8) + this.f22333c;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.f22332b + i2;
        this.f22332b = i3;
        int i4 = this.f22333c + (i - (i2 * 8));
        this.f22333c = i4;
        if (i4 > 7) {
            this.f22332b = i3 + 1;
            this.f22333c = i4 - 8;
        }
        g();
    }

    public final void b(byte[] bArr, int i) {
        int i2 = (i >> 3) + 0;
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.f22331a;
            int i4 = this.f22332b;
            int i5 = i4 + 1;
            this.f22332b = i5;
            byte b2 = bArr2[i4];
            int i6 = this.f22333c;
            bArr[i3] = (byte) (b2 << i6);
            bArr[i3] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i3]);
        }
        int i7 = i & 7;
        if (i7 != 0) {
            bArr[i2] = (byte) (bArr[i2] & (255 >> i7));
            int i8 = this.f22333c;
            if (i8 + i7 > 8) {
                byte b3 = bArr[i2];
                byte[] bArr3 = this.f22331a;
                int i9 = this.f22332b;
                this.f22332b = i9 + 1;
                bArr[i2] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
                this.f22333c = i8 - 8;
            }
            int i10 = this.f22333c + i7;
            this.f22333c = i10;
            byte[] bArr4 = this.f22331a;
            int i11 = this.f22332b;
            bArr[i2] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i2]);
            if (i10 == 8) {
                this.f22333c = 0;
                this.f22332b = i11 + 1;
            }
            g();
        }
    }

    public final int c() {
        a.b(this.f22333c == 0);
        return this.f22332b;
    }

    public final int c(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f22333c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f22333c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f22333c = i4;
            byte[] bArr = this.f22331a;
            int i5 = this.f22332b;
            this.f22332b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.f22331a;
        int i6 = this.f22332b;
        byte b2 = bArr2[i6];
        if (i2 == 8) {
            this.f22333c = 0;
            this.f22332b = i6 + 1;
        }
        g();
        return ((-1) >>> (32 - i)) & (i3 | ((b2 & 255) >> (8 - i2)));
    }

    public final void c(byte[] bArr, int i) {
        a.b(this.f22333c == 0);
        System.arraycopy(this.f22331a, this.f22332b, bArr, 0, i);
        this.f22332b += i;
        g();
    }

    public final void d() {
        int i = this.f22333c + 1;
        this.f22333c = i;
        if (i == 8) {
            this.f22333c = 0;
            this.f22332b++;
        }
        g();
    }

    public final void d(int i) {
        a.b(this.f22333c == 0);
        this.f22332b += i;
        g();
    }

    public final boolean e() {
        boolean z = (this.f22331a[this.f22332b] & (128 >> this.f22333c)) != 0;
        d();
        return z;
    }

    public final void f() {
        if (this.f22333c != 0) {
            this.f22333c = 0;
            this.f22332b++;
            g();
        }
    }

    public final void g() {
        int i;
        int i2 = this.f22332b;
        a.b(i2 >= 0 && (i2 < (i = this.f22334d) || (i2 == i && this.f22333c == 0)));
    }
}
