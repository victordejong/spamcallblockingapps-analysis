package p193e.p1545k.p1546a.p1548b.p1553x;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23362n;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b;
import p193e.p1545k.p1546a.p1548b.p1552w.C23394a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1554y.C23418b;
/* renamed from: e.k.a.b.x.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/g.class */
public class C23412g extends AbstractC23390b {

    /* renamed from: g0 */
    public static final int f64873g0 = AbstractC23376j.EnumC23377a.ALLOW_TRAILING_COMMA.f64679b;

    /* renamed from: h0 */
    public static final int f64874h0 = AbstractC23376j.EnumC23377a.ALLOW_NUMERIC_LEADING_ZEROS.f64679b;

    /* renamed from: i0 */
    public static final int f64875i0 = AbstractC23376j.EnumC23377a.ALLOW_NON_NUMERIC_NUMBERS.f64679b;

    /* renamed from: j0 */
    public static final int f64876j0 = AbstractC23376j.EnumC23377a.ALLOW_MISSING_VALUES.f64679b;

    /* renamed from: k0 */
    public static final int f64877k0 = AbstractC23376j.EnumC23377a.ALLOW_SINGLE_QUOTES.f64679b;

    /* renamed from: l0 */
    public static final int f64878l0 = AbstractC23376j.EnumC23377a.ALLOW_UNQUOTED_FIELD_NAMES.f64679b;

    /* renamed from: m0 */
    public static final int f64879m0 = AbstractC23376j.EnumC23377a.ALLOW_COMMENTS.f64679b;

    /* renamed from: n0 */
    public static final int f64880n0 = AbstractC23376j.EnumC23377a.ALLOW_YAML_COMMENTS.f64679b;

    /* renamed from: o0 */
    public static final int[] f64881o0 = C23394a.f64769c;

    /* renamed from: Q */
    public Reader f64882Q;

    /* renamed from: R */
    public char[] f64883R;

    /* renamed from: S */
    public boolean f64884S;

    /* renamed from: T */
    public AbstractC23382n f64885T;

    /* renamed from: U */
    public final C23418b f64886U;

    /* renamed from: V */
    public final int f64887V;

    /* renamed from: W */
    public boolean f64888W;

    /* renamed from: X */
    public long f64889X;

    /* renamed from: Y */
    public int f64890Y;

    /* renamed from: Z */
    public int f64891Z;

    public C23412g(C23396b c23396b, int i, Reader reader, AbstractC23382n abstractC23382n, C23418b c23418b) {
        super(c23396b, i);
        this.f64882Q = reader;
        c23396b.m7134a(c23396b.f64785h);
        char[] m7253b = c23396b.f64781d.m7253b(0, 0);
        c23396b.f64785h = m7253b;
        this.f64883R = m7253b;
        this.f64744o = 0;
        this.f64745p = 0;
        this.f64885T = abstractC23382n;
        this.f64886U = c23418b;
        this.f64887V = c23418b.f64958c;
        this.f64884S = true;
    }

    public C23412g(C23396b c23396b, int i, Reader reader, AbstractC23382n abstractC23382n, C23418b c23418b, char[] cArr, int i2, int i3, boolean z) {
        super(c23396b, i);
        this.f64882Q = null;
        this.f64883R = cArr;
        this.f64744o = i2;
        this.f64745p = i3;
        this.f64885T = abstractC23382n;
        this.f64886U = c23418b;
        this.f64887V = c23418b.f64958c;
        this.f64884S = z;
    }

