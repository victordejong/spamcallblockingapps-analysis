package p193e.p1545k.p1546a.p1548b.p1553x;

import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1548b.p1552w.C23394a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1552w.C23401g;
/* renamed from: e.k.a.b.x.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/j.class */
public class C23415j extends AbstractC23408c {

    /* renamed from: v */
    public static final char[] f64926v = (char[]) C23394a.f64767a.clone();

    /* renamed from: o */
    public final Writer f64927o;

    /* renamed from: p */
    public char f64928p;

    /* renamed from: q */
    public char[] f64929q;

    /* renamed from: r */
    public int f64930r;

    /* renamed from: s */
    public int f64931s;

    /* renamed from: t */
    public int f64932t;

    /* renamed from: u */
    public char[] f64933u;

    public C23415j(C23396b c23396b, int i, AbstractC23382n abstractC23382n, Writer writer, char c) {
        super(c23396b, i, abstractC23382n);
        this.f64927o = writer;
        c23396b.m7134a(c23396b.f64786i);
        char[] m7253b = c23396b.f64781d.m7253b(1, 0);
        c23396b.f64786i = m7253b;
        this.f64929q = m7253b;
        this.f64932t = m7253b.length;
        this.f64928p = c;
        if (c != '\"') {
            this.f64841j = C23394a.m7135a(c);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0287, code lost:
        r0 = r8.f64930r;
        r0 = r0 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0296, code lost:
        if (r0 <= 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0299, code lost:
        r8.f64927o.write(r0, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02a6, code lost:
        r0 = r8.f64929q;
        r0 = r8.f64931s;
        r8.f64931s = r0 + 1;
        r0 = r0[r0];
        m6928u2(r0, r0[r0]);
     */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02e0 A[SYNTHETIC] */
    /* renamed from: A2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6934A2(java.lang.String r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23415j.m6934A2(java.lang.String):void");
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: B0 */
    public void mo5889B0(String str) throws IOException {
        int m7061q = this.f64729g.m7061q(str);
        if (m7061q != 4) {
            boolean z = m7061q == 1;
            AbstractC23383o abstractC23383o = this.f64640a;
            if (abstractC23383o != null) {
                if (z) {
                    abstractC23383o.writeObjectEntrySeparator(this);
                } else {
                    abstractC23383o.beforeObjectEntries(this);
                }
                if (this.f64844m) {
                    m6934A2(str);
                    return;
                }
                if (this.f64931s >= this.f64932t) {
                    m6930s2();
                }
                char[] cArr = this.f64929q;
                int i = this.f64931s;
                this.f64931s = i + 1;
                cArr[i] = this.f64928p;
                m6934A2(str);
                if (this.f64931s >= this.f64932t) {
                    m6930s2();
                }
                char[] cArr2 = this.f64929q;
                int i2 = this.f64931s;
                this.f64931s = i2 + 1;
                cArr2[i2] = this.f64928p;
                return;
            }
            if (this.f64931s + 1 >= this.f64932t) {
                m6930s2();
            }
            if (z) {
                char[] cArr3 = this.f64929q;
                int i3 = this.f64931s;
                this.f64931s = i3 + 1;
                cArr3[i3] = (char) 44;
            }
            if (this.f64844m) {
                m6934A2(str);
                return;
            }
            char[] cArr4 = this.f64929q;
            int i4 = this.f64931s;
            this.f64931s = i4 + 1;
            cArr4[i4] = this.f64928p;
            m6934A2(str);
            if (this.f64931s >= this.f64932t) {
                m6930s2();
            }
            char[] cArr5 = this.f64929q;
            int i5 = this.f64931s;
            this.f64931s = i5 + 1;
            cArr5[i5] = this.f64928p;
            return;
        }
        throw new C23371f("Can not write a field name, expecting a value", this);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: D0 */
    public void mo5888D0() throws IOException {
        mo6933i2("write a null");
        m6924y2();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F0 */
    public void mo5885F0(double d) throws IOException {
        if (this.f64728f || (C23401g.m7107g(d) && mo5887E(AbstractC23372g.EnumC23373a.QUOTE_NON_NUMERIC_NUMBERS))) {
            mo5868T1(String.valueOf(d));
            return;
        }
        mo6933i2("write a number");
        mo5842s1(String.valueOf(d));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F1 */
    public void mo5884F1() throws IOException {
        mo6933i2("start an array");
        this.f64729g = this.f64729g.m7068j();
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartArray(this);
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = (char) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: G0 */
    public void mo5883G0(float f) throws IOException {
        if (this.f64728f || (C23401g.m7106h(f) && mo5887E(AbstractC23372g.EnumC23373a.QUOTE_NON_NUMERIC_NUMBERS))) {
            mo5868T1(String.valueOf(f));
            return;
        }
        mo6933i2("write a number");
        mo5842s1(String.valueOf(f));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: I1 */
    public void mo5881I1(Object obj) throws IOException {
        mo6933i2("start an array");
        this.f64729g = this.f64729g.m7067k(obj);
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartArray(this);
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = (char) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: J0 */
    public void mo5880J0(int i) throws IOException {
        mo6933i2("write a number");
        if (!this.f64728f) {
            if (this.f64931s + 11 >= this.f64932t) {
                m6930s2();
            }
            this.f64931s = C23401g.m7104j(i, this.f64929q, this.f64931s);
            return;
        }
        if (this.f64931s + 13 >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i2 = this.f64931s;
        int i3 = i2 + 1;
        this.f64931s = i3;
        cArr[i2] = this.f64928p;
        int m7104j = C23401g.m7104j(i, cArr, i3);
        this.f64931s = m7104j;
        char[] cArr2 = this.f64929q;
        this.f64931s = m7104j + 1;
        cArr2[m7104j] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: K0 */
    public void mo5878K0(long j) throws IOException {
        mo6933i2("write a number");
        if (!this.f64728f) {
            if (this.f64931s + 21 >= this.f64932t) {
                m6930s2();
            }
            this.f64931s = C23401g.m7102l(j, this.f64929q, this.f64931s);
            return;
        }
        if (this.f64931s + 23 >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        int i2 = i + 1;
        this.f64931s = i2;
        cArr[i] = this.f64928p;
        int m7102l = C23401g.m7102l(j, cArr, i2);
        this.f64931s = m7102l;
        char[] cArr2 = this.f64929q;
        this.f64931s = m7102l + 1;
        cArr2[m7102l] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: L0 */
    public void mo5877L0(String str) throws IOException {
        mo6933i2("write a number");
        if (str == null) {
            m6924y2();
        } else if (this.f64728f) {
            m6923z2(str);
        } else {
            mo5842s1(str);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: L1 */
    public void mo5876L1(Object obj, int i) throws IOException {
        mo6933i2("start an array");
        this.f64729g = this.f64729g.m7067k(obj);
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartArray(this);
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i2 = this.f64931s;
        this.f64931s = i2 + 1;
        cArr[i2] = (char) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: M1 */
    public void mo5875M1() throws IOException {
        mo6933i2("start an object");
        this.f64729g = this.f64729g.m7066l();
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartObject(this);
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = (char) 123;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: O1 */
    public void mo5874O1(Object obj) throws IOException {
        mo6933i2("start an object");
        this.f64729g = this.f64729g.m7065m(obj);
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartObject(this);
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = (char) 123;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Q */
    public int mo5873Q(C23344a c23344a, InputStream inputStream, int i) throws IOException, C23371f {
        mo6933i2("write a binary value");
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i2 = this.f64931s;
        this.f64931s = i2 + 1;
        cArr[i2] = this.f64928p;
        byte[] m7131d = this.f64840i.m7131d();
        try {
            if (i < 0) {
                i = m6926w2(c23344a, inputStream, m7131d);
            } else {
                int m6925x2 = m6925x2(c23344a, inputStream, m7131d, i);
                if (m6925x2 > 0) {
                    throw new C23371f("Too few bytes available: missing " + m6925x2 + " bytes (out of " + i + ")", this);
                }
            }
            this.f64840i.m7130e(m7131d);
            if (this.f64931s >= this.f64932t) {
                m6930s2();
            }
            char[] cArr2 = this.f64929q;
            int i3 = this.f64931s;
            this.f64931s = i3 + 1;
            cArr2[i3] = this.f64928p;
            return i;
        } catch (Throwable th) {
            this.f64840i.m7130e(m7131d);
            throw th;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Q0 */
    public void mo5872Q0(BigDecimal bigDecimal) throws IOException {
        mo6933i2("write a number");
        if (bigDecimal == null) {
            m6924y2();
        } else if (this.f64728f) {
            m6923z2(m7190b2(bigDecimal));
        } else {
            mo5842s1(m7190b2(bigDecimal));
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S */
    public void mo5870S(C23344a c23344a, byte[] bArr, int i, int i2) throws IOException, C23371f {
        mo6933i2("write a binary value");
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i3 = this.f64931s;
        this.f64931s = i3 + 1;
        cArr[i3] = this.f64928p;
        int i4 = i2 + i;
        int i5 = this.f64932t - 6;
        int i6 = i;
        int i7 = c23344a.f64554f >> 2;
        while (i6 <= i4 - 3) {
            if (this.f64931s > i5) {
                m6930s2();
            }
            int i8 = i6 + 1;
            int i9 = i8 + 1;
            int m7260i = c23344a.m7260i((((bArr[i6] << 8) | (bArr[i8] & 255)) << 8) | (bArr[i9] & 255), this.f64929q, this.f64931s);
            this.f64931s = m7260i;
            int i10 = i7 - 1;
            i7 = i10;
            if (i10 <= 0) {
                char[] cArr2 = this.f64929q;
                int i11 = m7260i + 1;
                this.f64931s = i11;
                cArr2[m7260i] = (char) 92;
                this.f64931s = i11 + 1;
                cArr2[i11] = (char) 110;
                i7 = c23344a.f64554f >> 2;
            }
            i6 = i9 + 1;
        }
        int i12 = i4 - i6;
        if (i12 > 0) {
            if (this.f64931s > i5) {
                m6930s2();
            }
            int i13 = bArr[i6] << 16;
            int i14 = i13;
            if (i12 == 2) {
                i14 = i13 | ((bArr[i6 + 1] & 255) << 8);
            }
            this.f64931s = c23344a.m7258k(i14, i12, this.f64929q, this.f64931s);
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr3 = this.f64929q;
        int i15 = this.f64931s;
        this.f64931s = i15 + 1;
        cArr3[i15] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S1 */
    public void mo5869S1(AbstractC23384p abstractC23384p) throws IOException {
        mo6933i2("write a string");
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        int i2 = i + 1;
        this.f64931s = i2;
        cArr[i] = this.f64928p;
        int mo7095f = abstractC23384p.mo7095f(cArr, i2);
        if (mo7095f >= 0) {
            int i3 = this.f64931s + mo7095f;
            this.f64931s = i3;
            if (i3 >= this.f64932t) {
                m6930s2();
            }
            char[] cArr2 = this.f64929q;
            int i4 = this.f64931s;
            this.f64931s = i4 + 1;
            cArr2[i4] = this.f64928p;
            return;
        }
        char[] mo7100a = abstractC23384p.mo7100a();
        int length = mo7100a.length;
        if (length < 32) {
            if (length > this.f64932t - this.f64931s) {
                m6930s2();
            }
            System.arraycopy(mo7100a, 0, this.f64929q, this.f64931s, length);
            this.f64931s += length;
        } else {
            m6930s2();
            this.f64927o.write(mo7100a, 0, length);
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr3 = this.f64929q;
        int i5 = this.f64931s;
        this.f64931s = i5 + 1;
        cArr3[i5] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: T1 */
    public void mo5868T1(String str) throws IOException {
        mo6933i2("write a string");
        if (str == null) {
            m6924y2();
            return;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = this.f64928p;
        m6934A2(str);
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr2 = this.f64929q;
        int i2 = this.f64931s;
        this.f64931s = i2 + 1;
        cArr2[i2] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: U0 */
    public void mo5867U0(BigInteger bigInteger) throws IOException {
        mo6933i2("write a number");
        if (bigInteger == null) {
            m6924y2();
        } else if (this.f64728f) {
            m6923z2(bigInteger.toString());
        } else {
            mo5842s1(bigInteger.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00af A[SYNTHETIC] */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: V1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5866V1(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23415j.mo5866V1(char[], int, int):void");
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: W0 */
    public void mo5865W0(short s) throws IOException {
        mo6933i2("write a number");
        if (!this.f64728f) {
            if (this.f64931s + 6 >= this.f64932t) {
                m6930s2();
            }
            this.f64931s = C23401g.m7104j(s, this.f64929q, this.f64931s);
            return;
        }
        if (this.f64931s + 8 >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        int i2 = i + 1;
        this.f64931s = i2;
        cArr[i] = this.f64928p;
        int m7104j = C23401g.m7104j(s, cArr, i2);
        this.f64931s = m7104j;
        char[] cArr2 = this.f64929q;
        this.f64931s = m7104j + 1;
        cArr2[m7104j] = this.f64928p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a, p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f64929q != null && mo5887E(AbstractC23372g.EnumC23373a.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                C23411f c23411f = this.f64729g;
                if (!c23411f.m7197d()) {
                    if (!c23411f.m7196e()) {
                        break;
                    }
                    mo5840t0();
                } else {
                    mo5848p0();
                }
            }
        }
        m6930s2();
        this.f64930r = 0;
        this.f64931s = 0;
        if (this.f64927o != null) {
            if (this.f64840i.f64780c || mo5887E(AbstractC23372g.EnumC23373a.AUTO_CLOSE_TARGET)) {
                this.f64927o.close();
            } else if (mo5887E(AbstractC23372g.EnumC23373a.FLUSH_PASSED_TO_STREAM)) {
                this.f64927o.flush();
            }
        }
        char[] cArr = this.f64929q;
        if (cArr != null) {
            this.f64929q = null;
            C23396b c23396b = this.f64840i;
            Objects.requireNonNull(c23396b);
            c23396b.m7132c(cArr, c23396b.f64786i);
            c23396b.f64786i = null;
            c23396b.f64781d.f64564b.set(1, cArr);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Flushable
    public void flush() throws IOException {
        m6930s2();
        if (this.f64927o == null || !mo5887E(AbstractC23372g.EnumC23373a.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this.f64927o.flush();
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a
    /* renamed from: i2 */
    public final void mo6933i2(String str) throws IOException {
        int i;
        int m7060r = this.f64729g.m7060r();
        if (this.f64640a != null) {
            m7078p2(str, m7060r);
            return;
        }
        if (m7060r == 1) {
            i = 44;
        } else if (m7060r != 2) {
            if (m7060r != 3) {
                if (m7060r != 5) {
                    return;
                }
                m7079o2(str);
                throw null;
            }
            AbstractC23384p abstractC23384p = this.f64843l;
            if (abstractC23384p == null) {
                return;
            }
            mo5842s1(abstractC23384p.getValue());
            return;
        } else {
            i = 58;
        }
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i2 = this.f64931s;
        this.f64931s = i2 + 1;
        cArr[i2] = (char) i;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: k0 */
    public void mo5855k0(boolean z) throws IOException {
        int i;
        mo6933i2("write a boolean value");
        if (this.f64931s + 5 >= this.f64932t) {
            m6930s2();
        }
        int i2 = this.f64931s;
        char[] cArr = this.f64929q;
        if (z) {
            cArr[i2] = (char) 116;
            int i3 = i2 + 1;
            cArr[i3] = (char) 114;
            int i4 = i3 + 1;
            cArr[i4] = (char) 117;
            i = i4 + 1;
            cArr[i] = (char) 101;
        } else {
            cArr[i2] = (char) 102;
            int i5 = i2 + 1;
            cArr[i5] = (char) 97;
            int i6 = i5 + 1;
            cArr[i6] = (char) 108;
            int i7 = i6 + 1;
            cArr[i7] = (char) 115;
            i = i7 + 1;
            cArr[i] = (char) 101;
        }
        this.f64931s = i + 1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: m1 */
    public void mo5852m1(char c) throws IOException {
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = c;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: n1 */
    public void mo5850n1(AbstractC23384p abstractC23384p) throws IOException {
        int mo7097d = abstractC23384p.mo7097d(this.f64929q, this.f64931s);
        if (mo7097d < 0) {
            mo5842s1(abstractC23384p.getValue());
        } else {
            this.f64931s += mo7097d;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: p0 */
    public void mo5848p0() throws IOException {
        if (!this.f64729g.m7197d()) {
            StringBuilder m8728C = C22128a.m8728C("Current context not Array but ");
            m8728C.append(this.f64729g.m7194h());
            throw new C23371f(m8728C.toString(), this);
        }
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeEndArray(this, this.f64729g.f64689b + 1);
        } else {
            if (this.f64931s >= this.f64932t) {
                m6930s2();
            }
            char[] cArr = this.f64929q;
            int i = this.f64931s;
            this.f64931s = i + 1;
            cArr[i] = (char) 93;
        }
        this.f64729g = this.f64729g.m7069i();
    }

    /* renamed from: q2 */
    public final char[] m6932q2() {
        char[] cArr = {(char) 92, 0, (char) 92, (char) 117, (char) 48, (char) 48, 0, 0, (char) 92, (char) 117};
        this.f64933u = cArr;
        return cArr;
    }

    /* renamed from: r2 */
    public final void m6931r2(char c, int i) throws IOException, C23371f {
        int i2;
        if (i >= 0) {
            if (this.f64931s + 2 > this.f64932t) {
                m6930s2();
            }
            char[] cArr = this.f64929q;
            int i3 = this.f64931s;
            int i4 = i3 + 1;
            this.f64931s = i4;
            cArr[i3] = (char) 92;
            this.f64931s = i4 + 1;
            cArr[i4] = (char) i;
        } else if (i == -2) {
            throw null;
        } else {
            if (this.f64931s + 5 >= this.f64932t) {
                m6930s2();
            }
            int i5 = this.f64931s;
            char[] cArr2 = this.f64929q;
            int i6 = i5 + 1;
            cArr2[i5] = (char) 92;
            int i7 = i6 + 1;
            cArr2[i6] = (char) 117;
            if (c > 255) {
                int i8 = 255 & (c >> '\b');
                int i9 = i7 + 1;
                char[] cArr3 = f64926v;
                cArr2[i7] = cArr3[i8 >> 4];
                i2 = i9 + 1;
                cArr2[i9] = cArr3[i8 & 15];
                c = (char) (c & 255);
            } else {
                int i10 = i7 + 1;
                cArr2[i7] = (char) 48;
                i2 = i10 + 1;
                cArr2[i10] = (char) 48;
            }
            int i11 = i2 + 1;
            char[] cArr4 = f64926v;
            cArr2[i2] = cArr4[c >> 4];
            cArr2[i11] = cArr4[c & 15];
            this.f64931s = i11 + 1;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: s1 */
    public void mo5842s1(String str) throws IOException {
        int length = str.length();
        int i = this.f64932t - this.f64931s;
        int i2 = i;
        if (i == 0) {
            m6930s2();
            i2 = this.f64932t - this.f64931s;
        }
        if (i2 >= length) {
            str.getChars(0, length, this.f64929q, this.f64931s);
            this.f64931s += length;
            return;
        }
        int i3 = this.f64932t;
        int i4 = this.f64931s;
        int i5 = i3 - i4;
        str.getChars(0, i5, this.f64929q, i4);
        this.f64931s += i5;
        m6930s2();
        int length2 = str.length() - i5;
        while (true) {
            int i6 = this.f64932t;
            if (length2 <= i6) {
                str.getChars(i5, i5 + length2, this.f64929q, 0);
                this.f64930r = 0;
                this.f64931s = length2;
                return;
            }
            int i7 = i5 + i6;
            str.getChars(i5, i7, this.f64929q, 0);
            this.f64930r = 0;
            this.f64931s = i6;
            m6930s2();
            length2 -= i6;
            i5 = i7;
        }
    }

    /* renamed from: s2 */
    public void m6930s2() throws IOException {
        int i = this.f64931s;
        int i2 = this.f64930r;
        int i3 = i - i2;
        if (i3 > 0) {
            this.f64930r = 0;
            this.f64931s = 0;
            this.f64927o.write(this.f64929q, i2, i3);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: t0 */
    public void mo5840t0() throws IOException {
        if (!this.f64729g.m7196e()) {
            StringBuilder m8728C = C22128a.m8728C("Current context not Object but ");
            m8728C.append(this.f64729g.m7194h());
            throw new C23371f(m8728C.toString(), this);
        }
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeEndObject(this, this.f64729g.f64689b + 1);
        } else {
            if (this.f64931s >= this.f64932t) {
                m6930s2();
            }
            char[] cArr = this.f64929q;
            int i = this.f64931s;
            this.f64931s = i + 1;
            cArr[i] = (char) 125;
        }
        this.f64729g = this.f64729g.m7069i();
    }

    /* renamed from: t2 */
    public final int m6929t2(char[] cArr, int i, int i2, char c, int i3) throws IOException, C23371f {
        int i4;
        if (i3 >= 0) {
            if (i <= 1 || i >= i2) {
                char[] cArr2 = this.f64933u;
                char[] cArr3 = cArr2;
                if (cArr2 == null) {
                    cArr3 = m6932q2();
                }
                cArr3[1] = (char) i3;
                this.f64927o.write(cArr3, 0, 2);
            } else {
                i -= 2;
                cArr[i] = (char) 92;
                cArr[i + 1] = (char) i3;
            }
            return i;
        } else if (i3 == -2) {
            throw null;
        } else {
            if (i <= 5 || i >= i2) {
                char[] cArr4 = this.f64933u;
                char[] cArr5 = cArr4;
                if (cArr4 == null) {
                    cArr5 = m6932q2();
                }
                this.f64930r = this.f64931s;
                if (c > 255) {
                    int i5 = (c >> '\b') & 255;
                    int i6 = c & 255;
                    char[] cArr6 = f64926v;
                    cArr5[10] = cArr6[i5 >> 4];
                    cArr5[11] = cArr6[i5 & 15];
                    cArr5[12] = cArr6[i6 >> 4];
                    cArr5[13] = cArr6[i6 & 15];
                    this.f64927o.write(cArr5, 8, 6);
                } else {
                    char[] cArr7 = f64926v;
                    cArr5[6] = cArr7[c >> 4];
                    cArr5[7] = cArr7[c & 15];
                    this.f64927o.write(cArr5, 2, 6);
                }
            } else {
                int i7 = i - 6;
                int i8 = i7 + 1;
                cArr[i7] = (char) 92;
                int i9 = i8 + 1;
                cArr[i8] = (char) 117;
                if (c > 255) {
                    int i10 = (c >> '\b') & 255;
                    int i11 = i9 + 1;
                    char[] cArr8 = f64926v;
                    cArr[i9] = cArr8[i10 >> 4];
                    i4 = i11 + 1;
                    cArr[i11] = cArr8[i10 & 15];
                    c = (char) (c & 255);
                } else {
                    int i12 = i9 + 1;
                    cArr[i9] = (char) 48;
                    i4 = i12 + 1;
                    cArr[i12] = (char) 48;
                }
                int i13 = i4 + 1;
                char[] cArr9 = f64926v;
                cArr[i4] = cArr9[c >> 4];
                cArr[i13] = cArr9[c & 15];
                i = i13 - 5;
            }
            return i;
        }
    }

    /* renamed from: u2 */
    public final void m6928u2(char c, int i) throws IOException, C23371f {
        int i2;
        if (i >= 0) {
            int i3 = this.f64931s;
            if (i3 >= 2) {
                int i4 = i3 - 2;
                this.f64930r = i4;
                char[] cArr = this.f64929q;
                cArr[i4] = (char) 92;
                cArr[i4 + 1] = (char) i;
                return;
            }
            char[] cArr2 = this.f64933u;
            char[] cArr3 = cArr2;
            if (cArr2 == null) {
                cArr3 = m6932q2();
            }
            this.f64930r = this.f64931s;
            cArr3[1] = (char) i;
            this.f64927o.write(cArr3, 0, 2);
        } else if (i == -2) {
            throw null;
        } else {
            int i5 = this.f64931s;
            if (i5 < 6) {
                char[] cArr4 = this.f64933u;
                char[] cArr5 = cArr4;
                if (cArr4 == null) {
                    cArr5 = m6932q2();
                }
                this.f64930r = this.f64931s;
                if (c <= 255) {
                    char[] cArr6 = f64926v;
                    cArr5[6] = cArr6[c >> 4];
                    cArr5[7] = cArr6[c & 15];
                    this.f64927o.write(cArr5, 2, 6);
                    return;
                }
                int i6 = (c >> '\b') & 255;
                int i7 = c & 255;
                char[] cArr7 = f64926v;
                cArr5[10] = cArr7[i6 >> 4];
                cArr5[11] = cArr7[i6 & 15];
                cArr5[12] = cArr7[i7 >> 4];
                cArr5[13] = cArr7[i7 & 15];
                this.f64927o.write(cArr5, 8, 6);
                return;
            }
            char[] cArr8 = this.f64929q;
            int i8 = i5 - 6;
            this.f64930r = i8;
            cArr8[i8] = (char) 92;
            int i9 = i8 + 1;
            cArr8[i9] = (char) 117;
            if (c > 255) {
                int i10 = (c >> '\b') & 255;
                int i11 = i9 + 1;
                char[] cArr9 = f64926v;
                cArr8[i11] = cArr9[i10 >> 4];
                i2 = i11 + 1;
                cArr8[i2] = cArr9[i10 & 15];
                c = (char) (c & 255);
            } else {
                int i12 = i9 + 1;
                cArr8[i12] = (char) 48;
                i2 = i12 + 1;
                cArr8[i2] = (char) 48;
            }
            int i13 = i2 + 1;
            char[] cArr10 = f64926v;
            cArr8[i13] = cArr10[c >> 4];
            cArr8[i13 + 1] = cArr10[c & 15];
        }
    }

    /* renamed from: v2 */
    public final int m6927v2(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        for (int i5 = i; i5 < i2; i5++) {
            bArr[i4] = bArr[i5];
            i4++;
        }
        int min = Math.min(i3, bArr.length);
        while (true) {
            int i6 = min - i4;
            if (i6 == 0) {
                break;
            }
            int read = inputStream.read(bArr, i4, i6);
            if (read < 0) {
                return i4;
            }
            int i7 = i4 + read;
            i4 = i7;
            if (i7 >= 3) {
                i4 = i7;
                break;
            }
        }
        return i4;
    }

    /* renamed from: w2 */
    public final int m6926w2(C23344a c23344a, InputStream inputStream, byte[] bArr) throws IOException, C23371f {
        int i;
        int i2;
        int i3 = this.f64932t - 6;
        int i4 = -3;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = c23344a.f64554f >> 2;
        while (true) {
            int i9 = i4;
            int i10 = i5;
            i = i7;
            if (i5 > i4) {
                i = m6927v2(inputStream, bArr, i5, i7, bArr.length);
                if (i < 3) {
                    break;
                }
                i9 = i - 3;
                i10 = 0;
            }
            if (this.f64931s > i3) {
                m6930s2();
            }
            int i11 = i10 + 1;
            byte b = bArr[i10];
            int i12 = i11 + 1;
            byte b2 = bArr[i11];
            int i13 = i12 + 1;
            byte b3 = bArr[i12];
            int i14 = i6 + 3;
            int m7260i = c23344a.m7260i((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this.f64929q, this.f64931s);
            this.f64931s = m7260i;
            int i15 = i8 - 1;
            i8 = i15;
            i4 = i9;
            i5 = i13;
            i7 = i;
            i6 = i14;
            if (i15 <= 0) {
                char[] cArr = this.f64929q;
                int i16 = m7260i + 1;
                this.f64931s = i16;
                cArr[m7260i] = (char) 92;
                this.f64931s = i16 + 1;
                cArr[i16] = (char) 110;
                i8 = c23344a.f64554f >> 2;
                i4 = i9;
                i5 = i13;
                i7 = i;
                i6 = i14;
            }
        }
        int i17 = i6;
        if (i > 0) {
            if (this.f64931s > i3) {
                m6930s2();
            }
            int i18 = bArr[0] << 16;
            if (1 < i) {
                i18 |= (bArr[1] & 255) << 8;
                i2 = 2;
            } else {
                i2 = 1;
            }
            this.f64931s = c23344a.m7258k(i18, i2, this.f64929q, this.f64931s);
            i17 = i6 + i2;
        }
        return i17;
    }

    /* renamed from: x2 */
    public final int m6925x2(C23344a c23344a, InputStream inputStream, byte[] bArr, int i) throws IOException, C23371f {
        int i2;
        int i3;
        int i4;
        int i5 = this.f64932t - 6;
        int i6 = -3;
        int i7 = 0;
        int i8 = i;
        int i9 = 0;
        int i10 = c23344a.f64554f >> 2;
        while (true) {
            i2 = i9;
            i3 = i7;
            if (i8 <= 2) {
                break;
            }
            int i11 = i6;
            int i12 = i9;
            int i13 = i7;
            if (i9 > i6) {
                i3 = m6927v2(inputStream, bArr, i9, i7, i8);
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i12 = 0;
                i13 = i3;
                i11 = i3 - 3;
            }
            if (this.f64931s > i5) {
                m6930s2();
            }
            int i14 = i12 + 1;
            byte b = bArr[i12];
            int i15 = i14 + 1;
            byte b2 = bArr[i14];
            int i16 = i15 + 1;
            byte b3 = bArr[i15];
            int i17 = i8 - 3;
            int m7260i = c23344a.m7260i((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this.f64929q, this.f64931s);
            this.f64931s = m7260i;
            int i18 = i10 - 1;
            i10 = i18;
            i6 = i11;
            i9 = i16;
            i7 = i13;
            i8 = i17;
            if (i18 <= 0) {
                char[] cArr = this.f64929q;
                int i19 = m7260i + 1;
                this.f64931s = i19;
                cArr[m7260i] = (char) 92;
                this.f64931s = i19 + 1;
                cArr[i19] = (char) 110;
                i10 = c23344a.f64554f >> 2;
                i6 = i11;
                i9 = i16;
                i7 = i13;
                i8 = i17;
            }
        }
        int i20 = i8;
        if (i8 > 0) {
            int m6927v2 = m6927v2(inputStream, bArr, i2, i3, i8);
            i20 = i8;
            if (m6927v2 > 0) {
                if (this.f64931s > i5) {
                    m6930s2();
                }
                int i21 = bArr[0] << 16;
                if (1 < m6927v2) {
                    i21 |= (bArr[1] & 255) << 8;
                    i4 = 2;
                } else {
                    i4 = 1;
                }
                this.f64931s = c23344a.m7258k(i21, i4, this.f64929q, this.f64931s);
                i20 = i8 - i4;
            }
        }
        return i20;
    }

    /* renamed from: y2 */
    public final void m6924y2() throws IOException {
        if (this.f64931s + 4 >= this.f64932t) {
            m6930s2();
        }
        int i = this.f64931s;
        char[] cArr = this.f64929q;
        cArr[i] = (char) 110;
        int i2 = i + 1;
        cArr[i2] = (char) 117;
        int i3 = i2 + 1;
        cArr[i3] = (char) 108;
        int i4 = i3 + 1;
        cArr[i4] = (char) 108;
        this.f64931s = i4 + 1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z0 */
    public void mo5833z0(AbstractC23384p abstractC23384p) throws IOException {
        int m7061q = this.f64729g.m7061q(abstractC23384p.getValue());
        if (m7061q != 4) {
            boolean z = m7061q == 1;
            AbstractC23383o abstractC23383o = this.f64640a;
            if (abstractC23383o != null) {
                if (z) {
                    abstractC23383o.writeObjectEntrySeparator(this);
                } else {
                    abstractC23383o.beforeObjectEntries(this);
                }
                char[] mo7100a = abstractC23384p.mo7100a();
                if (this.f64844m) {
                    mo5832z1(mo7100a, 0, mo7100a.length);
                    return;
                }
                if (this.f64931s >= this.f64932t) {
                    m6930s2();
                }
                char[] cArr = this.f64929q;
                int i = this.f64931s;
                this.f64931s = i + 1;
                cArr[i] = this.f64928p;
                mo5832z1(mo7100a, 0, mo7100a.length);
                if (this.f64931s >= this.f64932t) {
                    m6930s2();
                }
                char[] cArr2 = this.f64929q;
                int i2 = this.f64931s;
                this.f64931s = i2 + 1;
                cArr2[i2] = this.f64928p;
                return;
            }
            if (this.f64931s + 1 >= this.f64932t) {
                m6930s2();
            }
            if (z) {
                char[] cArr3 = this.f64929q;
                int i3 = this.f64931s;
                this.f64931s = i3 + 1;
                cArr3[i3] = (char) 44;
            }
            if (this.f64844m) {
                char[] mo7100a2 = abstractC23384p.mo7100a();
                mo5832z1(mo7100a2, 0, mo7100a2.length);
                return;
            }
            char[] cArr4 = this.f64929q;
            int i4 = this.f64931s;
            int i5 = i4 + 1;
            this.f64931s = i5;
            cArr4[i4] = this.f64928p;
            int mo7095f = abstractC23384p.mo7095f(cArr4, i5);
            if (mo7095f < 0) {
                char[] mo7100a3 = abstractC23384p.mo7100a();
                mo5832z1(mo7100a3, 0, mo7100a3.length);
                if (this.f64931s >= this.f64932t) {
                    m6930s2();
                }
                char[] cArr5 = this.f64929q;
                int i6 = this.f64931s;
                this.f64931s = i6 + 1;
                cArr5[i6] = this.f64928p;
                return;
            }
            int i7 = this.f64931s + mo7095f;
            this.f64931s = i7;
            if (i7 >= this.f64932t) {
                m6930s2();
            }
            char[] cArr6 = this.f64929q;
            int i8 = this.f64931s;
            this.f64931s = i8 + 1;
            cArr6[i8] = this.f64928p;
            return;
        }
        throw new C23371f("Can not write a field name, expecting a value", this);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z1 */
    public void mo5832z1(char[] cArr, int i, int i2) throws IOException {
        if (i2 >= 32) {
            m6930s2();
            this.f64927o.write(cArr, i, i2);
            return;
        }
        if (i2 > this.f64932t - this.f64931s) {
            m6930s2();
        }
        System.arraycopy(cArr, i, this.f64929q, this.f64931s, i2);
        this.f64931s += i2;
    }

    /* renamed from: z2 */
    public final void m6923z2(String str) throws IOException {
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr = this.f64929q;
        int i = this.f64931s;
        this.f64931s = i + 1;
        cArr[i] = this.f64928p;
        mo5842s1(str);
        if (this.f64931s >= this.f64932t) {
            m6930s2();
        }
        char[] cArr2 = this.f64929q;
        int i2 = this.f64931s;
        this.f64931s = i2 + 1;
        cArr2[i2] = this.f64928p;
    }
}
