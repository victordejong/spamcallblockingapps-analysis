package p193e.p1545k.p1546a.p1548b.p1553x;

import io.agora.rtc.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
/* renamed from: e.k.a.b.x.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/h.class */
public class C23413h extends AbstractC23408c {

    /* renamed from: o */
    public final OutputStream f64896o;

    /* renamed from: p */
    public byte f64897p;

    /* renamed from: q */
    public byte[] f64898q;

    /* renamed from: r */
    public int f64899r;

    /* renamed from: s */
    public final int f64900s;

    /* renamed from: t */
    public final int f64901t;

    /* renamed from: u */
    public char[] f64902u;

    /* renamed from: v */
    public final int f64903v;

    /* renamed from: w */
    public boolean f64904w;

    /* renamed from: x */
    public static final byte[] f64893x = (byte[]) C23394a.f64768b.clone();

    /* renamed from: y */
    public static final byte[] f64894y = {110, 117, 108, 108};

    /* renamed from: z */
    public static final byte[] f64895z = {116, 114, 117, 101};

    /* renamed from: A */
    public static final byte[] f64892A = {102, 97, 108, 115, 101};

    public C23413h(C23396b c23396b, int i, AbstractC23382n abstractC23382n, OutputStream outputStream, char c) {
        super(c23396b, i, abstractC23382n);
        this.f64896o = outputStream;
        this.f64897p = (byte) c;
        if (c != '\"') {
            this.f64841j = C23394a.m7135a(c);
        }
        this.f64904w = true;
        c23396b.m7134a(c23396b.f64783f);
        byte[] m7254a = c23396b.f64781d.m7254a(1);
        c23396b.f64783f = m7254a;
        this.f64898q = m7254a;
        int length = m7254a.length;
        this.f64900s = length;
        this.f64901t = length >> 3;
        c23396b.m7134a(c23396b.f64786i);
        char[] m7253b = c23396b.f64781d.m7253b(1, 0);
        c23396b.f64786i = m7253b;
        this.f64902u = m7253b;
        this.f64903v = m7253b.length;
        if (mo5887E(AbstractC23372g.EnumC23373a.ESCAPE_NON_ASCII)) {
            mo7081P(Constants.ERR_WATERMARKR_INFO);
        }
    }

