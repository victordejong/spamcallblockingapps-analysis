package p193e.p1577m.p1578a.p1596c.p1636q1;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.q1.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/t.class */
public final class C24798t {

    /* renamed from: a */
    public byte[] f69504a;

    /* renamed from: b */
    public int f69505b;

    /* renamed from: c */
    public int f69506c;

    public C24798t() {
        this.f69504a = C24773d0.f69432f;
    }

    public C24798t(int i) {
        this.f69504a = new byte[i];
        this.f69506c = i;
    }

    public C24798t(byte[] bArr) {
        this.f69504a = bArr;
        this.f69506c = bArr.length;
    }

    public C24798t(byte[] bArr, int i) {
        this.f69504a = bArr;
        this.f69506c = i;
    }

    /* renamed from: A */
    public void m4549A(byte[] bArr, int i) {
        this.f69504a = bArr;
        this.f69506c = i;
        this.f69505b = 0;
    }

    /* renamed from: B */
    public void m4548B(int i) {
        C26232y.m2310r(i >= 0 && i <= this.f69504a.length);
        this.f69506c = i;
    }

    /* renamed from: C */
    public void m4547C(int i) {
        C26232y.m2310r(i >= 0 && i <= this.f69506c);
        this.f69505b = i;
    }

    /* renamed from: D */
    public void m4546D(int i) {
        m4547C(this.f69505b + i);
    }

    /* renamed from: a */
    public int m4545a() {
        return this.f69506c - this.f69505b;
    }

    /* renamed from: b */
    public int m4544b() {
        return this.f69504a[this.f69505b] & 255;
    }

    /* renamed from: c */
    public void m4543c(C24797s c24797s, int i) {
        m4542d(c24797s.f69500a, 0, i);
        c24797s.m4552j(0);
    }

    /* renamed from: d */
    public void m4542d(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f69504a, this.f69505b, bArr, i, i2);
        this.f69505b += i2;
    }

    /* renamed from: e */
    public int m4541e() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f69505b = i4;
        byte b3 = bArr[i3];
        this.f69505b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: f */
    public String m4540f() {
        if (m4545a() == 0) {
            return null;
        }
        int i = this.f69505b;
        while (i < this.f69506c) {
            byte b = this.f69504a[i];
            int i2 = C24773d0.f69427a;
            if (b == 10 || b == 13) {
                break;
            }
            i++;
        }
        int i3 = this.f69505b;
        if (i - i3 >= 3) {
            byte[] bArr = this.f69504a;
            if (bArr[i3] == -17 && bArr[i3 + 1] == -69 && bArr[i3 + 2] == -65) {
                this.f69505b = i3 + 3;
            }
        }
        byte[] bArr2 = this.f69504a;
        int i4 = this.f69505b;
        String m4615i = C24773d0.m4615i(bArr2, i4, i - i4);
        this.f69505b = i;
        int i5 = this.f69506c;
        if (i == i5) {
            return m4615i;
        }
        byte[] bArr3 = this.f69504a;
        if (bArr3[i] == 13) {
            int i6 = i + 1;
            this.f69505b = i6;
            if (i6 == i5) {
                return m4615i;
            }
        }
        int i7 = this.f69505b;
        if (bArr3[i7] == 10) {
            this.f69505b = i7 + 1;
        }
        return m4615i;
    }

    /* renamed from: g */
    public int m4539g() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f69505b = i4;
        byte b3 = bArr[i3];
        this.f69505b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: h */
    public long m4538h() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f69505b = i4;
        long j3 = bArr[i3];
        this.f69505b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: i */
    public int m4537i() {
        int m4539g = m4539g();
        if (m4539g >= 0) {
            return m4539g;
        }
        throw new IllegalStateException(C22128a.m8611i2("Top bit not zero: ", m4539g));
    }

    /* renamed from: j */
    public int m4536j() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        byte b = bArr[i];
        this.f69505b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: k */
    public long m4535k() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f69505b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f69505b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f69505b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f69505b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f69505b = i8;
        long j7 = bArr[i7];
        this.f69505b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: l */
    public String m4534l() {
        if (m4545a() == 0) {
            return null;
        }
        int i = this.f69505b;
        while (i < this.f69506c && this.f69504a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f69504a;
        int i2 = this.f69505b;
        String m4615i = C24773d0.m4615i(bArr, i2, i - i2);
        this.f69505b = i;
        if (i < this.f69506c) {
            this.f69505b = i + 1;
        }
        return m4615i;
    }

    /* renamed from: m */
    public String m4533m(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f69505b;
        int i3 = (i2 + i) - 1;
        String m4615i = C24773d0.m4615i(this.f69504a, i2, (i3 >= this.f69506c || this.f69504a[i3] != 0) ? i : i - 1);
        this.f69505b += i;
        return m4615i;
    }

    /* renamed from: n */
    public String m4532n(int i) {
        return m4531o(i, Charset.forName(StringConstant.UTF8));
    }

    /* renamed from: o */
    public String m4531o(int i, Charset charset) {
        String str = new String(this.f69504a, this.f69505b, i, charset);
        this.f69505b += i;
        return str;
    }

    /* renamed from: p */
    public int m4530p() {
        return (m4529q() << 21) | (m4529q() << 14) | (m4529q() << 7) | m4529q();
    }

    /* renamed from: q */
    public int m4529q() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        this.f69505b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: r */
    public long m4528r() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f69505b = i4;
        long j3 = bArr[i3];
        this.f69505b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: s */
    public int m4527s() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f69505b = i3;
        byte b2 = bArr[i2];
        this.f69505b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: t */
    public int m4526t() {
        int m4541e = m4541e();
        if (m4541e >= 0) {
            return m4541e;
        }
        throw new IllegalStateException(C22128a.m8611i2("Top bit not zero: ", m4541e));
    }

    /* renamed from: u */
    public long m4525u() {
        long m4535k = m4535k();
        if (m4535k >= 0) {
            return m4535k;
        }
        throw new IllegalStateException(C22128a.m8583p2("Top bit not zero: ", m4535k));
    }

    /* renamed from: v */
    public int m4524v() {
        byte[] bArr = this.f69504a;
        int i = this.f69505b;
        int i2 = i + 1;
        this.f69505b = i2;
        byte b = bArr[i];
        this.f69505b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: w */
    public long m4523w() {
        int i;
        int i2;
        byte b;
        int i3;
        char c = this.f69504a[this.f69505b];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & c) != 0) {
                i4--;
            } else if (i4 < 6) {
                c &= i3 - 1;
                i2 = 7 - i4;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 != 0) {
            for (i = 1; i < i2; i++) {
                if ((this.f69504a[this.f69505b + i] & 192) != 128) {
                    throw new NumberFormatException(C22128a.m8583p2("Invalid UTF-8 sequence continuation byte: ", c));
                }
                c = (c << 6) | (b & 63);
            }
            this.f69505b += i2;
            return c;
        }
        throw new NumberFormatException(C22128a.m8583p2("Invalid UTF-8 sequence first byte: ", c));
    }

    /* renamed from: x */
    public void m4522x() {
        this.f69505b = 0;
        this.f69506c = 0;
    }

    /* renamed from: y */
    public void m4521y(int i) {
        byte[] bArr = this.f69504a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        m4549A(bArr2, i);
    }

    /* renamed from: z */
    public void m4520z(byte[] bArr) {
        int length = bArr.length;
        this.f69504a = bArr;
        this.f69506c = length;
        this.f69505b = 0;
    }
}
