package p193e.p1545k.p1546a.p1548b.p1550u;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23380l;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23362n;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23365p;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
import p193e.p1545k.p1546a.p1548b.p1553x.C23407b;
import p193e.p1545k.p1546a.p1548b.p1553x.C23409d;
/* renamed from: e.k.a.b.u.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/u/b.class */
public abstract class AbstractC23390b extends AbstractC23391c {

    /* renamed from: P */
    public static final C23357i<EnumC23385q> f64730P = AbstractC23376j.f64660b;

    /* renamed from: A */
    public boolean f64731A;

    /* renamed from: B */
    public C23348c f64732B;

    /* renamed from: C */
    public byte[] f64733C;

    /* renamed from: E */
    public int f64735E;

    /* renamed from: J */
    public long f64736J;

    /* renamed from: K */
    public double f64737K;

    /* renamed from: L */
    public BigInteger f64738L;

    /* renamed from: M */
    public BigDecimal f64739M;

    /* renamed from: N */
    public boolean f64740N;

    /* renamed from: O */
    public int f64741O;

    /* renamed from: m */
    public final C23396b f64742m;

    /* renamed from: n */
    public boolean f64743n;

    /* renamed from: o */
    public int f64744o;

    /* renamed from: p */
    public int f64745p;

    /* renamed from: q */
    public long f64746q;

    /* renamed from: s */
    public int f64748s;

    /* renamed from: t */
    public long f64749t;

    /* renamed from: v */
    public int f64751v;

    /* renamed from: w */
    public C23409d f64752w;

    /* renamed from: x */
    public EnumC23381m f64753x;

    /* renamed from: y */
    public final C23362n f64754y;

    /* renamed from: z */
    public char[] f64755z;

    /* renamed from: r */
    public int f64747r = 1;

    /* renamed from: u */
    public int f64750u = 1;

    /* renamed from: D */
    public int f64734D = 0;

    public AbstractC23390b(C23396b c23396b, int i) {
        super(i);
        this.f64742m = c23396b;
        this.f64754y = new C23362n(c23396b.f64781d);
        this.f64752w = new C23409d(null, (AbstractC23376j.EnumC23377a.STRICT_DUPLICATE_DETECTION.f64679b & i) != 0 ? new C23407b(this) : null, 0, 1, 0);
    }

