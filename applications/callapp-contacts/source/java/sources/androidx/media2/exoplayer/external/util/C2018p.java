package androidx.media2.exoplayer.external.util;

import java.nio.charset.Charset;
/* renamed from: androidx.media2.exoplayer.external.util.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/p.class */
public final class C2018p {

    /* renamed from: a */
    public byte[] f8131a;

    /* renamed from: b */
    public int f8132b;

    /* renamed from: c */
    public int f8133c;

    public C2018p() {
        this.f8131a = C1996ac.f8067f;
    }

    public C2018p(int i) {
        this.f8131a = new byte[i];
        this.f8133c = i;
    }

    public C2018p(byte[] bArr) {
        this.f8131a = bArr;
        this.f8133c = bArr.length;
    }

    public C2018p(byte[] bArr, int i) {
        this.f8131a = bArr;
        this.f8133c = i;
    }

    /* renamed from: a */
    public final String m41540a(int i, Charset charset) {
        String str = new String(this.f8131a, this.f8132b, i, charset);
        this.f8132b += i;
        return str;
    }

    /* renamed from: a */
    public final void m41542a() {
        this.f8132b = 0;
        this.f8133c = 0;
    }

    /* renamed from: a */
    public final void m41541a(int i) {
        byte[] bArr = this.f8131a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        m41538a(bArr2, i);
    }

    /* renamed from: a */
    public final void m41539a(C2017o c2017o, int i) {
        m41537a(c2017o.f8127a, 0, i);
        c2017o.m41554a(0);
    }

    /* renamed from: a */
    public final void m41538a(byte[] bArr, int i) {
        this.f8131a = bArr;
        this.f8133c = i;
        this.f8132b = 0;
    }

    /* renamed from: a */
    public final void m41537a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f8131a, this.f8132b, bArr, i, i2);
        this.f8132b += i2;
    }

    /* renamed from: b */
    public final int m41536b() {
        return this.f8133c - this.f8132b;
    }

    /* renamed from: b */
    public final void m41535b(int i) {
        C1993a.m41688a(i >= 0 && i <= this.f8131a.length);
        this.f8133c = i;
    }

    /* renamed from: c */
    public final int m41534c() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        this.f8132b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: c */
    public final void m41533c(int i) {
        C1993a.m41688a(i >= 0 && i <= this.f8133c);
        this.f8132b = i;
    }

    /* renamed from: d */
    public final int m41532d() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        byte b = bArr[i];
        this.f8132b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: d */
    public final void m41531d(int i) {
        m41533c(this.f8132b + i);
    }

    /* renamed from: e */
    public final int m41530e() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        byte b = bArr[i];
        this.f8132b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: e */
    public final String m41529e(int i) {
        return m41540a(i, Charset.forName("UTF-8"));
    }

    /* renamed from: f */
    public final int m41528f() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        byte b2 = bArr[i2];
        this.f8132b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: f */
    public final String m41527f(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f8132b;
        int i3 = (i2 + i) - 1;
        String m41648a = C1996ac.m41648a(this.f8131a, i2, (i3 >= this.f8133c || this.f8131a[i3] != 0) ? i : i - 1);
        this.f8132b += i;
        return m41648a;
    }

    /* renamed from: g */
    public final long m41526g() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        long j3 = bArr[i3];
        this.f8132b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: h */
    public final long m41525h() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        long j3 = bArr[i3];
        this.f8132b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: i */
    public final int m41524i() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        byte b3 = bArr[i3];
        this.f8132b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: j */
    public final int m41523j() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        byte b3 = bArr[i3];
        this.f8132b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: k */
    public final long m41522k() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f8132b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f8132b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f8132b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f8132b = i8;
        long j7 = bArr[i7];
        this.f8132b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: l */
    public final long m41521l() {
        byte[] bArr = this.f8131a;
        int i = this.f8132b;
        int i2 = i + 1;
        this.f8132b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f8132b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f8132b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f8132b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f8132b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f8132b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f8132b = i8;
        long j7 = bArr[i7];
        this.f8132b = i8 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48) | ((bArr[i8] & 255) << 56);
    }

    /* renamed from: m */
    public final int m41520m() {
        return (m41534c() << 21) | (m41534c() << 14) | (m41534c() << 7) | m41534c();
    }

    /* renamed from: n */
    public final int m41519n() {
        int m41524i = m41524i();
        if (m41524i >= 0) {
            return m41524i;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m41524i);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: o */
    public final int m41518o() {
        int m41523j = m41523j();
        if (m41523j >= 0) {
            return m41523j;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(m41523j);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: p */
    public final long m41517p() {
        long m41522k = m41522k();
        if (m41522k >= 0) {
            return m41522k;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(m41522k);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: q */
    public final String m41516q() {
        if (m41536b() == 0) {
            return null;
        }
        int i = this.f8132b;
        while (i < this.f8133c && this.f8131a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f8131a;
        int i2 = this.f8132b;
        String m41648a = C1996ac.m41648a(bArr, i2, i - i2);
        this.f8132b = i;
        if (i < this.f8133c) {
            this.f8132b = i + 1;
        }
        return m41648a;
    }

    /* renamed from: r */
    public final String m41515r() {
        if (m41536b() == 0) {
            return null;
        }
        int i = this.f8132b;
        while (i < this.f8133c && !C1996ac.m41676a(this.f8131a[i])) {
            i++;
        }
        int i2 = this.f8132b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f8131a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f8132b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f8131a;
        int i3 = this.f8132b;
        String m41648a = C1996ac.m41648a(bArr2, i3, i - i3);
        this.f8132b = i;
        int i4 = this.f8133c;
        if (i == i4) {
            return m41648a;
        }
        byte[] bArr3 = this.f8131a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f8132b = i5;
            if (i5 == i4) {
                return m41648a;
            }
        }
        int i6 = this.f8132b;
        if (bArr3[i6] == 10) {
            this.f8132b = i6 + 1;
        }
        return m41648a;
    }
}