    /* renamed from: A3 */
    public final EnumC23381m m7059A3() throws IOException {
        int i = this.f64744o;
        int i2 = i - 1;
        int i3 = this.f64745p;
        if (i >= i3) {
            return m7058B3(true, i2);
        }
        int i4 = i + 1;
        char c = this.f64883R[i];
        if (c > '9' || c < '0') {
            this.f64744o = i4;
            return m7035m3(c, true);
        } else if (c == '0') {
            return m7058B3(true, i2);
        } else {
            int i5 = 1;
            while (i4 < i3) {
                int i6 = i4 + 1;
                char c2 = this.f64883R[i4];
                if (c2 < '0' || c2 > '9') {
                    if (c2 == '.' || c2 == 'e' || c2 == 'E') {
                        this.f64744o = i6;
                        return m7025w3(c2, i2, i6, true, i5);
                    }
                    int i7 = i6 - 1;
                    this.f64744o = i7;
                    if (this.f64752w.m7195f()) {
                        m7041S3(c2);
                    }
                    this.f64754y.m7223q(this.f64883R, i2, i7 - i2);
                    return m7172h3(true, i5);
                }
                i5++;
                i4 = i6;
            }
            return m7058B3(true, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0333, code lost:
        if (r13 == '+') goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02cc, code lost:
        if (r15 == 'E') goto L97;
     */
    /* renamed from: B3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1548b.EnumC23381m m7058B3(boolean r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1173
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7058B3(boolean, int):e.k.a.b.m");
    }

    /* renamed from: C3 */
    public final EnumC23381m m7057C3(int i) throws IOException {
        int i2 = this.f64744o;
        int i3 = i2 - 1;
        int i4 = this.f64745p;
        if (i == 48) {
            return m7058B3(false, i3);
        }
        int i5 = 1;
        while (i2 < i4) {
            int i6 = i2 + 1;
            char c = this.f64883R[i2];
            if (c < '0' || c > '9') {
                if (c == '.' || c == 'e' || c == 'E') {
                    this.f64744o = i6;
                    return m7025w3(c, i3, i6, false, i5);
                }
                int i7 = i6 - 1;
                this.f64744o = i7;
                if (this.f64752w.m7195f()) {
                    m7041S3(c);
                }
                this.f64754y.m7223q(this.f64883R, i3, i7 - i3);
                return m7172h3(false, i5);
            }
            i5++;
            i2 = i6;
        }
        this.f64744o = i3;
        return m7058B3(false, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0270, code lost:
        r11 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: D3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m7056D3(p193e.p1545k.p1546a.p1548b.C23344a r7, java.io.OutputStream r8, byte[] r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7056D3(e.k.a.b.a, java.io.OutputStream, byte[]):int");
    }

    /* renamed from: E3 */
    public void m7055E3(String str) throws IOException {
        m7054F3(str, m7177c3());
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: F1 */
    public final String mo7001F1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_STRING) {
            return enumC23381m == EnumC23381m.FIELD_NAME ? mo5818Q() : super.mo6997I1(null);
        }
        if (this.f64888W) {
            this.f64888W = false;
            m7036l3();
        }
        return this.f64754y.m7232h();
    }

    /* renamed from: F3 */
    public void m7054F3(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                break;
            }
            char c = this.f64883R[this.f64744o];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this.f64744o++;
            sb.append(c);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        m7163D2("Unrecognized token '%s': was expecting %s", sb, str2);
        throw null;
    }

    /* renamed from: G3 */
    public final int m7053G3() throws IOException {
        char c;
        while (true) {
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                StringBuilder m8728C = C22128a.m8728C("Unexpected end-of-input within/between ");
                m8728C.append(this.f64752w.m7194h());
                m8728C.append(" entries");
                throw new C23375i(this, m8728C.toString());
            }
            char[] cArr = this.f64883R;
            int i = this.f64744o;
            int i2 = i + 1;
            this.f64744o = i2;
            c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    m7048L3();
                } else if (c != '#' || !m7043Q3()) {
                    break;
                }
            } else if (c >= ' ') {
                continue;
            } else if (c == '\n') {
                this.f64747r++;
                this.f64748s = i2;
            } else if (c == '\r') {
                m7052H3();
            } else if (c != '\t') {
                m7157I2(c);
                throw null;
            }
        }
        return c;
    }

