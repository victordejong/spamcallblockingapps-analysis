package androidx.media2.exoplayer.external.util;

import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f4166a;

    /* renamed from: b  reason: collision with root package name */
    public int f4167b;

    /* renamed from: c  reason: collision with root package name */
    public int f4168c;

    public p() {
        this.f4166a = ac.f;
    }

    public p(int i) {
        this.f4166a = new byte[i];
        this.f4168c = i;
    }

    public p(byte[] bArr) {
        this.f4166a = bArr;
        this.f4168c = bArr.length;
    }

    public p(byte[] bArr, int i) {
        this.f4166a = bArr;
        this.f4168c = i;
    }

    public final String a(int i, Charset charset) {
        String str = new String(this.f4166a, this.f4167b, i, charset);
        this.f4167b += i;
        return str;
    }

    public final void a() {
        this.f4167b = 0;
        this.f4168c = 0;
    }

    public final void a(int i) {
        byte[] bArr = this.f4166a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        a(bArr2, i);
    }

    public final void a(o oVar, int i) {
        a(oVar.f4162a, 0, i);
        oVar.a(0);
    }

    public final void a(byte[] bArr, int i) {
        this.f4166a = bArr;
        this.f4168c = i;
        this.f4167b = 0;
    }

    public final void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f4166a, this.f4167b, bArr, i, i2);
        this.f4167b += i2;
    }

    public final int b() {
        return this.f4168c - this.f4167b;
    }

    public final void b(int i) {
        a.a(i >= 0 && i <= this.f4166a.length);
        this.f4168c = i;
    }

    public final int c() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        this.f4167b = i + 1;
        return bArr[i] & 255;
    }

    public final void c(int i) {
        a.a(i >= 0 && i <= this.f4168c);
        this.f4167b = i;
    }

    public final int d() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        byte b2 = bArr[i];
        this.f4167b = i2 + 1;
        return (bArr[i2] & 255) | ((b2 & 255) << 8);
    }

    public final void d(int i) {
        c(this.f4167b + i);
    }

    public final int e() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        byte b2 = bArr[i];
        this.f4167b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b2 & 255);
    }

    public final String e(int i) {
        return a(i, Charset.forName("UTF-8"));
    }

    public final int f() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        byte b3 = bArr[i2];
        this.f4167b = i3 + 1;
        return (bArr[i3] & 255) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final String f(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f4167b;
        int i3 = (i2 + i) - 1;
        String a2 = ac.a(this.f4166a, i2, (i3 >= this.f4168c || this.f4166a[i3] != 0) ? i : i - 1);
        this.f4167b += i;
        return a2;
    }

    public final long g() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        long j3 = bArr[i3];
        this.f4167b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    public final long h() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        long j3 = bArr[i3];
        this.f4167b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    public final int i() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        byte b3 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        byte b4 = bArr[i3];
        this.f4167b = i4 + 1;
        return (bArr[i4] & 255) | ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8);
    }

    public final int j() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        byte b2 = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        byte b3 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        byte b4 = bArr[i3];
        this.f4167b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b2 & 255) | ((b3 & 255) << 8) | ((b4 & 255) << 16);
    }

    public final long k() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f4167b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f4167b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f4167b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f4167b = i8;
        long j7 = bArr[i7];
        this.f4167b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    public final long l() {
        byte[] bArr = this.f4166a;
        int i = this.f4167b;
        int i2 = i + 1;
        this.f4167b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4167b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4167b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f4167b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f4167b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f4167b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f4167b = i8;
        long j7 = bArr[i7];
        this.f4167b = i8 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    public final int m() {
        return (c() << 21) | (c() << 14) | (c() << 7) | c();
    }

    public final int n() {
        int i = i();
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    public final int o() {
        int j = j();
        if (j >= 0) {
            return j;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(j);
        throw new IllegalStateException(sb.toString());
    }

    public final long p() {
        long k = k();
        if (k >= 0) {
            return k;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(k);
        throw new IllegalStateException(sb.toString());
    }

    public final String q() {
        if (b() == 0) {
            return null;
        }
        int i = this.f4167b;
        while (i < this.f4168c && this.f4166a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f4166a;
        int i2 = this.f4167b;
        String a2 = ac.a(bArr, i2, i - i2);
        this.f4167b = i;
        if (i < this.f4168c) {
            this.f4167b = i + 1;
        }
        return a2;
    }

    public final String r() {
        if (b() == 0) {
            return null;
        }
        int i = this.f4167b;
        while (i < this.f4168c && !ac.a(this.f4166a[i])) {
            i++;
        }
        int i2 = this.f4167b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f4166a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f4167b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f4166a;
        int i3 = this.f4167b;
        String a2 = ac.a(bArr2, i3, i - i3);
        this.f4167b = i;
        int i4 = this.f4168c;
        if (i == i4) {
            return a2;
        }
        byte[] bArr3 = this.f4166a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f4167b = i5;
            if (i5 == i4) {
                return a2;
            }
        }
        int i6 = this.f4167b;
        if (bArr3[i6] == 10) {
            this.f4167b = i6 + 1;
        }
        return a2;
    }
}