    /* renamed from: A2 */
    public final void m7021A2(String str, int i, int i2) throws IOException {
        char charAt;
        int i3 = i2 + i;
        int i4 = this.f64899r;
        byte[] bArr = this.f64898q;
        int[] iArr = this.f64841j;
        while (i < i3 && (charAt = str.charAt(i)) <= 127 && iArr[charAt] == 0) {
            bArr[i4] = (byte) charAt;
            i++;
            i4++;
        }
        this.f64899r = i4;
        if (i < i3) {
            if (this.f64842k == 0) {
                if (C22128a.m8548y1(i3, i, 6, i4) > this.f64900s) {
                    m7016q2();
                }
                int i5 = this.f64899r;
                byte[] bArr2 = this.f64898q;
                int[] iArr2 = this.f64841j;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    char charAt2 = str.charAt(i6);
                    if (charAt2 <= 127) {
                        if (iArr2[charAt2] == 0) {
                            bArr2[i7] = (byte) charAt2;
                            i6 = i8;
                            i7++;
                        } else {
                            int i9 = iArr2[charAt2];
                            if (i9 > 0) {
                                int i10 = i7 + 1;
                                bArr2[i7] = (byte) 92;
                                i7 = i10 + 1;
                                bArr2[i10] = (byte) i9;
                            } else {
                                i7 = m7009x2(charAt2, i7);
                            }
                        }
                    } else if (charAt2 <= 2047) {
                        int i11 = i7 + 1;
                        bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                        i7 = i11 + 1;
                        bArr2[i11] = (byte) ((charAt2 & '?') | 128);
                    } else {
                        i7 = m7015r2(charAt2, i7);
                    }
                    i6 = i8;
                }
                this.f64899r = i7;
                return;
            }
            if (C22128a.m8548y1(i3, i, 6, i4) > this.f64900s) {
                m7016q2();
            }
            int i12 = this.f64899r;
            byte[] bArr3 = this.f64898q;
            int[] iArr3 = this.f64841j;
            int i13 = this.f64842k;
            int i14 = i;
            int i15 = i12;
            while (i14 < i3) {
                int i16 = i14 + 1;
                char charAt3 = str.charAt(i14);
                if (charAt3 <= 127) {
                    if (iArr3[charAt3] == 0) {
                        bArr3[i15] = (byte) charAt3;
                        i14 = i16;
                        i15++;
                    } else {
                        int i17 = iArr3[charAt3];
                        if (i17 > 0) {
                            int i18 = i15 + 1;
                            bArr3[i15] = (byte) 92;
                            i15 = i18 + 1;
                            bArr3[i18] = (byte) i17;
                        } else {
                            i15 = m7009x2(charAt3, i15);
                        }
                    }
                } else if (charAt3 > i13) {
                    i15 = m7009x2(charAt3, i15);
                } else if (charAt3 <= 2047) {
                    int i19 = i15 + 1;
                    bArr3[i15] = (byte) ((charAt3 >> 6) | 192);
                    i15 = i19 + 1;
                    bArr3[i19] = (byte) ((charAt3 & '?') | 128);
                } else {
                    i15 = m7015r2(charAt3, i15);
                }
                i14 = i16;
            }
            this.f64899r = i15;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: B0 */
    public void mo5889B0(String str) throws IOException {
        int i;
        int i2 = 0;
        if (this.f64640a != null) {
            int m7061q = this.f64729g.m7061q(str);
            if (m7061q == 4) {
                throw new C23371f("Can not write a field name, expecting a value", this);
            }
            if (m7061q == 1) {
                this.f64640a.writeObjectEntrySeparator(this);
            } else {
                this.f64640a.beforeObjectEntries(this);
            }
            if (this.f64844m) {
                m7018C2(str, false);
                return;
            }
            int length = str.length();
            if (length > this.f64903v) {
                m7018C2(str, true);
                return;
            }
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr = this.f64898q;
            int i3 = this.f64899r;
            this.f64899r = i3 + 1;
            bArr[i3] = this.f64897p;
            str.getChars(0, length, this.f64902u, 0);
            if (length <= this.f64901t) {
                if (this.f64899r + length > this.f64900s) {
                    m7016q2();
                }
                m7019B2(this.f64902u, 0, length);
            } else {
                m7017D2(this.f64902u, 0, length);
            }
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr2 = this.f64898q;
            int i4 = this.f64899r;
            this.f64899r = i4 + 1;
            bArr2[i4] = this.f64897p;
            return;
        }
        int m7061q2 = this.f64729g.m7061q(str);
        if (m7061q2 == 4) {
            throw new C23371f("Can not write a field name, expecting a value", this);
        }
        if (m7061q2 == 1) {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr3 = this.f64898q;
            int i5 = this.f64899r;
            this.f64899r = i5 + 1;
            bArr3[i5] = (byte) 44;
        }
        if (this.f64844m) {
            m7018C2(str, false);
            return;
        }
        int length2 = str.length();
        if (length2 > this.f64903v) {
            m7018C2(str, true);
            return;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr4 = this.f64898q;
        int i6 = this.f64899r;
        int i7 = i6 + 1;
        this.f64899r = i7;
        bArr4[i6] = this.f64897p;
        int i8 = length2;
        if (length2 <= this.f64901t) {
            if (i7 + length2 > this.f64900s) {
                m7016q2();
            }
            m7021A2(str, 0, length2);
        } else {
            do {
                int min = Math.min(this.f64901t, i8);
                if (this.f64899r + min > this.f64900s) {
                    m7016q2();
                }
                m7021A2(str, i2, min);
                i2 += min;
                i = i8 - min;
                i8 = i;
            } while (i > 0);
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr5 = this.f64898q;
        int i9 = this.f64899r;
        this.f64899r = i9 + 1;
        bArr5[i9] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a, p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: B1 */
    public void mo7020B1(AbstractC23384p abstractC23384p) throws IOException {
        mo6933i2("write a raw (unencoded) value");
        int mo7096e = abstractC23384p.mo7096e(this.f64898q, this.f64899r);
        if (mo7096e < 0) {
            m7010w2(abstractC23384p.mo7094g());
        } else {
            this.f64899r += mo7096e;
        }
    }

    /* renamed from: B2 */
    public final void m7019B2(char[] cArr, int i, int i2) throws IOException {
        char c;
        int i3 = i2 + i;
        int i4 = this.f64899r;
        byte[] bArr = this.f64898q;
        int[] iArr = this.f64841j;
        while (i < i3 && (c = cArr[i]) <= 127 && iArr[c] == 0) {
            bArr[i4] = (byte) c;
            i++;
            i4++;
        }
        this.f64899r = i4;
        if (i < i3) {
            if (this.f64842k == 0) {
                if (C22128a.m8548y1(i3, i, 6, i4) > this.f64900s) {
                    m7016q2();
                }
                int i5 = this.f64899r;
                byte[] bArr2 = this.f64898q;
                int[] iArr2 = this.f64841j;
                int i6 = i;
                int i7 = i5;
                while (i6 < i3) {
                    int i8 = i6 + 1;
                    char c2 = cArr[i6];
                    if (c2 <= 127) {
                        if (iArr2[c2] == 0) {
                            bArr2[i7] = (byte) c2;
                            i6 = i8;
                            i7++;
                        } else {
                            int i9 = iArr2[c2];
                            if (i9 > 0) {
                                int i10 = i7 + 1;
                                bArr2[i7] = (byte) 92;
                                i7 = i10 + 1;
                                bArr2[i10] = (byte) i9;
                            } else {
                                i7 = m7009x2(c2, i7);
                            }
                        }
                    } else if (c2 <= 2047) {
                        int i11 = i7 + 1;
                        bArr2[i7] = (byte) ((c2 >> 6) | 192);
                        i7 = i11 + 1;
                        bArr2[i11] = (byte) ((c2 & '?') | 128);
                    } else {
                        i7 = m7015r2(c2, i7);
                    }
                    i6 = i8;
                }
                this.f64899r = i7;
                return;
            }
            if (C22128a.m8548y1(i3, i, 6, i4) > this.f64900s) {
                m7016q2();
            }
            int i12 = this.f64899r;
            byte[] bArr3 = this.f64898q;
            int[] iArr3 = this.f64841j;
            int i13 = this.f64842k;
            int i14 = i;
            int i15 = i12;
            while (i14 < i3) {
                int i16 = i14 + 1;
                char c3 = cArr[i14];
                if (c3 <= 127) {
                    if (iArr3[c3] == 0) {
                        bArr3[i15] = (byte) c3;
                        i14 = i16;
                        i15++;
                    } else {
                        int i17 = iArr3[c3];
                        if (i17 > 0) {
                            int i18 = i15 + 1;
                            bArr3[i15] = (byte) 92;
                            i15 = i18 + 1;
                            bArr3[i18] = (byte) i17;
                        } else {
                            i15 = m7009x2(c3, i15);
                        }
                    }
                } else if (c3 > i13) {
                    i15 = m7009x2(c3, i15);
                } else if (c3 <= 2047) {
                    int i19 = i15 + 1;
                    bArr3[i15] = (byte) ((c3 >> 6) | 192);
                    i15 = i19 + 1;
                    bArr3[i19] = (byte) ((c3 & '?') | 128);
                } else {
                    i15 = m7015r2(c3, i15);
                }
                i14 = i16;
            }
            this.f64899r = i15;
        }
    }

    /* renamed from: C2 */
    public final void m7018C2(String str, boolean z) throws IOException {
        if (z) {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr = this.f64898q;
            int i = this.f64899r;
            this.f64899r = i + 1;
            bArr[i] = this.f64897p;
        }
        int length = str.length();
        int i2 = 0;
        while (length > 0) {
            int min = Math.min(this.f64901t, length);
            if (this.f64899r + min > this.f64900s) {
                m7016q2();
            }
            m7021A2(str, i2, min);
            i2 += min;
            length -= min;
        }
        if (z) {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr2 = this.f64898q;
            int i3 = this.f64899r;
            this.f64899r = i3 + 1;
            bArr2[i3] = this.f64897p;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: D0 */
    public void mo5888D0() throws IOException {
        mo6933i2("write a null");
        m7008y2();
    }

    /* renamed from: D2 */
    public final void m7017D2(char[] cArr, int i, int i2) throws IOException {
        int i3;
        do {
            int min = Math.min(this.f64901t, i2);
            if (this.f64899r + min > this.f64900s) {
                m7016q2();
            }
            m7019B2(cArr, i, min);
            i += min;
            i3 = i2 - min;
            i2 = i3;
        } while (i3 > 0);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F0 */
    public void mo5885F0(double d) throws IOException {
        if (this.f64728f || (C23401g.m7107g(d) && AbstractC23372g.EnumC23373a.QUOTE_NON_NUMERIC_NUMBERS.m7207c(this.f64727e))) {
            mo5868T1(String.valueOf(d));
            return;
        }
        mo6933i2("write a number");
        mo5842s1(String.valueOf(d));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F1 */
    public final void mo5884F1() throws IOException {
        mo6933i2("start an array");
        this.f64729g = this.f64729g.m7068j();
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartArray(this);
            return;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = (byte) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: G0 */
    public void mo5883G0(float f) throws IOException {
        if (this.f64728f || (C23401g.m7106h(f) && AbstractC23372g.EnumC23373a.QUOTE_NON_NUMERIC_NUMBERS.m7207c(this.f64727e))) {
            mo5868T1(String.valueOf(f));
            return;
        }
        mo6933i2("write a number");
        mo5842s1(String.valueOf(f));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: I1 */
    public final void mo5881I1(Object obj) throws IOException {
        mo6933i2("start an array");
        this.f64729g = this.f64729g.m7067k(obj);
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartArray(this);
            return;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = (byte) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: J0 */
    public void mo5880J0(int i) throws IOException {
        mo6933i2("write a number");
        if (this.f64899r + 11 >= this.f64900s) {
            m7016q2();
        }
        if (!this.f64728f) {
            this.f64899r = C23401g.m7105i(i, this.f64898q, this.f64899r);
            return;
        }
        if (this.f64899r + 13 >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i2 = this.f64899r;
        int i3 = i2 + 1;
        this.f64899r = i3;
        bArr[i2] = this.f64897p;
        int m7105i = C23401g.m7105i(i, bArr, i3);
        this.f64899r = m7105i;
        byte[] bArr2 = this.f64898q;
        this.f64899r = m7105i + 1;
        bArr2[m7105i] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: K0 */
    public void mo5878K0(long j) throws IOException {
        mo6933i2("write a number");
        if (!this.f64728f) {
            if (this.f64899r + 21 >= this.f64900s) {
                m7016q2();
            }
            this.f64899r = C23401g.m7103k(j, this.f64898q, this.f64899r);
            return;
        }
        if (this.f64899r + 23 >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        int i2 = i + 1;
        this.f64899r = i2;
        bArr[i] = this.f64897p;
        int m7103k = C23401g.m7103k(j, bArr, i2);
        this.f64899r = m7103k;
        byte[] bArr2 = this.f64898q;
        this.f64899r = m7103k + 1;
        bArr2[m7103k] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: L0 */
    public void mo5877L0(String str) throws IOException {
        mo6933i2("write a number");
        if (str == null) {
            m7008y2();
        } else if (this.f64728f) {
            m7007z2(str);
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
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i2 = this.f64899r;
        this.f64899r = i2 + 1;
        bArr[i2] = (byte) 91;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: M1 */
    public final void mo5875M1() throws IOException {
        mo6933i2("start an object");
        this.f64729g = this.f64729g.m7066l();
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeStartObject(this);
            return;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = (byte) 123;
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
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = (byte) 123;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Q */
    public int mo5873Q(C23344a c23344a, InputStream inputStream, int i) throws IOException, C23371f {
        mo6933i2("write a binary value");
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i2 = this.f64899r;
        this.f64899r = i2 + 1;
        bArr[i2] = this.f64897p;
        byte[] m7131d = this.f64840i.m7131d();
        try {
            if (i < 0) {
                i = m7012u2(c23344a, inputStream, m7131d);
            } else {
                int m7011v2 = m7011v2(c23344a, inputStream, m7131d, i);
                if (m7011v2 > 0) {
                    throw new C23371f("Too few bytes available: missing " + m7011v2 + " bytes (out of " + i + ")", this);
                }
            }
            this.f64840i.m7130e(m7131d);
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr2 = this.f64898q;
            int i3 = this.f64899r;
            this.f64899r = i3 + 1;
            bArr2[i3] = this.f64897p;
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
            m7008y2();
        } else if (this.f64728f) {
            m7007z2(m7190b2(bigDecimal));
        } else {
            mo5842s1(m7190b2(bigDecimal));
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S */
    public void mo5870S(C23344a c23344a, byte[] bArr, int i, int i2) throws IOException, C23371f {
        mo6933i2("write a binary value");
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr2 = this.f64898q;
        int i3 = this.f64899r;
        this.f64899r = i3 + 1;
        bArr2[i3] = this.f64897p;
        int i4 = i2 + i;
        int i5 = this.f64900s - 6;
        int i6 = c23344a.f64554f >> 2;
        while (i <= i4 - 3) {
            if (this.f64899r > i5) {
                m7016q2();
            }
            int i7 = i + 1;
            int i8 = i7 + 1;
            int m7261h = c23344a.m7261h((((bArr[i] << 8) | (bArr[i7] & 255)) << 8) | (bArr[i8] & 255), this.f64898q, this.f64899r);
            this.f64899r = m7261h;
            int i9 = i6 - 1;
            int i10 = i9;
            if (i9 <= 0) {
                byte[] bArr3 = this.f64898q;
                int i11 = m7261h + 1;
                this.f64899r = i11;
                bArr3[m7261h] = (byte) 92;
                this.f64899r = i11 + 1;
                bArr3[i11] = (byte) 110;
                i10 = c23344a.f64554f >> 2;
            }
            i6 = i10;
            i = i8 + 1;
        }
        int i12 = i4 - i;
        if (i12 > 0) {
            if (this.f64899r > i5) {
                m7016q2();
            }
            int i13 = bArr[i] << 16;
            int i14 = i13;
            if (i12 == 2) {
                i14 = i13 | ((bArr[i + 1] & 255) << 8);
            }
            this.f64899r = c23344a.m7259j(i14, i12, this.f64898q, this.f64899r);
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr4 = this.f64898q;
        int i15 = this.f64899r;
        this.f64899r = i15 + 1;
        bArr4[i15] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S1 */
    public final void mo5869S1(AbstractC23384p abstractC23384p) throws IOException {
        mo6933i2("write a string");
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        int i2 = i + 1;
        this.f64899r = i2;
        bArr[i] = this.f64897p;
        int mo7098c = abstractC23384p.mo7098c(bArr, i2);
        if (mo7098c < 0) {
            m7010w2(abstractC23384p.mo7099b());
        } else {
            this.f64899r += mo7098c;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr2 = this.f64898q;
        int i3 = this.f64899r;
        this.f64899r = i3 + 1;
        bArr2[i3] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: T1 */
    public void mo5868T1(String str) throws IOException {
        mo6933i2("write a string");
        if (str == null) {
            m7008y2();
            return;
        }
        int length = str.length();
        if (length > this.f64901t) {
            m7018C2(str, true);
            return;
        }
        if (this.f64899r + length >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = this.f64897p;
        m7021A2(str, 0, length);
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr2 = this.f64898q;
        int i2 = this.f64899r;
        this.f64899r = i2 + 1;
        bArr2[i2] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: U0 */
    public void mo5867U0(BigInteger bigInteger) throws IOException {
        mo6933i2("write a number");
        if (bigInteger == null) {
            m7008y2();
        } else if (this.f64728f) {
            m7007z2(bigInteger.toString());
        } else {
            mo5842s1(bigInteger.toString());
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: V1 */
    public void mo5866V1(char[] cArr, int i, int i2) throws IOException {
        mo6933i2("write a string");
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i3 = this.f64899r;
        int i4 = i3 + 1;
        this.f64899r = i4;
        bArr[i3] = this.f64897p;
        if (i2 <= this.f64901t) {
            if (i4 + i2 > this.f64900s) {
                m7016q2();
            }
            m7019B2(cArr, i, i2);
        } else {
            m7017D2(cArr, i, i2);
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr2 = this.f64898q;
        int i5 = this.f64899r;
        this.f64899r = i5 + 1;
        bArr2[i5] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: W0 */
    public void mo5865W0(short s) throws IOException {
        mo6933i2("write a number");
        if (this.f64899r + 6 >= this.f64900s) {
            m7016q2();
        }
        if (!this.f64728f) {
            this.f64899r = C23401g.m7105i(s, this.f64898q, this.f64899r);
            return;
        }
        if (this.f64899r + 8 >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        int i2 = i + 1;
        this.f64899r = i2;
        bArr[i] = this.f64897p;
        int m7105i = C23401g.m7105i(s, bArr, i2);
        this.f64899r = m7105i;
        byte[] bArr2 = this.f64898q;
        this.f64899r = m7105i + 1;
        bArr2[m7105i] = this.f64897p;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a, p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f64898q != null && mo5887E(AbstractC23372g.EnumC23373a.AUTO_CLOSE_JSON_CONTENT)) {
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
        m7016q2();
        this.f64899r = 0;
        if (this.f64896o != null) {
            if (this.f64840i.f64780c || mo5887E(AbstractC23372g.EnumC23373a.AUTO_CLOSE_TARGET)) {
                this.f64896o.close();
            } else if (mo5887E(AbstractC23372g.EnumC23373a.FLUSH_PASSED_TO_STREAM)) {
                this.f64896o.flush();
            }
        }
        byte[] bArr = this.f64898q;
        if (bArr != null && this.f64904w) {
            this.f64898q = null;
            C23396b c23396b = this.f64840i;
            Objects.requireNonNull(c23396b);
            c23396b.m7133b(bArr, c23396b.f64783f);
            c23396b.f64783f = null;
            c23396b.f64781d.f64563a.set(1, bArr);
        }
        char[] cArr = this.f64902u;
        if (cArr != null) {
            this.f64902u = null;
            C23396b c23396b2 = this.f64840i;
            Objects.requireNonNull(c23396b2);
            c23396b2.m7132c(cArr, c23396b2.f64786i);
            c23396b2.f64786i = null;
            c23396b2.f64781d.f64564b.set(1, cArr);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Flushable
    public void flush() throws IOException {
        m7016q2();
        if (this.f64896o == null || !mo5887E(AbstractC23372g.EnumC23373a.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this.f64896o.flush();
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
            byte[] mo7094g = abstractC23384p.mo7094g();
            if (mo7094g.length <= 0) {
                return;
            }
            m7010w2(mo7094g);
            return;
        } else {
            i = 58;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i2 = this.f64899r;
        this.f64899r = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: k0 */
    public void mo5855k0(boolean z) throws IOException {
        mo6933i2("write a boolean value");
        if (this.f64899r + 5 >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = z ? f64895z : f64892A;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this.f64898q, this.f64899r, length);
        this.f64899r += length;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: m1 */
    public void mo5852m1(char c) throws IOException {
        if (this.f64899r + 3 >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        if (c <= 127) {
            int i = this.f64899r;
            this.f64899r = i + 1;
            bArr[i] = (byte) c;
        } else if (c >= 2048) {
            m7014s2(c, null, 0, 0);
        } else {
            int i2 = this.f64899r;
            int i3 = i2 + 1;
            this.f64899r = i3;
            bArr[i2] = (byte) ((c >> 6) | 192);
            this.f64899r = i3 + 1;
            bArr[i3] = (byte) ((c & '?') | 128);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: n1 */
    public void mo5850n1(AbstractC23384p abstractC23384p) throws IOException {
        int mo7096e = abstractC23384p.mo7096e(this.f64898q, this.f64899r);
        if (mo7096e < 0) {
            m7010w2(abstractC23384p.mo7094g());
        } else {
            this.f64899r += mo7096e;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: p0 */
    public final void mo5848p0() throws IOException {
        if (!this.f64729g.m7197d()) {
            StringBuilder m8728C = C22128a.m8728C("Current context not Array but ");
            m8728C.append(this.f64729g.m7194h());
            throw new C23371f(m8728C.toString(), this);
        }
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeEndArray(this, this.f64729g.f64689b + 1);
        } else {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr = this.f64898q;
            int i = this.f64899r;
            this.f64899r = i + 1;
            bArr[i] = (byte) 93;
        }
        this.f64729g = this.f64729g.m7069i();
    }

    /* renamed from: q2 */
    public final void m7016q2() throws IOException {
        int i = this.f64899r;
        if (i > 0) {
            this.f64899r = 0;
            this.f64896o.write(this.f64898q, 0, i);
        }
    }

    /* renamed from: r2 */
    public final int m7015r2(int i, int i2) throws IOException {
        int i3;
        byte[] bArr = this.f64898q;
        if (i < 55296 || i > 57343) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((i >> 6) & 63) | 128);
            bArr[i5] = (byte) ((i & 63) | 128);
            i3 = i5 + 1;
        } else {
            int i6 = i2 + 1;
            bArr[i2] = (byte) 92;
            int i7 = i6 + 1;
            bArr[i6] = (byte) 117;
            int i8 = i7 + 1;
            byte[] bArr2 = f64893x;
            bArr[i7] = bArr2[(i >> 12) & 15];
            int i9 = i8 + 1;
            bArr[i8] = bArr2[(i >> 8) & 15];
            int i10 = i9 + 1;
            bArr[i9] = bArr2[(i >> 4) & 15];
            bArr[i10] = bArr2[i & 15];
            i3 = i10 + 1;
        }
        return i3;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: s1 */
    public void mo5842s1(String str) throws IOException {
        char c;
        int i;
        int length = str.length();
        char[] cArr = this.f64902u;
        if (length <= cArr.length) {
            str.getChars(0, length, cArr, 0);
            mo5832z1(cArr, 0, length);
            return;
        }
        int length2 = cArr.length;
        if (length <= length2) {
            str.getChars(0, 0 + length, cArr, 0);
            mo5832z1(cArr, 0, length);
            return;
        }
        int i2 = this.f64900s;
        int min = Math.min(length2, (i2 >> 2) + (i2 >> 4));
        int i3 = 0;
        while (length > 0) {
            int min2 = Math.min(min, length);
            str.getChars(i3, i3 + min2, cArr, 0);
            if (this.f64899r + (min * 3) > this.f64900s) {
                m7016q2();
            }
            int i4 = min2;
            if (min2 > 1) {
                int i5 = min2 - 1;
                char c2 = cArr[i5];
                i4 = min2;
                if (c2 >= 55296) {
                    i4 = min2;
                    if (c2 <= 56319) {
                        i4 = i5;
                    }
                }
            }
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i7 < i4) {
                    do {
                        if (cArr[i7] > 127) {
                            int i8 = i7 + 1;
                            char c3 = cArr[i7];
                            if (c3 < 2048) {
                                byte[] bArr = this.f64898q;
                                int i9 = this.f64899r;
                                int i10 = i9 + 1;
                                this.f64899r = i10;
                                bArr[i9] = (byte) ((c3 >> 6) | 192);
                                this.f64899r = i10 + 1;
                                bArr[i10] = (byte) ((c3 & '?') | 128);
                                i6 = i8;
                            } else {
                                i6 = m7014s2(c3, cArr, i8, i4);
                            }
                        } else {
                            byte[] bArr2 = this.f64898q;
                            int i11 = this.f64899r;
                            this.f64899r = i11 + 1;
                            bArr2[i11] = (byte) c;
                            i = i7 + 1;
                            i7 = i;
                        }
                    } while (i < i4);
                }
            }
            i3 += i4;
            length -= i4;
        }
    }

    /* renamed from: s2 */
    public final int m7014s2(int i, char[] cArr, int i2, int i3) throws IOException {
        if (i < 55296 || i > 57343) {
            byte[] bArr = this.f64898q;
            int i4 = this.f64899r;
            int i5 = i4 + 1;
            this.f64899r = i5;
            bArr[i4] = (byte) ((i >> 12) | 224);
            int i6 = i5 + 1;
            this.f64899r = i6;
            bArr[i5] = (byte) (((i >> 6) & 63) | 128);
            this.f64899r = i6 + 1;
            bArr[i6] = (byte) ((i & 63) | 128);
            return i2;
        } else if (i2 >= i3 || cArr == null) {
            throw new C23371f(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", Integer.valueOf(i)), this);
        } else {
            char c = cArr[i2];
            if (c < 56320 || c > 57343) {
                StringBuilder m8728C = C22128a.m8728C("Incomplete surrogate pair: first char 0x");
                m8728C.append(Integer.toHexString(i));
                m8728C.append(", second 0x");
                m8728C.append(Integer.toHexString(c));
                throw new C23371f(m8728C.toString(), this);
            }
            int i7 = (c - 56320) + ((i - 55296) << 10) + 65536;
            if (this.f64899r + 4 > this.f64900s) {
                m7016q2();
            }
            byte[] bArr2 = this.f64898q;
            int i8 = this.f64899r;
            int i9 = i8 + 1;
            this.f64899r = i9;
            bArr2[i8] = (byte) ((i7 >> 18) | 240);
            int i10 = i9 + 1;
            this.f64899r = i10;
            bArr2[i9] = (byte) (((i7 >> 12) & 63) | 128);
            int i11 = i10 + 1;
            this.f64899r = i11;
            bArr2[i10] = (byte) (((i7 >> 6) & 63) | 128);
            this.f64899r = i11 + 1;
            bArr2[i11] = (byte) ((i7 & 63) | 128);
            return i2 + 1;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: t0 */
    public final void mo5840t0() throws IOException {
        if (!this.f64729g.m7196e()) {
            StringBuilder m8728C = C22128a.m8728C("Current context not Object but ");
            m8728C.append(this.f64729g.m7194h());
            throw new C23371f(m8728C.toString(), this);
        }
        AbstractC23383o abstractC23383o = this.f64640a;
        if (abstractC23383o != null) {
            abstractC23383o.writeEndObject(this, this.f64729g.f64689b + 1);
        } else {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr = this.f64898q;
            int i = this.f64899r;
            this.f64899r = i + 1;
            bArr[i] = (byte) 125;
        }
        this.f64729g = this.f64729g.m7069i();
    }

    /* renamed from: t2 */
    public final int m7013t2(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
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

    /* renamed from: u2 */
    public final int m7012u2(C23344a c23344a, InputStream inputStream, byte[] bArr) throws IOException, C23371f {
        int i;
        int i2;
        int i3 = this.f64900s - 6;
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
                i = m7013t2(inputStream, bArr, i5, i7, bArr.length);
                if (i < 3) {
                    break;
                }
                i9 = i - 3;
                i10 = 0;
            }
            if (this.f64899r > i3) {
                m7016q2();
            }
            int i11 = i10 + 1;
            byte b = bArr[i10];
            int i12 = i11 + 1;
            byte b2 = bArr[i11];
            int i13 = i12 + 1;
            byte b3 = bArr[i12];
            int i14 = i6 + 3;
            int m7261h = c23344a.m7261h((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this.f64898q, this.f64899r);
            this.f64899r = m7261h;
            int i15 = i8 - 1;
            i8 = i15;
            i4 = i9;
            i5 = i13;
            i7 = i;
            i6 = i14;
            if (i15 <= 0) {
                byte[] bArr2 = this.f64898q;
                int i16 = m7261h + 1;
                this.f64899r = i16;
                bArr2[m7261h] = (byte) 92;
                this.f64899r = i16 + 1;
                bArr2[i16] = (byte) 110;
                i8 = c23344a.f64554f >> 2;
                i4 = i9;
                i5 = i13;
                i7 = i;
                i6 = i14;
            }
        }
        int i17 = i6;
        if (i > 0) {
            if (this.f64899r > i3) {
                m7016q2();
            }
            int i18 = bArr[0] << 16;
            if (1 < i) {
                i18 |= (bArr[1] & 255) << 8;
                i2 = 2;
            } else {
                i2 = 1;
            }
            this.f64899r = c23344a.m7259j(i18, i2, this.f64898q, this.f64899r);
            i17 = i6 + i2;
        }
        return i17;
    }

    /* renamed from: v2 */
    public final int m7011v2(C23344a c23344a, InputStream inputStream, byte[] bArr, int i) throws IOException, C23371f {
        int i2;
        int i3;
        int i4;
        int i5 = this.f64900s - 6;
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
                i3 = m7013t2(inputStream, bArr, i9, i7, i8);
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i12 = 0;
                i13 = i3;
                i11 = i3 - 3;
            }
            if (this.f64899r > i5) {
                m7016q2();
            }
            int i14 = i12 + 1;
            byte b = bArr[i12];
            int i15 = i14 + 1;
            byte b2 = bArr[i14];
            int i16 = i15 + 1;
            byte b3 = bArr[i15];
            int i17 = i8 - 3;
            int m7261h = c23344a.m7261h((((b2 & 255) | (b << 8)) << 8) | (b3 & 255), this.f64898q, this.f64899r);
            this.f64899r = m7261h;
            int i18 = i10 - 1;
            i10 = i18;
            i6 = i11;
            i9 = i16;
            i7 = i13;
            i8 = i17;
            if (i18 <= 0) {
                byte[] bArr2 = this.f64898q;
                int i19 = m7261h + 1;
                this.f64899r = i19;
                bArr2[m7261h] = (byte) 92;
                this.f64899r = i19 + 1;
                bArr2[i19] = (byte) 110;
                i10 = c23344a.f64554f >> 2;
                i6 = i11;
                i9 = i16;
                i7 = i13;
                i8 = i17;
            }
        }
        int i20 = i8;
        if (i8 > 0) {
            int m7013t2 = m7013t2(inputStream, bArr, i2, i3, i8);
            i20 = i8;
            if (m7013t2 > 0) {
                if (this.f64899r > i5) {
                    m7016q2();
                }
                int i21 = bArr[0] << 16;
                if (1 < m7013t2) {
                    i21 |= (bArr[1] & 255) << 8;
                    i4 = 2;
                } else {
                    i4 = 1;
                }
                this.f64899r = c23344a.m7259j(i21, i4, this.f64898q, this.f64899r);
                i20 = i8 - i4;
            }
        }
        return i20;
    }

    /* renamed from: w2 */
    public final void m7010w2(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f64899r + length > this.f64900s) {
            m7016q2();
            if (length > 512) {
                this.f64896o.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this.f64898q, this.f64899r, length);
        this.f64899r += length;
    }

    /* renamed from: x2 */
    public final int m7009x2(int i, int i2) throws IOException {
        int i3;
        byte[] bArr = this.f64898q;
        int i4 = i2 + 1;
        bArr[i2] = (byte) 92;
        int i5 = i4 + 1;
        bArr[i4] = (byte) 117;
        if (i > 255) {
            int i6 = 255 & (i >> 8);
            int i7 = i5 + 1;
            byte[] bArr2 = f64893x;
            bArr[i5] = bArr2[i6 >> 4];
            i3 = i7 + 1;
            bArr[i7] = bArr2[i6 & 15];
            i &= 255;
        } else {
            int i8 = i5 + 1;
            bArr[i5] = (byte) 48;
            i3 = i8 + 1;
            bArr[i8] = (byte) 48;
        }
        int i9 = i3 + 1;
        byte[] bArr3 = f64893x;
        bArr[i3] = bArr3[i >> 4];
        bArr[i9] = bArr3[i & 15];
        return i9 + 1;
    }

    /* renamed from: y2 */
    public final void m7008y2() throws IOException {
        if (this.f64899r + 4 >= this.f64900s) {
            m7016q2();
        }
        System.arraycopy(f64894y, 0, this.f64898q, this.f64899r, 4);
        this.f64899r += 4;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z0 */
    public void mo5833z0(AbstractC23384p abstractC23384p) throws IOException {
        if (this.f64640a != null) {
            int m7061q = this.f64729g.m7061q(abstractC23384p.getValue());
            if (m7061q == 4) {
                throw new C23371f("Can not write a field name, expecting a value", this);
            }
            if (m7061q == 1) {
                this.f64640a.writeObjectEntrySeparator(this);
            } else {
                this.f64640a.beforeObjectEntries(this);
            }
            boolean z = !this.f64844m;
            if (z) {
                if (this.f64899r >= this.f64900s) {
                    m7016q2();
                }
                byte[] bArr = this.f64898q;
                int i = this.f64899r;
                this.f64899r = i + 1;
                bArr[i] = this.f64897p;
            }
            int mo7098c = abstractC23384p.mo7098c(this.f64898q, this.f64899r);
            if (mo7098c < 0) {
                m7010w2(abstractC23384p.mo7099b());
            } else {
                this.f64899r += mo7098c;
            }
            if (!z) {
                return;
            }
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr2 = this.f64898q;
            int i2 = this.f64899r;
            this.f64899r = i2 + 1;
            bArr2[i2] = this.f64897p;
            return;
        }
        int m7061q2 = this.f64729g.m7061q(abstractC23384p.getValue());
        if (m7061q2 == 4) {
            throw new C23371f("Can not write a field name, expecting a value", this);
        }
        if (m7061q2 == 1) {
            if (this.f64899r >= this.f64900s) {
                m7016q2();
            }
            byte[] bArr3 = this.f64898q;
            int i3 = this.f64899r;
            this.f64899r = i3 + 1;
            bArr3[i3] = (byte) 44;
        }
        if (this.f64844m) {
            int mo7098c2 = abstractC23384p.mo7098c(this.f64898q, this.f64899r);
            if (mo7098c2 < 0) {
                m7010w2(abstractC23384p.mo7099b());
                return;
            } else {
                this.f64899r += mo7098c2;
                return;
            }
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr4 = this.f64898q;
        int i4 = this.f64899r;
        int i5 = i4 + 1;
        this.f64899r = i5;
        bArr4[i4] = this.f64897p;
        int mo7098c3 = abstractC23384p.mo7098c(bArr4, i5);
        if (mo7098c3 < 0) {
            m7010w2(abstractC23384p.mo7099b());
        } else {
            this.f64899r += mo7098c3;
        }
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr5 = this.f64898q;
        int i6 = this.f64899r;
        this.f64899r = i6 + 1;
        bArr5[i6] = this.f64897p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
        if ((r6.f64899r + 3) < r6.f64900s) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
        m7016q2();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        r0 = r8 + 1;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
        if (r0 >= 2048) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
        r0 = r6.f64899r;
        r0 = r0 + 1;
        r6.f64899r = r0;
        r0[r0] = (byte) ((r0 >> 6) | 192);
        r6.f64899r = r0 + 1;
        r0[r0] = (byte) ((r0 & '?') | 128);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009e, code lost:
        r8 = m7014s2(r0, r7, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f7, code lost:
        r0 = r8 + 1;
        r0 = r7[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0105, code lost:
        if (r0 >= 2048) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0108, code lost:
        r0 = r6.f64898q;
        r0 = r6.f64899r;
        r0 = r0 + 1;
        r6.f64899r = r0;
        r0[r0] = (byte) ((r0 >> 6) | 192);
        r6.f64899r = r0 + 1;
        r0[r0] = (byte) ((r0 & '?') | 128);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0149, code lost:
        r8 = m7014s2(r0, r7, r0, r0);
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5832z1(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23413h.mo5832z1(char[], int, int):void");
    }

    /* renamed from: z2 */
    public final void m7007z2(String str) throws IOException {
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr = this.f64898q;
        int i = this.f64899r;
        this.f64899r = i + 1;
        bArr[i] = this.f64897p;
        mo5842s1(str);
        if (this.f64899r >= this.f64900s) {
            m7016q2();
        }
        byte[] bArr2 = this.f64898q;
        int i2 = this.f64899r;
        this.f64899r = i2 + 1;
        bArr2[i2] = this.f64897p;
    }
}