    /* renamed from: H3 */
    public final void m7052H3() throws IOException {
        if (this.f64744o < this.f64745p || m7032p3()) {
            char[] cArr = this.f64883R;
            int i = this.f64744o;
            if (cArr[i] == '\n') {
                this.f64744o = i + 1;
            }
        }
        this.f64747r++;
        this.f64748s = this.f64744o;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: I */
    public byte[] mo5826I(C23344a c23344a) throws IOException {
        byte[] bArr;
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_EMBEDDED_OBJECT || (bArr = this.f64733C) == null) {
            if (enumC23381m != EnumC23381m.VALUE_STRING) {
                StringBuilder m8728C = C22128a.m8728C("Current token (");
                m8728C.append(this.f64765c);
                m8728C.append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
                throw new C23375i(this, m8728C.toString());
            }
            if (this.f64888W) {
                try {
                    this.f64733C = m7037k3(c23344a);
                    this.f64888W = false;
                } catch (IllegalArgumentException e) {
                    throw new C23375i(this, "Failed to decode VALUE_STRING as base64 (" + c23344a + "): " + e.getMessage());
                }
            } else if (this.f64733C == null) {
                C23348c m7185T2 = m7185T2();
                m7138x2(mo5817U0(), m7185T2, c23344a);
                this.f64733C = m7185T2.m7247q();
            }
            return this.f64733C;
        }
        return bArr;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: I1 */
    public final String mo6997I1(String str) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_STRING) {
            return enumC23381m == EnumC23381m.FIELD_NAME ? mo5818Q() : super.mo6997I1(str);
        }
        if (this.f64888W) {
            this.f64888W = false;
            m7036l3();
        }
        return this.f64754y.m7232h();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00af, code lost:
        if (r0 == '\t') goto L38;
     */
    /* renamed from: I3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7051I3() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7051I3():int");
    }

    /* renamed from: J3 */
    public final int m7050J3(boolean z) throws IOException {
        while (true) {
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                StringBuilder m8728C = C22128a.m8728C(" within/between ");
                m8728C.append(this.f64752w.m7194h());
                m8728C.append(" entries");
                m7160F2(m8728C.toString(), null);
                throw null;
            }
            char[] cArr = this.f64883R;
            int i = this.f64744o;
            int i2 = i + 1;
            this.f64744o = i2;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    m7048L3();
                } else if (c != '#' || !m7043Q3()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        m7158H2(c, "was expecting a colon to separate field name and value");
                        throw null;
                    }
                    z = true;
                }
            } else if (c >= ' ') {
                continue;
            } else if (c == '\n') {
                this.f64747r++;
                this.f64748s = i2;
            } else if (c == '\r') {
                m7052H3();
            } else if (c != '\t') {
                m7157I2(c);
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: K */
    public AbstractC23382n mo5824K() {
        return this.f64885T;
    }

    /* renamed from: K3 */
    public final int m7049K3(int i) throws IOException {
        if (i != 44) {
            StringBuilder m8728C = C22128a.m8728C("was expecting comma to separate ");
            m8728C.append(this.f64752w.m7194h());
            m8728C.append(" entries");
            m7158H2(i, m8728C.toString());
            throw null;
        }
        while (true) {
            int i2 = this.f64744o;
            if (i2 >= this.f64745p) {
                return m7053G3();
            }
            char[] cArr = this.f64883R;
            int i3 = i2 + 1;
            this.f64744o = i3;
            char c = cArr[i2];
            if (c > ' ') {
                if (c != '/' && c != '#') {
                    return c;
                }
                this.f64744o = i3 - 1;
                return m7053G3();
            } else if (c < ' ') {
                if (c == '\n') {
                    this.f64747r++;
                    this.f64748s = i3;
                } else if (c == '\r') {
                    m7052H3();
                } else if (c != '\t') {
                    m7157I2(c);
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: L0 */
    public C23357i<EnumC23385q> mo5822L0() {
        return AbstractC23390b.f64730P;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
        m7160F2(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
        throw null;
     */
    /* renamed from: L3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7048L3() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7048L3():void");
    }

    /* renamed from: M3 */
    public final void m7047M3() throws IOException {
        while (true) {
            if (this.f64744o < this.f64745p || m7032p3()) {
                char[] cArr = this.f64883R;
                int i = this.f64744o;
                int i2 = i + 1;
                this.f64744o = i2;
                char c = cArr[i];
                if (c < ' ') {
                    if (c == '\n') {
                        this.f64747r++;
                        this.f64748s = i2;
                        return;
                    } else if (c == '\r') {
                        m7052H3();
                        return;
                    } else if (c != '\t') {
                        m7157I2(c);
                        throw null;
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: N3 */
    public final void m7046N3() throws IOException {
        this.f64888W = false;
        int i = this.f64744o;
        int i2 = this.f64745p;
        char[] cArr = this.f64883R;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i >= i2) {
                this.f64744o = i;
                if (!m7032p3()) {
                    m7160F2(": was expecting closing quote for a string value", EnumC23381m.VALUE_STRING);
                    throw null;
                } else {
                    i3 = this.f64744o;
                    i4 = this.f64745p;
                }
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c <= '\\') {
                if (c == '\\') {
                    this.f64744o = i;
                    mo6985S2();
                    i = this.f64744o;
                    i2 = this.f64745p;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this.f64744o = i;
                        return;
                    } else if (c < ' ') {
                        this.f64744o = i;
                        m7178b3(c, "string value");
                    }
                }
            }
            i2 = i4;
        }
    }

    /* renamed from: O3 */
    public final int m7045O3() throws IOException {
        if (this.f64744o >= this.f64745p && !m7032p3()) {
            mo5799z2();
            return -1;
        }
        char[] cArr = this.f64883R;
        int i = this.f64744o;
        int i2 = i + 1;
        this.f64744o = i2;
        char c = cArr[i];
        if (c > ' ') {
            if (c != '/' && c != '#') {
                return c;
            }
            this.f64744o = i2 - 1;
            return m7044P3();
        }
        if (c != ' ') {
            if (c == '\n') {
                this.f64747r++;
                this.f64748s = i2;
            } else if (c == '\r') {
                m7052H3();
            } else if (c != '\t') {
                m7157I2(c);
                throw null;
            }
        }
        while (true) {
            int i3 = this.f64744o;
            if (i3 >= this.f64745p) {
                return m7044P3();
            }
            char[] cArr2 = this.f64883R;
            int i4 = i3 + 1;
            this.f64744o = i4;
            char c2 = cArr2[i3];
            if (c2 > ' ') {
                if (c2 != '/' && c2 != '#') {
                    return c2;
                }
                this.f64744o = i4 - 1;
                return m7044P3();
            } else if (c2 != ' ') {
                if (c2 == '\n') {
                    this.f64747r++;
                    this.f64748s = i4;
                } else if (c2 == '\r') {
                    m7052H3();
                } else if (c2 != '\t') {
                    m7157I2(c2);
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: P */
    public C23374h mo5819P() {
        int i = this.f64744o;
        int i2 = this.f64748s;
        return new C23374h(m7184U2(), -1L, this.f64744o + this.f64746q, this.f64747r, (i - i2) + 1);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: P2 */
    public void mo6989P2() throws IOException {
        if (this.f64882Q != null) {
            if (this.f64742m.f64780c || m7203S1(AbstractC23376j.EnumC23377a.AUTO_CLOSE_SOURCE)) {
                this.f64882Q.close();
            }
            this.f64882Q = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        return r0;
     */
    /* renamed from: P3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7044P3() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = r4
            int r0 = r0.f64744o
            r1 = r4
            int r1 = r1.f64745p
            if (r0 < r1) goto L18
            r0 = r4
            boolean r0 = r0.m7032p3()
            if (r0 != 0) goto L18
            r0 = r4
            r0.mo5799z2()
            r0 = -1
            return r0
        L18:
            r0 = r4
            char[] r0 = r0.f64883R
            r5 = r0
            r0 = r4
            int r0 = r0.f64744o
            r6 = r0
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r4
            r1 = r7
            r0.f64744o = r1
            r0 = r5
            r1 = r6
            char r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 32
            if (r0 <= r1) goto L54
            r0 = r6
            r1 = 47
            if (r0 != r1) goto L42
            r0 = r4
            r0.m7048L3()
            goto L0
        L42:
            r0 = r6
            r1 = 35
            if (r0 != r1) goto L52
            r0 = r4
            boolean r0 = r0.m7043Q3()
            if (r0 == 0) goto L52
            goto L0
        L52:
            r0 = r6
            return r0
        L54:
            r0 = r6
            r1 = 32
            if (r0 == r1) goto L0
            r0 = r6
            r1 = 10
            if (r0 != r1) goto L72
            r0 = r4
            r1 = r4
            int r1 = r1.f64747r
            r2 = 1
            int r1 = r1 + r2
            r0.f64747r = r1
            r0 = r4
            r1 = r7
            r0.f64748s = r1
            goto L0
        L72:
            r0 = r6
            r1 = 13
            if (r0 != r1) goto L7f
            r0 = r4
            r0.m7052H3()
            goto L0
        L7f:
            r0 = r6
            r1 = 9
            if (r0 != r1) goto L88
            goto L0
        L88:
            r0 = r4
            r1 = r6
            r0.m7157I2(r1)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7044P3():int");
    }

    /* renamed from: Q3 */
    public final boolean m7043Q3() throws IOException {
        if ((this.f64661a & f64880n0) == 0) {
            return false;
        }
        m7047M3();
        return true;
    }

    /* renamed from: R3 */
    public final void m7042R3() {
        int i = this.f64744o;
        this.f64749t = this.f64746q + i;
        this.f64750u = this.f64747r;
        this.f64751v = i - this.f64748s;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: S2 */
    public char mo6985S2() throws IOException {
        if (this.f64744o >= this.f64745p && !m7032p3()) {
            m7160F2(" in character escape sequence", EnumC23381m.VALUE_STRING);
            throw null;
        }
        char[] cArr = this.f64883R;
        int i = this.f64744o;
        this.f64744o = i + 1;
        char c = cArr[i];
        char c2 = c;
        if (c != '\"') {
            c2 = c;
            if (c != '/') {
                c2 = c;
                if (c != '\\') {
                    if (c != 'b') {
                        if (c == 'f') {
                            return '\f';
                        }
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c == 'r') {
                            return '\r';
                        }
                        if (c == 't') {
                            return '\t';
                        }
                        if (c != 'u') {
                            m7182W2(c);
                            return c;
                        }
                        int i2 = 0;
                        for (int i3 = 0; i3 < 4; i3++) {
                            if (this.f64744o >= this.f64745p && !m7032p3()) {
                                m7160F2(" in character escape sequence", EnumC23381m.VALUE_STRING);
                                throw null;
                            }
                            char[] cArr2 = this.f64883R;
                            int i4 = this.f64744o;
                            this.f64744o = i4 + 1;
                            char c3 = cArr2[i4];
                            int i5 = C23394a.f64775i[c3 & 255];
                            if (i5 < 0) {
                                m7158H2(c3, "expected a hex-digit for character escape sequence");
                                throw null;
                            }
                            i2 = (i2 << 4) | i5;
                        }
                        return (char) i2;
                    }
                    c2 = '\b';
                }
            }
        }
        return c2;
    }

    /* renamed from: S3 */
    public final void m7041S3(int i) throws IOException {
        int i2 = this.f64744o + 1;
        this.f64744o = i2;
        if (i != 9) {
            if (i == 10) {
                this.f64747r++;
                this.f64748s = i2;
            } else if (i == 13) {
                m7052H3();
            } else if (i == 32) {
            } else {
                m7158H2(i, "Expected space separating root-level values");
                throw null;
            }
        }
    }

    /* renamed from: T3 */
    public char m7040T3(String str, EnumC23381m enumC23381m) throws IOException {
        if (this.f64744o >= this.f64745p && !m7032p3()) {
            m7160F2(str, enumC23381m);
            throw null;
        }
        char[] cArr = this.f64883R;
        int i = this.f64744o;
        this.f64744o = i + 1;
        return cArr[i];
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: U0 */
    public final String mo5817U0() throws IOException {
        String str;
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            if (this.f64888W) {
                this.f64888W = false;
                m7036l3();
            }
            return this.f64754y.m7232h();
        }
        if (enumC23381m == null) {
            str = null;
        } else {
            int i = enumC23381m.f64707d;
            str = i != 5 ? (i == 6 || i == 7 || i == 8) ? this.f64754y.m7232h() : enumC23381m.f64704a : this.f64752w.f64848f;
        }
        return str;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: W0 */
    public final char[] mo5816W0() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i != 5) {
                if (i != 6) {
                    if (i != 7 && i != 8) {
                        return enumC23381m.f64705b;
                    }
                } else if (this.f64888W) {
                    this.f64888W = false;
                    m7036l3();
                }
                return this.f64754y.m7226n();
            }
            if (!this.f64731A) {
                String str = this.f64752w.f64848f;
                int length = str.length();
                char[] cArr = this.f64755z;
                if (cArr == null) {
                    C23396b c23396b = this.f64742m;
                    c23396b.m7134a(c23396b.f64787j);
                    char[] m7253b = c23396b.f64781d.m7253b(3, length);
                    c23396b.f64787j = m7253b;
                    this.f64755z = m7253b;
                } else if (cArr.length < length) {
                    this.f64755z = new char[length];
                }
                str.getChars(0, length, this.f64755z, 0);
                this.f64731A = true;
            }
            return this.f64755z;
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: Z2 */
    public void mo6977Z2() throws IOException {
        char[] cArr;
        C23418b c23418b;
        super.mo6977Z2();
        C23418b c23418b2 = this.f64886U;
        if ((!c23418b2.f64967l) && (c23418b = c23418b2.f64956a) != null && c23418b2.f64960e) {
            C23418b.C23420b c23420b = new C23418b.C23420b(c23418b2);
            int i = c23420b.f64972a;
            C23418b.C23420b c23420b2 = c23418b.f64957b.get();
            if (i != c23420b2.f64972a) {
                if (i > 12000) {
                    c23420b = new C23418b.C23420b(0, 0, new String[64], new C23418b.C23419a[32]);
                }
                c23418b.f64957b.compareAndSet(c23420b2, c23420b);
            }
            c23418b2.f64967l = true;
        }
        if (!this.f64884S || (cArr = this.f64883R) == null) {
            return;
        }
        this.f64883R = null;
        C23396b c23396b = this.f64742m;
        Objects.requireNonNull(c23396b);
        c23396b.m7132c(cArr, c23396b.f64785h);
        c23396b.f64785h = null;
        c23396b.f64781d.f64564b.set(0, cArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        if (r0 == 125) goto L25;
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: b2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5813b2() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.mo5813b2():java.lang.String");
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: h2 */
    public final String mo6968h2() throws IOException {
        String str = null;
        if (this.f64765c != EnumC23381m.FIELD_NAME) {
            if (mo5811i2() == EnumC23381m.VALUE_STRING) {
                str = mo5817U0();
            }
            return str;
        }
        this.f64731A = false;
        EnumC23381m enumC23381m = this.f64753x;
        this.f64753x = null;
        this.f64765c = enumC23381m;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            if (this.f64888W) {
                this.f64888W = false;
                m7036l3();
            }
            return this.f64754y.m7232h();
        } else if (enumC23381m == EnumC23381m.START_ARRAY) {
            this.f64752w = this.f64752w.m7076j(this.f64750u, this.f64751v);
            return null;
        } else if (enumC23381m != EnumC23381m.START_OBJECT) {
            return null;
        } else {
            this.f64752w = this.f64752w.m7075k(this.f64750u, this.f64751v);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
        if (r0 == 125) goto L25;
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: i2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1548b.EnumC23381m mo5811i2() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.mo5811i2():e.k.a.b.m");
    }

    /* renamed from: i3 */
    public final void m7039i3(String str, int i, int i2) throws IOException {
        if (!Character.isJavaIdentifierPart((char) i2)) {
            return;
        }
        m7055E3(str.substring(0, i));
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: j1 */
    public final int mo5810j1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i == 5) {
                return this.f64752w.f64848f.length();
            }
            if (i != 6) {
                if (i != 7 && i != 8) {
                    return enumC23381m.f64705b.length;
                }
            } else if (this.f64888W) {
                this.f64888W = false;
                m7036l3();
            }
            return this.f64754y.m7222r();
        }
        return 0;
    }

    /* renamed from: j3 */
    public final void m7038j3(int i) throws C23375i {
        if (i == 93) {
            m7042R3();
            if (!this.f64752w.m7197d()) {
                m7179a3(i, '}');
                throw null;
            } else {
                this.f64752w = this.f64752w.m7077i();
                this.f64765c = EnumC23381m.END_ARRAY;
            }
        }
        if (i == 125) {
            m7042R3();
            if (!this.f64752w.m7196e()) {
                m7179a3(i, ']');
                throw null;
            }
            this.f64752w = this.f64752w.m7077i();
            this.f64765c = EnumC23381m.END_OBJECT;
        }
    }

    /* renamed from: k3 */
    public byte[] m7037k3(C23344a c23344a) throws IOException {
        C23348c m7185T2 = m7185T2();
        while (true) {
            if (this.f64744o >= this.f64745p) {
                m7031q3();
            }
            char[] cArr = this.f64883R;
            int i = this.f64744o;
            this.f64744o = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                int m7264e = c23344a.m7264e(c);
                int i2 = m7264e;
                if (m7264e < 0) {
                    if (c == '\"') {
                        return m7185T2.m7247q();
                    }
                    int m7187Q2 = m7187Q2(c23344a, c, 0);
                    i2 = m7187Q2;
                    if (m7187Q2 < 0) {
                        continue;
                    }
                }
                if (this.f64744o >= this.f64745p) {
                    m7031q3();
                }
                char[] cArr2 = this.f64883R;
                int i3 = this.f64744o;
                this.f64744o = i3 + 1;
                char c2 = cArr2[i3];
                int m7264e2 = c23344a.m7264e(c2);
                int i4 = m7264e2;
                if (m7264e2 < 0) {
                    i4 = m7187Q2(c23344a, c2, 1);
                }
                int i5 = (i2 << 6) | i4;
                if (this.f64744o >= this.f64745p) {
                    m7031q3();
                }
                char[] cArr3 = this.f64883R;
                int i6 = this.f64744o;
                this.f64744o = i6 + 1;
                char c3 = cArr3[i6];
                int m7264e3 = c23344a.m7264e(c3);
                int i7 = m7264e3;
                if (m7264e3 < 0) {
                    int i8 = m7264e3;
                    if (m7264e3 != -2) {
                        if (c3 == '\"') {
                            m7185T2.m7251d(i5 >> 4);
                            if (!c23344a.f64555g) {
                                return m7185T2.m7247q();
                            }
                            this.f64744o--;
                            m7183V2(c23344a);
                            throw null;
                        }
                        i8 = m7187Q2(c23344a, c3, 2);
                    }
                    i7 = i8;
                    if (i8 == -2) {
                        if (this.f64744o >= this.f64745p) {
                            m7031q3();
                        }
                        char[] cArr4 = this.f64883R;
                        int i9 = this.f64744o;
                        this.f64744o = i9 + 1;
                        char c4 = cArr4[i9];
                        if (!c23344a.m7256m(c4) && m7187Q2(c23344a, c4, 3) != -2) {
                            StringBuilder m8728C = C22128a.m8728C("expected padding character '");
                            m8728C.append(c23344a.f64553e);
                            m8728C.append("'");
                            throw m7174f3(c23344a, c4, 3, m8728C.toString());
                        }
                        m7185T2.m7251d(i5 >> 4);
                    }
                }
                int i10 = (i5 << 6) | i7;
                if (this.f64744o >= this.f64745p) {
                    m7031q3();
                }
                char[] cArr5 = this.f64883R;
                int i11 = this.f64744o;
                this.f64744o = i11 + 1;
                char c5 = cArr5[i11];
                int m7264e4 = c23344a.m7264e(c5);
                int i12 = m7264e4;
                if (m7264e4 < 0) {
                    int i13 = m7264e4;
                    if (m7264e4 != -2) {
                        if (c5 == '\"') {
                            m7185T2.m7249k(i10 >> 2);
                            if (!c23344a.f64555g) {
                                return m7185T2.m7247q();
                            }
                            this.f64744o--;
                            m7183V2(c23344a);
                            throw null;
                        }
                        i13 = m7187Q2(c23344a, c5, 3);
                    }
                    i12 = i13;
                    if (i13 == -2) {
                        m7185T2.m7249k(i10 >> 2);
                    }
                }
                m7185T2.m7250j((i10 << 6) | i12);
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: l1 */
    public final int mo5807l1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i != 6) {
                if (i != 7 && i != 8) {
                    return 0;
                }
            } else if (this.f64888W) {
                this.f64888W = false;
                m7036l3();
            }
            return this.f64754y.m7225o();
        }
        return 0;
    }

    /* renamed from: l3 */
    public final void m7036l3() throws IOException {
        int i = this.f64744o;
        int i2 = this.f64745p;
        int i3 = i;
        if (i < i2) {
            int[] iArr = f64881o0;
            int length = iArr.length;
            while (true) {
                char[] cArr = this.f64883R;
                char c = cArr[i];
                if (c >= length || iArr[c] == 0) {
                    i3 = i + 1;
                    i = i3;
                    if (i3 >= i2) {
                        break;
                    }
                } else {
                    i3 = i;
                    if (c == '\"') {
                        C23362n c23362n = this.f64754y;
                        int i4 = this.f64744o;
                        c23362n.m7223q(cArr, i4, i - i4);
                        this.f64744o = i + 1;
                        return;
                    }
                }
            }
        }
        C23362n c23362n2 = this.f64754y;
        char[] cArr2 = this.f64883R;
        int i5 = this.f64744o;
        int i6 = i3 - i5;
        c23362n2.f64592b = null;
        c23362n2.f64593c = -1;
        c23362n2.f64594d = 0;
        c23362n2.f64600j = null;
        c23362n2.f64601k = null;
        if (c23362n2.f64596f) {
            c23362n2.m7236d();
        } else if (c23362n2.f64598h == null) {
            c23362n2.f64598h = c23362n2.m7237c(i6);
        }
        c23362n2.f64597g = 0;
        c23362n2.f64599i = 0;
        c23362n2.m7238b(cArr2, i5, i6);
        this.f64744o = i3;
        char[] m7227m = this.f64754y.m7227m();
        int i7 = this.f64754y.f64599i;
        int[] iArr2 = f64881o0;
        int length2 = iArr2.length;
        while (true) {
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                m7160F2(": was expecting closing quote for a string value", EnumC23381m.VALUE_STRING);
                throw null;
            }
            char[] cArr3 = this.f64883R;
            int i8 = this.f64744o;
            this.f64744o = i8 + 1;
            char c2 = cArr3[i8];
            char c3 = c2;
            if (c2 < length2) {
                c3 = c2;
                if (iArr2[c2] != 0) {
                    if (c2 == '\"') {
                        this.f64754y.f64599i = i7;
                        return;
                    } else if (c2 == '\\') {
                        c3 = mo6985S2();
                    } else {
                        c3 = c2;
                        if (c2 < ' ') {
                            m7178b3(c2, "string value");
                            c3 = c2;
                        }
                    }
                }
            }
            char[] cArr4 = m7227m;
            int i9 = i7;
            if (i7 >= m7227m.length) {
                cArr4 = this.f64754y.m7228l();
                i9 = 0;
            }
            cArr4[i9] = c3;
            i7 = i9 + 1;
            m7227m = cArr4;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: m1 */
    public C23374h mo5806m1() {
        if (this.f64765c == EnumC23381m.FIELD_NAME) {
            return new C23374h(m7184U2(), -1L, (this.f64889X - 1) + this.f64746q, this.f64890Y, this.f64891Z);
        }
        return new C23374h(m7184U2(), -1L, this.f64749t - 1, this.f64750u, this.f64751v);
    }

    /* renamed from: m3 */
    public EnumC23381m m7035m3(int i, boolean z) throws IOException {
        char c = i;
        if (i == 73) {
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                m7159G2(EnumC23381m.VALUE_NUMBER_INT);
                throw null;
            }
            char[] cArr = this.f64883R;
            int i2 = this.f64744o;
            this.f64744o = i2 + 1;
            char c2 = cArr[i2];
            boolean z2 = true;
            if (c2 == 'N') {
                String str = z ? "-INF" : "+INF";
                m7028t3(str, 3);
                if ((this.f64661a & f64875i0) == 0) {
                    throw new C23375i(this, C22128a.m8725C2("Non-standard token '", str, "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"));
                }
                boolean z3 = z2;
                if (!z) {
                    z3 = true;
                }
                return m7173g3(str, z3 ? 1.0d : 0.0d);
            }
            c = c2;
            if (c2 == 'n') {
                String str2 = z ? "-Infinity" : "+Infinity";
                m7028t3(str2, 3);
                if ((this.f64661a & f64875i0) == 0) {
                    throw new C23375i(this, C22128a.m8725C2("Non-standard token '", str2, "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"));
                }
                boolean z4 = z2;
                if (!z) {
                    z4 = true;
                }
                return m7173g3(str2, z4 ? 1.0d : 0.0d);
            }
        }
        m7151N2(c, "expected digit (0-9) to follow minus sign, for valid numeric value");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x024f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0240 A[SYNTHETIC] */
    /* renamed from: n3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m7034n3(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7034n3(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
        if (r6 != 44) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
        if (r5.f64752w.m7197d() == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
        if (r5.f64752w.m7195f() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
        if ((r5.f64661a & p193e.p1545k.p1546a.p1548b.p1553x.C23412g.f64876j0) == 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
        r5.f64744o--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008e, code lost:
        return p193e.p1545k.p1546a.p1548b.EnumC23381m.VALUE_NULL;
     */
    /* renamed from: o3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1548b.EnumC23381m m7033o3(int r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7033o3(int):e.k.a.b.m");
    }

    /* renamed from: p3 */
    public boolean m7032p3() throws IOException {
        Reader reader = this.f64882Q;
        if (reader != null) {
            char[] cArr = this.f64883R;
            int read = reader.read(cArr, 0, cArr.length);
            if (read <= 0) {
                mo6989P2();
                if (read != 0) {
                    return false;
                }
                StringBuilder m8728C = C22128a.m8728C("Reader returned 0 characters when trying to read ");
                m8728C.append(this.f64745p);
                throw new IOException(m8728C.toString());
            }
            int i = this.f64745p;
            long j = i;
            this.f64746q += j;
            this.f64748s -= i;
            this.f64889X -= j;
            this.f64744o = 0;
            this.f64745p = read;
            return true;
        }
        return false;
    }

    /* renamed from: q3 */
    public void m7031q3() throws IOException {
        if (m7032p3()) {
            return;
        }
        m7161E2();
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: r2 */
    public int mo5802r2(C23344a c23344a, OutputStream outputStream) throws IOException {
        if (!this.f64888W || this.f64765c != EnumC23381m.VALUE_STRING) {
            byte[] mo5826I = mo5826I(c23344a);
            outputStream.write(mo5826I);
            return mo5826I.length;
        }
        byte[] m7131d = this.f64742m.m7131d();
        try {
            return m7056D3(c23344a, outputStream, m7131d);
        } finally {
            this.f64742m.m7130e(m7131d);
        }
    }

    /* renamed from: r3 */
    public final void m7030r3() throws IOException {
        int i;
        char c;
        int i2 = this.f64744o;
        if (i2 + 4 < this.f64745p) {
            char[] cArr = this.f64883R;
            if (cArr[i2] == 'a') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 's') {
                        int i5 = i4 + 1;
                        if (cArr[i5] == 'e' && ((c = cArr[(i = i5 + 1)]) < '0' || c == ']' || c == '}')) {
                            this.f64744o = i;
                            return;
                        }
                    }
                }
            }
        }
        m7028t3("false", 1);
    }

    /* renamed from: s3 */
    public final void m7029s3() throws IOException {
        int i;
        char c;
        int i2 = this.f64744o;
        if (i2 + 3 < this.f64745p) {
            char[] cArr = this.f64883R;
            if (cArr[i2] == 'u') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'l') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'l' && ((c = cArr[(i = i4 + 1)]) < '0' || c == ']' || c == '}')) {
                        this.f64744o = i;
                        return;
                    }
                }
            }
        }
        m7028t3(AnalyticsConstants.NULL, 1);
    }

    /* renamed from: t3 */
    public final void m7028t3(String str, int i) throws IOException {
        int i2;
        int i3;
        char c;
        int length = str.length();
        int i4 = i;
        if (this.f64744o + length < this.f64745p) {
            while (this.f64883R[this.f64744o] == str.charAt(i4)) {
                int i5 = this.f64744o + 1;
                this.f64744o = i5;
                int i6 = i4 + 1;
                i4 = i6;
                if (i6 >= length) {
                    char c2 = this.f64883R[i5];
                    if (c2 < '0' || c2 == ']' || c2 == '}') {
                        return;
                    }
                    m7039i3(str, i6, c2);
                    return;
                }
            }
            m7055E3(str.substring(0, i4));
            throw null;
        }
        int length2 = str.length();
        do {
            if ((this.f64744o >= this.f64745p && !m7032p3()) || this.f64883R[this.f64744o] != str.charAt(i)) {
                m7055E3(str.substring(0, i));
                throw null;
            }
            i2 = this.f64744o + 1;
            this.f64744o = i2;
            i3 = i + 1;
            i = i3;
        } while (i3 < length2);
        if ((i2 >= this.f64745p && !m7032p3()) || (c = this.f64883R[this.f64744o]) < '0' || c == ']' || c == '}') {
            return;
        }
        m7039i3(str, i3, c);
    }

    /* renamed from: u3 */
    public final void m7027u3() throws IOException {
        int i;
        char c;
        int i2 = this.f64744o;
        if (i2 + 3 < this.f64745p) {
            char[] cArr = this.f64883R;
            if (cArr[i2] == 'r') {
                int i3 = i2 + 1;
                if (cArr[i3] == 'u') {
                    int i4 = i3 + 1;
                    if (cArr[i4] == 'e' && ((c = cArr[(i = i4 + 1)]) < '0' || c == ']' || c == '}')) {
                        this.f64744o = i;
                        return;
                    }
                }
            }
        }
        m7028t3("true", 1);
    }

    /* renamed from: v3 */
    public final EnumC23381m m7026v3() {
        this.f64731A = false;
        EnumC23381m enumC23381m = this.f64753x;
        this.f64753x = null;
        if (enumC23381m == EnumC23381m.START_ARRAY) {
            this.f64752w = this.f64752w.m7076j(this.f64750u, this.f64751v);
        } else if (enumC23381m == EnumC23381m.START_OBJECT) {
            this.f64752w = this.f64752w.m7075k(this.f64750u, this.f64751v);
        }
        this.f64765c = enumC23381m;
        return enumC23381m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
        if (r13 == 69) goto L23;
     */
    /* renamed from: w3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1548b.EnumC23381m m7025w3(int r7, int r8, int r9, boolean r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23412g.m7025w3(int, int, int, boolean, int):e.k.a.b.m");
    }

    /* renamed from: x3 */
    public final EnumC23381m m7024x3() throws IOException {
        if (!m7203S1(EnumC23410e.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.f64866c)) {
            return m7033o3(46);
        }
        int i = this.f64744o;
        return m7025w3(46, i - 1, i, false, 0);
    }

    /* renamed from: y3 */
    public final String m7023y3() throws IOException {
        int i = this.f64744o;
        int i2 = this.f64887V;
        int[] iArr = f64881o0;
        while (true) {
            if (i >= this.f64745p) {
                break;
            }
            char[] cArr = this.f64883R;
            char c = cArr[i];
            if (c >= iArr.length || iArr[c] == 0) {
                i2 = (i2 * 33) + c;
                i++;
            } else if (c == '\"') {
                int i3 = this.f64744o;
                this.f64744o = i + 1;
                return this.f64886U.m6902d(cArr, i3, i - i3, i2);
            }
        }
        int i4 = this.f64744o;
        this.f64744o = i;
        return m7022z3(i4, i2, 34);
    }

    /* renamed from: z3 */
    public final String m7022z3(int i, int i2, int i3) throws IOException {
        this.f64754y.m7223q(this.f64883R, i, this.f64744o - i);
        char[] m7227m = this.f64754y.m7227m();
        int i4 = this.f64754y.f64599i;
        while (true) {
            int i5 = i4;
            if (this.f64744o >= this.f64745p && !m7032p3()) {
                m7160F2(" in field name", EnumC23381m.FIELD_NAME);
                throw null;
            }
            char[] cArr = this.f64883R;
            int i6 = this.f64744o;
            this.f64744o = i6 + 1;
            char c = cArr[i6];
            char c2 = c;
            if (c <= '\\') {
                if (c == '\\') {
                    c2 = mo6985S2();
                } else {
                    c2 = c;
                    if (c <= i3) {
                        if (c == i3) {
                            C23362n c23362n = this.f64754y;
                            c23362n.f64599i = i5;
                            return this.f64886U.m6902d(c23362n.m7226n(), c23362n.m7225o(), c23362n.m7222r(), i2);
                        }
                        c2 = c;
                        if (c < ' ') {
                            m7178b3(c, AnalyticsConstants.NAME);
                            c2 = c;
                        }
                    }
                }
            }
            i2 = (i2 * 33) + c2;
            int i7 = i5 + 1;
            m7227m[i5] = c2;
            if (i7 >= m7227m.length) {
                m7227m = this.f64754y.m7228l();
                i4 = 0;
            } else {
                i4 = i7;
            }
        }
    }
}
