package p1727n3.p1874y.p1876b.p1877a.p1904x0;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.x0.m */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/x0/m.class */
public final class C27434m {

    /* renamed from: a */
    public byte[] f77200a;

    /* renamed from: b */
    public int f77201b;

    /* renamed from: c */
    public int f77202c;

    public C27434m() {
        this.f77200a = C27445x.f77234f;
    }

    public C27434m(int i) {
        this.f77200a = new byte[i];
        this.f77202c = i;
    }

    public C27434m(byte[] bArr) {
        this.f77200a = bArr;
        this.f77202c = bArr.length;
    }

    public C27434m(byte[] bArr, int i) {
        this.f77200a = bArr;
        this.f77202c = i;
    }

    /* renamed from: A */
    public void m341A(int i) {
        m315z(this.f77201b + i);
    }

    /* renamed from: a */
    public int m340a() {
        return this.f77202c - this.f77201b;
    }

    /* renamed from: b */
    public void m339b(C27433l c27433l, int i) {
        m338c(c27433l.f77196a, 0, i);
        c27433l.m344h(0);
    }

    /* renamed from: c */
    public void m338c(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f77200a, this.f77201b, bArr, i, i2);
        this.f77201b += i2;
    }

    /* renamed from: d */
    public int m337d() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f77201b = i4;
        byte b3 = bArr[i3];
        this.f77201b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: e */
    public String m336e() {
        if (m340a() == 0) {
            return null;
        }
        int i = this.f77201b;
        while (i < this.f77202c && !C27445x.m267t(this.f77200a[i])) {
            i++;
        }
        int i2 = this.f77201b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f77200a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f77201b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f77200a;
        int i3 = this.f77201b;
        String m277j = C27445x.m277j(bArr2, i3, i - i3);
        this.f77201b = i;
        int i4 = this.f77202c;
        if (i == i4) {
            return m277j;
        }
        byte[] bArr3 = this.f77200a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f77201b = i5;
            if (i5 == i4) {
                return m277j;
            }
        }
        int i6 = this.f77201b;
        if (bArr3[i6] == 10) {
            this.f77201b = i6 + 1;
        }
        return m277j;
    }

    /* renamed from: f */
    public int m335f() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f77201b = i4;
        byte b3 = bArr[i3];
        this.f77201b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: g */
    public long m334g() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f77201b = i4;
        long j3 = bArr[i3];
        this.f77201b = i4 + 1;
        return (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr[i4] & 255) << 24);
    }

    /* renamed from: h */
    public int m333h() {
        int m335f = m335f();
        if (m335f >= 0) {
            return m335f;
        }
        throw new IllegalStateException(C22128a.m8690L1(29, "Top bit not zero: ", m335f));
    }

    /* renamed from: i */
    public int m332i() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        byte b = bArr[i];
        this.f77201b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: j */
    public long m331j() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f77201b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f77201b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f77201b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f77201b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f77201b = i8;
        long j7 = bArr[i7];
        this.f77201b = i8 + 1;
        return ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (bArr[i8] & 255);
    }

    /* renamed from: k */
    public String m330k() {
        if (m340a() == 0) {
            return null;
        }
        int i = this.f77201b;
        while (i < this.f77202c && this.f77200a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f77200a;
        int i2 = this.f77201b;
        String m277j = C27445x.m277j(bArr, i2, i - i2);
        this.f77201b = i;
        if (i < this.f77202c) {
            this.f77201b = i + 1;
        }
        return m277j;
    }

    /* renamed from: l */
    public String m329l(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f77201b;
        int i3 = (i2 + i) - 1;
        String m277j = C27445x.m277j(this.f77200a, i2, (i3 >= this.f77202c || this.f77200a[i3] != 0) ? i : i - 1);
        this.f77201b += i;
        return m277j;
    }

    /* renamed from: m */
    public String m328m(int i) {
        String str = new String(this.f77200a, this.f77201b, i, Charset.forName(StringConstant.UTF8));
        this.f77201b += i;
        return str;
    }

    /* renamed from: n */
    public int m327n() {
        return (m326o() << 21) | (m326o() << 14) | (m326o() << 7) | m326o();
    }

    /* renamed from: o */
    public int m326o() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        this.f77201b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: p */
    public long m325p() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f77201b = i4;
        long j3 = bArr[i3];
        this.f77201b = i4 + 1;
        return ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8) | (bArr[i4] & 255);
    }

    /* renamed from: q */
    public int m324q() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f77201b = i3;
        byte b2 = bArr[i2];
        this.f77201b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: r */
    public int m323r() {
        int m337d = m337d();
        if (m337d >= 0) {
            return m337d;
        }
        throw new IllegalStateException(C22128a.m8690L1(29, "Top bit not zero: ", m337d));
    }

    /* renamed from: s */
    public long m322s() {
        long m331j = m331j();
        if (m331j >= 0) {
            return m331j;
        }
        throw new IllegalStateException(C22128a.m8680O1(38, "Top bit not zero: ", m331j));
    }

    /* renamed from: t */
    public int m321t() {
        byte[] bArr = this.f77200a;
        int i = this.f77201b;
        int i2 = i + 1;
        this.f77201b = i2;
        byte b = bArr[i];
        this.f77201b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: u */
    public void m320u() {
        this.f77201b = 0;
        this.f77202c = 0;
    }

    /* renamed from: v */
    public void m319v(int i) {
        byte[] bArr = this.f77200a;
        byte[] bArr2 = bArr;
        if (bArr.length < i) {
            bArr2 = new byte[i];
        }
        m317x(bArr2, i);
    }

    /* renamed from: w */
    public void m318w(byte[] bArr) {
        int length = bArr.length;
        this.f77200a = bArr;
        this.f77202c = length;
        this.f77201b = 0;
    }

    /* renamed from: x */
    public void m317x(byte[] bArr, int i) {
        this.f77200a = bArr;
        this.f77202c = i;
        this.f77201b = 0;
    }

    /* renamed from: y */
    public void m316y(int i) {
        MediaSessionCompat.m43211p(i >= 0 && i <= this.f77200a.length);
        this.f77202c = i;
    }

    /* renamed from: z */
    public void m315z(int i) {
        MediaSessionCompat.m43211p(i >= 0 && i <= this.f77202c);
        this.f77201b = i;
    }
}