    /* renamed from: e3 */
    public static int[] m7175e3(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: B0 */
    public long mo5830B0() throws IOException {
        int i = this.f64734D;
        if ((i & 2) == 0) {
            if (i == 0) {
                m7180Y2(2);
            }
            int i2 = this.f64734D;
            if ((i2 & 2) == 0) {
                if ((i2 & 1) != 0) {
                    this.f64736J = this.f64735E;
                } else if ((i2 & 4) != 0) {
                    if (AbstractC23391c.f64759g.compareTo(this.f64738L) > 0 || AbstractC23391c.f64760h.compareTo(this.f64738L) < 0) {
                        m7153L2();
                        throw null;
                    }
                    this.f64736J = this.f64738L.longValue();
                } else if ((i2 & 8) != 0) {
                    double d = this.f64737K;
                    if (d < -9.223372036854776E18d || d > 9.223372036854776E18d) {
                        m7153L2();
                        throw null;
                    }
                    this.f64736J = (long) d;
                } else if ((i2 & 16) == 0) {
                    C23365p.m7220a();
                    throw null;
                } else if (AbstractC23391c.f64761i.compareTo(this.f64739M) > 0 || AbstractC23391c.f64762j.compareTo(this.f64739M) < 0) {
                    m7153L2();
                    throw null;
                } else {
                    this.f64736J = this.f64739M.longValue();
                }
                this.f64734D |= 2;
            }
        }
        return this.f64736J;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: D0 */
    public AbstractC23376j.EnumC23378b mo5829D0() throws IOException {
        if (this.f64734D == 0) {
            m7180Y2(0);
        }
        if (this.f64765c != EnumC23381m.VALUE_NUMBER_INT) {
            return (this.f64734D & 16) != 0 ? AbstractC23376j.EnumC23378b.BIG_DECIMAL : AbstractC23376j.EnumC23378b.DOUBLE;
        }
        int i = this.f64734D;
        return (i & 1) != 0 ? AbstractC23376j.EnumC23378b.INT : (i & 2) != 0 ? AbstractC23376j.EnumC23378b.LONG : AbstractC23376j.EnumC23378b.BIG_INTEGER;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: E */
    public BigInteger mo5828E() throws IOException {
        int i = this.f64734D;
        if ((i & 4) == 0) {
            if (i == 0) {
                m7180Y2(4);
            }
            int i2 = this.f64734D;
            if ((i2 & 4) == 0) {
                if ((i2 & 16) != 0) {
                    this.f64738L = this.f64739M.toBigInteger();
                } else if ((i2 & 2) != 0) {
                    this.f64738L = BigInteger.valueOf(this.f64736J);
                } else if ((i2 & 1) != 0) {
                    this.f64738L = BigInteger.valueOf(this.f64735E);
                } else if ((i2 & 8) == 0) {
                    C23365p.m7220a();
                    throw null;
                } else {
                    this.f64738L = BigDecimal.valueOf(this.f64737K).toBigInteger();
                }
                this.f64734D |= 4;
            }
        }
        return this.f64738L;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: F0 */
    public Number mo5827F0() throws IOException {
        if (this.f64734D == 0) {
            m7180Y2(0);
        }
        if (this.f64765c != EnumC23381m.VALUE_NUMBER_INT) {
            int i = this.f64734D;
            if ((i & 16) != 0) {
                return this.f64739M;
            }
            if ((i & 8) != 0) {
                return Double.valueOf(this.f64737K);
            }
            C23365p.m7220a();
            throw null;
        }
        int i2 = this.f64734D;
        if ((i2 & 1) != 0) {
            return Integer.valueOf(this.f64735E);
        }
        if ((i2 & 2) != 0) {
            return Long.valueOf(this.f64736J);
        }
        if ((i2 & 4) != 0) {
            return this.f64738L;
        }
        C23365p.m7220a();
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: G0 */
    public Number mo7189G0() throws IOException {
        if (this.f64765c != EnumC23381m.VALUE_NUMBER_INT) {
            if (this.f64734D == 0) {
                m7180Y2(16);
            }
            int i = this.f64734D;
            if ((i & 16) != 0) {
                return this.f64739M;
            }
            if ((i & 8) != 0) {
                return Double.valueOf(this.f64737K);
            }
            C23365p.m7220a();
            throw null;
        }
        if (this.f64734D == 0) {
            m7180Y2(0);
        }
        int i2 = this.f64734D;
        if ((i2 & 1) != 0) {
            return Integer.valueOf(this.f64735E);
        }
        if ((i2 & 2) != 0) {
            return Long.valueOf(this.f64736J);
        }
        if ((i2 & 4) != 0) {
            return this.f64738L;
        }
        C23365p.m7220a();
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: K0 */
    public AbstractC23380l mo5823K0() {
        return this.f64752w;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: M1 */
    public boolean mo5821M1() {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            return true;
        }
        if (enumC23381m != EnumC23381m.FIELD_NAME) {
            return false;
        }
        return this.f64731A;
    }

    /* renamed from: O2 */
    public void m7188O2(int i, int i2) {
        int i3 = AbstractC23376j.EnumC23377a.STRICT_DUPLICATE_DETECTION.f64679b;
        if ((i2 & i3) == 0 || (i & i3) == 0) {
            return;
        }
        C23409d c23409d = this.f64752w;
        if (c23409d.f64846d == null) {
            c23409d.f64846d = new C23407b(this);
            this.f64752w = c23409d;
            return;
        }
        c23409d.f64846d = null;
        this.f64752w = c23409d;
    }

    /* renamed from: P2 */
    public abstract void mo6989P2() throws IOException;

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: Q */
    public String mo5818Q() throws IOException {
        C23409d c23409d;
        EnumC23381m enumC23381m = this.f64765c;
        return ((enumC23381m == EnumC23381m.START_OBJECT || enumC23381m == EnumC23381m.START_ARRAY) && (c23409d = this.f64752w.f64845c) != null) ? c23409d.f64848f : this.f64752w.f64848f;
    }

    /* renamed from: Q2 */
    public final int m7187Q2(C23344a c23344a, char c, int i) throws IOException {
        if (c == '\\') {
            char mo6985S2 = mo6985S2();
            if (mo6985S2 <= ' ' && i == 0) {
                return -1;
            }
            int m7264e = c23344a.m7264e(mo6985S2);
            if (m7264e < 0 && (m7264e != -2 || i < 2)) {
                throw m7174f3(c23344a, mo6985S2, i, null);
            }
            return m7264e;
        }
        throw m7174f3(c23344a, c, i, null);
    }

    /* renamed from: R2 */
    public final int m7186R2(C23344a c23344a, int i, int i2) throws IOException {
        if (i == 92) {
            char mo6985S2 = mo6985S2();
            if (mo6985S2 <= ' ' && i2 == 0) {
                return -1;
            }
            int m7263f = c23344a.m7263f(mo6985S2);
            if (m7263f < 0 && m7263f != -2) {
                throw m7174f3(c23344a, mo6985S2, i2, null);
            }
            return m7263f;
        }
        throw m7174f3(c23344a, i, i2, null);
    }

    /* renamed from: S2 */
    public abstract char mo6985S2() throws IOException;

    /* renamed from: T2 */
    public C23348c m7185T2() {
        C23348c c23348c = this.f64732B;
        if (c23348c == null) {
            this.f64732B = new C23348c((C23346a) null, 500);
        } else {
            c23348c.m7248l();
        }
        return this.f64732B;
    }

    /* renamed from: U2 */
    public Object m7184U2() {
        if (AbstractC23376j.EnumC23377a.INCLUDE_SOURCE_IN_LOCATION.m7199a(this.f64661a)) {
            return this.f64742m.f64778a;
        }
        return null;
    }

    /* renamed from: V2 */
    public void m7183V2(C23344a c23344a) throws IOException {
        throw new C23375i(this, c23344a.m7257l());
    }

    /* renamed from: W2 */
    public char m7182W2(char c) throws C23379k {
        if (m7203S1(AbstractC23376j.EnumC23377a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER)) {
            return c;
        }
        if (c == '\'' && m7203S1(AbstractC23376j.EnumC23377a.ALLOW_SINGLE_QUOTES)) {
            return c;
        }
        StringBuilder m8728C = C22128a.m8728C("Unrecognized character escape ");
        m8728C.append(AbstractC23391c.m7137y2(c));
        throw new C23375i(this, m8728C.toString());
    }

    /* renamed from: X2 */
    public int m7181X2() throws IOException {
        if (!this.f64743n) {
            if (this.f64765c != EnumC23381m.VALUE_NUMBER_INT || this.f64741O > 9) {
                m7180Y2(1);
                if ((this.f64734D & 1) == 0) {
                    m7176d3();
                }
                return this.f64735E;
            }
            int m7233g = this.f64754y.m7233g(this.f64740N);
            this.f64735E = m7233g;
            this.f64734D = 1;
            return m7233g;
        }
        throw new C23375i(this, "Internal error: _parseNumericValue called when parser instance closed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x017c, code lost:
        if (r0 < 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x018e A[Catch: NumberFormatException -> 0x01fb, TRY_ENTER, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x01fb, blocks: (B:40:0x0100, B:46:0x0130, B:47:0x0137, B:49:0x013c, B:58:0x0162, B:66:0x018e, B:75:0x01bb, B:76:0x01d2, B:80:0x01e7, B:82:0x01f3), top: B:103:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x019f  */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* renamed from: Y2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7180Y2(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b.m7180Y2(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (java.lang.Double.isInfinite(r0) != false) goto L10;
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: Z1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo5815Z1() {
        /*
            r3 = this;
            r0 = r3
            e.k.a.b.m r0 = r0.f64765c
            r4 = r0
            e.k.a.b.m r0 = p193e.p1545k.p1546a.p1548b.EnumC23381m.VALUE_NUMBER_FLOAT
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L3c
            r0 = r6
            r7 = r0
            r0 = r3
            int r0 = r0.f64734D
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L3c
            r0 = r3
            double r0 = r0.f64737K
            r8 = r0
            r0 = r8
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 != 0) goto L39
            r0 = r6
            r7 = r0
            r0 = r8
            boolean r0 = java.lang.Double.isInfinite(r0)
            if (r0 == 0) goto L3c
        L39:
            r0 = 1
            r7 = r0
        L3c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b.mo5815Z1():boolean");
    }

    /* renamed from: Z2 */
    public void mo6977Z2() throws IOException {
        this.f64754y.m7224p();
        char[] cArr = this.f64755z;
        if (cArr != null) {
            this.f64755z = null;
            C23396b c23396b = this.f64742m;
            Objects.requireNonNull(c23396b);
            c23396b.m7132c(cArr, c23396b.f64787j);
            c23396b.f64787j = null;
            c23396b.f64781d.f64564b.set(3, cArr);
        }
    }

    /* renamed from: a3 */
    public void m7179a3(int i, char c) throws C23375i {
        C23409d c23409d = this.f64752w;
        throw new C23375i(this, String.format("Unexpected close marker '%s': expected '%c' (for %s starting at %s)", Character.valueOf((char) i), Character.valueOf(c), c23409d.m7194h(), new C23374h(m7184U2(), -1L, c23409d.f64850h, c23409d.f64851i)));
    }

    /* renamed from: b3 */
    public void m7178b3(int i, String str) throws C23375i {
        if (!m7203S1(AbstractC23376j.EnumC23377a.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            StringBuilder m8728C = C22128a.m8728C("Illegal unquoted character (");
            m8728C.append(AbstractC23391c.m7137y2((char) i));
            m8728C.append("): has to be escaped using backslash to be included in ");
            m8728C.append(str);
            throw new C23375i(this, m8728C.toString());
        }
    }

    /* renamed from: c3 */
    public String m7177c3() throws IOException {
        return m7203S1(AbstractC23376j.EnumC23377a.ALLOW_NON_NUMERIC_NUMBERS) ? "(JSON String, Number (or 'NaN'/'INF'/'+INF'), Array, Object or token 'null', 'true' or 'false')" : "(JSON String, Number, Array, Object or token 'null', 'true' or 'false')";
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f64743n) {
            this.f64744o = Math.max(this.f64744o, this.f64745p);
            this.f64743n = true;
            try {
                mo6989P2();
            } finally {
                mo6977Z2();
            }
        }
    }

    /* renamed from: d3 */
    public void m7176d3() throws IOException {
        int i = this.f64734D;
        if ((i & 2) != 0) {
            long j = this.f64736J;
            int i2 = (int) j;
            if (i2 != j) {
                m7155K2(mo5817U0(), this.f64765c);
                throw null;
            }
            this.f64735E = i2;
        } else if ((i & 4) != 0) {
            if (AbstractC23391c.f64757e.compareTo(this.f64738L) > 0 || AbstractC23391c.f64758f.compareTo(this.f64738L) < 0) {
                m7156J2();
                throw null;
            }
            this.f64735E = this.f64738L.intValue();
        } else if ((i & 8) != 0) {
            double d = this.f64737K;
            if (d < -2.147483648E9d || d > 2.147483647E9d) {
                m7156J2();
                throw null;
            }
            this.f64735E = (int) d;
        } else if ((i & 16) == 0) {
            C23365p.m7220a();
            throw null;
        } else if (AbstractC23391c.f64763k.compareTo(this.f64739M) > 0 || AbstractC23391c.f64764l.compareTo(this.f64739M) < 0) {
            m7156J2();
            throw null;
        } else {
            this.f64735E = this.f64739M.intValue();
        }
        this.f64734D |= 1;
    }

    /* renamed from: f3 */
    public IllegalArgumentException m7174f3(C23344a c23344a, int i, int i2, String str) throws IllegalArgumentException {
        String str2;
        boolean z = false;
        if (i <= 32) {
            str2 = String.format("Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units", Integer.toHexString(i), Integer.valueOf(i2 + 1));
        } else {
            if (i == c23344a.f64553e) {
                z = true;
            }
            if (z) {
                StringBuilder m8728C = C22128a.m8728C("Unexpected padding character ('");
                m8728C.append(c23344a.f64553e);
                m8728C.append("') as character #");
                m8728C.append(i2 + 1);
                m8728C.append(" of 4-char base64 unit: padding only legal as 3rd or 4th character");
                str2 = m8728C.toString();
            } else if (!Character.isDefined(i) || Character.isISOControl(i)) {
                StringBuilder m8728C2 = C22128a.m8728C("Illegal character (code 0x");
                m8728C2.append(Integer.toHexString(i));
                m8728C2.append(") in base64 content");
                str2 = m8728C2.toString();
            } else {
                StringBuilder m8728C3 = C22128a.m8728C("Illegal character '");
                m8728C3.append((char) i);
                m8728C3.append("' (code 0x");
                m8728C3.append(Integer.toHexString(i));
                m8728C3.append(") in base64 content");
                str2 = m8728C3.toString();
            }
        }
        String str3 = str2;
        if (str != null) {
            str3 = C22128a.m8725C2(str2, ": ", str);
        }
        return new IllegalArgumentException(str3);
    }

    /* renamed from: g3 */
    public final EnumC23381m m7173g3(String str, double d) {
        C23362n c23362n = this.f64754y;
        c23362n.f64592b = null;
        c23362n.f64593c = -1;
        c23362n.f64594d = 0;
        c23362n.f64600j = str;
        c23362n.f64601k = null;
        if (c23362n.f64596f) {
            c23362n.m7236d();
        }
        c23362n.f64599i = 0;
        this.f64737K = d;
        this.f64734D = 8;
        return EnumC23381m.VALUE_NUMBER_FLOAT;
    }

    /* renamed from: h3 */
    public final EnumC23381m m7172h3(boolean z, int i) {
        this.f64740N = z;
        this.f64741O = i;
        this.f64734D = 0;
        return EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: k0 */
    public BigDecimal mo5808k0() throws IOException {
        int i = this.f64734D;
        if ((i & 16) == 0) {
            if (i == 0) {
                m7180Y2(16);
            }
            int i2 = this.f64734D;
            if ((i2 & 16) == 0) {
                if ((i2 & 8) != 0) {
                    String mo5817U0 = mo5817U0();
                    String str = C23400f.f64796a;
                    try {
                        this.f64739M = new BigDecimal(mo5817U0);
                    } catch (NumberFormatException e) {
                        throw C23400f.m7122a(mo5817U0);
                    }
                } else if ((i2 & 4) != 0) {
                    this.f64739M = new BigDecimal(this.f64738L);
                } else if ((i2 & 2) != 0) {
                    this.f64739M = BigDecimal.valueOf(this.f64736J);
                } else if ((i2 & 1) == 0) {
                    C23365p.m7220a();
                    throw null;
                } else {
                    this.f64739M = BigDecimal.valueOf(this.f64735E);
                }
                this.f64734D |= 16;
            }
        }
        return this.f64739M;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: n0 */
    public double mo5805n0() throws IOException {
        int i = this.f64734D;
        if ((i & 8) == 0) {
            if (i == 0) {
                m7180Y2(8);
            }
            int i2 = this.f64734D;
            if ((i2 & 8) == 0) {
                if ((i2 & 16) != 0) {
                    this.f64737K = this.f64739M.doubleValue();
                } else if ((i2 & 4) != 0) {
                    this.f64737K = this.f64738L.doubleValue();
                } else if ((i2 & 2) != 0) {
                    this.f64737K = this.f64736J;
                } else if ((i2 & 1) == 0) {
                    C23365p.m7220a();
                    throw null;
                } else {
                    this.f64737K = this.f64735E;
                }
                this.f64734D |= 8;
            }
        }
        return this.f64737K;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: q2 */
    public AbstractC23376j mo7171q2(int i, int i2) {
        int i3 = this.f64661a;
        int i4 = (i & i2) | ((i2 ^ (-1)) & i3);
        int i5 = i3 ^ i4;
        if (i5 != 0) {
            this.f64661a = i4;
            m7188O2(i4, i5);
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: s */
    public AbstractC23376j mo7170s(AbstractC23376j.EnumC23377a enumC23377a) {
        this.f64661a &= enumC23377a.f64679b ^ (-1);
        if (enumC23377a == AbstractC23376j.EnumC23377a.STRICT_DUPLICATE_DETECTION) {
            C23409d c23409d = this.f64752w;
            c23409d.f64846d = null;
            this.f64752w = c23409d;
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: t0 */
    public float mo5801t0() throws IOException {
        return (float) mo5805n0();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: t2 */
    public void mo7169t2(Object obj) {
        this.f64752w.f64849g = obj;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    @Deprecated
    /* renamed from: u2 */
    public AbstractC23376j mo7168u2(int i) {
        int i2 = this.f64661a ^ i;
        if (i2 != 0) {
            this.f64661a = i;
            m7188O2(i, i2);
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: z0 */
    public int mo5800z0() throws IOException {
        int i = this.f64734D;
        if ((i & 1) == 0) {
            if (i == 0) {
                return m7181X2();
            }
            if ((i & 1) == 0) {
                m7176d3();
            }
        }
        return this.f64735E;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c
    /* renamed from: z2 */
    public void mo5799z2() throws C23375i {
        if (!this.f64752w.m7195f()) {
            String str = this.f64752w.m7197d() ? "Array" : "Object";
            C23409d c23409d = this.f64752w;
            m7160F2(String.format(": expected close marker for %s (start marker at %s)", str, new C23374h(m7184U2(), -1L, c23409d.f64850h, c23409d.f64851i)), null);
            throw null;
        }
    }
}
