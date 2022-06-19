package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27189o;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27425g;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.v.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/b.class */
public final class C27236b extends AbstractC27243h {

    /* renamed from: n */
    public C27425g f76406n;

    /* renamed from: o */
    public C27237a f76407o;

    /* renamed from: n3.y.b.a.q0.v.b$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/b$a.class */
    public class C27237a implements AbstractC27241f, AbstractC27186n {

        /* renamed from: a */
        public long[] f76408a;

        /* renamed from: b */
        public long[] f76409b;

        /* renamed from: c */
        public long f76410c = -1;

        /* renamed from: d */
        public long f76411d = -1;

        public C27237a() {
            C27236b.this = r5;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: a */
        public AbstractC27186n mo658a() {
            return this;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: b */
        public AbstractC27186n.C27187a mo602b(long j) {
            int m283d = C27445x.m283d(this.f76408a, (C27236b.this.f76439i * j) / 1000000, true, true);
            long m660a = C27236b.this.m660a(this.f76408a[m283d]);
            C27189o c27189o = new C27189o(m660a, this.f76410c + this.f76409b[m283d]);
            if (m660a < j) {
                long[] jArr = this.f76408a;
                if (m283d != jArr.length - 1) {
                    int i = m283d + 1;
                    return new AbstractC27186n.C27187a(c27189o, new C27189o(C27236b.this.m660a(jArr[i]), this.f76410c + this.f76409b[i]));
                }
            }
            return new AbstractC27186n.C27187a(c27189o);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: c */
        public boolean mo601c() {
            return true;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: d */
        public void mo657d(long j) {
            this.f76411d = this.f76408a[C27445x.m283d(this.f76408a, j, true, true)];
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: g */
        public long mo599g() {
            C27425g c27425g = C27236b.this.f76406n;
            return (c27425g.f77172d * 1000000) / c27425g.f77169a;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: h */
        public long mo656h(C27176d c27176d) throws IOException, InterruptedException {
            long j = this.f76411d;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f76411d = -1L;
                return j2;
            }
            return -1L;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: d */
    public long mo651d(C27434m c27434m) {
        int i;
        int i2;
        int i3;
        int i4;
        byte b;
        int i5;
        byte[] bArr = c27434m.f77200a;
        if (!(bArr[0] == -1)) {
            return -1L;
        }
        int i6 = (bArr[2] & 255) >> 4;
        switch (i6) {
            case 1:
                i = 192;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i2 = 576;
                i3 = i6 - 2;
                i = i2 << i3;
                break;
            case 6:
            case 7:
                c27434m.m341A(4);
                char c = c27434m.f77200a[c27434m.f77201b];
                int i7 = 7;
                while (true) {
                    if (i7 >= 0) {
                        if (((1 << i7) & c) != 0) {
                            i7--;
                        } else if (i7 < 6) {
                            c &= i5 - 1;
                            i4 = 7 - i7;
                        } else if (i7 == 7) {
                            i4 = 1;
                        }
                    }
                }
                i4 = 0;
                if (i4 == 0) {
                    throw new NumberFormatException(C22128a.m8680O1(55, "Invalid UTF-8 sequence first byte: ", c));
                }
                for (int i8 = 1; i8 < i4; i8++) {
                    if ((c27434m.f77200a[c27434m.f77201b + i8] & 192) != 128) {
                        throw new NumberFormatException(C22128a.m8680O1(62, "Invalid UTF-8 sequence continuation byte: ", c));
                    }
                    c = (c << 6) | (b & 63);
                }
                c27434m.f77201b += i4;
                int m326o = i6 == 6 ? c27434m.m326o() : c27434m.m321t();
                c27434m.m315z(0);
                i = m326o + 1;
                break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i2 = 256;
                i3 = i6 - 8;
                i = i2 << i3;
                break;
            default:
                i = -1;
                break;
        }
        return i;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: e */
    public boolean mo650e(C27434m c27434m, long j, AbstractC27243h.C27245b c27245b) throws IOException, InterruptedException {
        byte[] bArr = c27434m.f77200a;
        if (this.f76406n == null) {
            this.f76406n = new C27425g(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, c27434m.f77202c);
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            C27425g c27425g = this.f76406n;
            int i = c27425g.f77171c;
            int i2 = c27425g.f77169a;
            c27245b.f76444a = Format.m42842k(null, "audio/flac", null, -1, i * i2, c27425g.f77170b, i2, singletonList, null, 0, null);
            return true;
        }
        if ((bArr[0] & Byte.MAX_VALUE) != 3) {
            if (!(bArr[0] == -1)) {
                return true;
            }
            C27237a c27237a = this.f76407o;
            if (c27237a == null) {
                return false;
            }
            c27237a.f76410c = j;
            c27245b.f76445b = c27237a;
            return false;
        }
        C27237a c27237a2 = new C27237a();
        this.f76407o = c27237a2;
        c27434m.m341A(1);
        int m324q = c27434m.m324q() / 18;
        c27237a2.f76408a = new long[m324q];
        c27237a2.f76409b = new long[m324q];
        for (int i3 = 0; i3 < m324q; i3++) {
            c27237a2.f76408a[i3] = c27434m.m331j();
            c27237a2.f76409b[i3] = c27434m.m331j();
            c27434m.m341A(2);
        }
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: f */
    public void mo649f(boolean z) {
        super.mo649f(z);
        if (z) {
            this.f76406n = null;
            this.f76407o = null;
        }
    }
}
