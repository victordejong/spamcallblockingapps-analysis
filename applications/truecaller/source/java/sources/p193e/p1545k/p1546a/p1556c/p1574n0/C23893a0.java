package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23380l;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.AbstractC23388t;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23365p;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c;
import p193e.p1545k.p1546a.p1548b.p1553x.C23411f;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
/* renamed from: e.k.a.c.n0.a0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/a0.class */
public class C23893a0 extends AbstractC23372g {

    /* renamed from: r */
    public static final int f66102r = AbstractC23372g.EnumC23373a.m7208a();

    /* renamed from: d */
    public AbstractC23382n f66103d;

    /* renamed from: e */
    public AbstractC23380l f66104e;

    /* renamed from: g */
    public boolean f66106g;

    /* renamed from: h */
    public boolean f66107h;

    /* renamed from: i */
    public boolean f66108i;

    /* renamed from: j */
    public boolean f66109j;

    /* renamed from: k */
    public C23895b f66110k;

    /* renamed from: l */
    public C23895b f66111l;

    /* renamed from: n */
    public Object f66113n;

    /* renamed from: o */
    public Object f66114o;

    /* renamed from: p */
    public boolean f66115p = false;

    /* renamed from: f */
    public int f66105f = f66102r;

    /* renamed from: q */
    public C23411f f66116q = C23411f.m7064n(null);

    /* renamed from: m */
    public int f66112m = 0;

    /* renamed from: e.k.a.c.n0.a0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/a0$a.class */
    public static final class C23894a extends AbstractC23391c {

        /* renamed from: m */
        public AbstractC23382n f66117m;

        /* renamed from: n */
        public final boolean f66118n;

        /* renamed from: o */
        public final boolean f66119o;

        /* renamed from: p */
        public C23895b f66120p;

        /* renamed from: r */
        public C23897b0 f66122r;

        /* renamed from: s */
        public boolean f66123s;

        /* renamed from: t */
        public transient C23348c f66124t;

        /* renamed from: u */
        public C23374h f66125u = null;

        /* renamed from: q */
        public int f66121q = -1;

        public C23894a(C23895b c23895b, AbstractC23382n abstractC23382n, boolean z, boolean z2, AbstractC23380l abstractC23380l) {
            super(0);
            this.f66120p = c23895b;
            this.f66117m = abstractC23382n;
            this.f66122r = abstractC23380l == null ? new C23897b0() : new C23897b0(abstractC23380l, null);
            this.f66118n = z;
            this.f66119o = z2;
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: B0 */
        public long mo5830B0() throws IOException {
            char c;
            Number mo5827F0 = this.f64765c == EnumC23381m.VALUE_NUMBER_INT ? (Number) m5820O2() : mo5827F0();
            if (!(mo5827F0 instanceof Long)) {
                if (!((mo5827F0 instanceof Integer) || (mo5827F0 instanceof Short) || (mo5827F0 instanceof Byte))) {
                    if (mo5827F0 instanceof BigInteger) {
                        BigInteger bigInteger = (BigInteger) mo5827F0;
                        if (AbstractC23391c.f64759g.compareTo(bigInteger) > 0 || AbstractC23391c.f64760h.compareTo(bigInteger) < 0) {
                            m7153L2();
                            throw null;
                        }
                    } else if ((mo5827F0 instanceof Double) || (mo5827F0 instanceof Float)) {
                        double doubleValue = mo5827F0.doubleValue();
                        if (doubleValue < -9.223372036854776E18d || doubleValue > 9.223372036854776E18d) {
                            m7153L2();
                            throw null;
                        }
                        c = (long) doubleValue;
                        return c;
                    } else if (!(mo5827F0 instanceof BigDecimal)) {
                        C23365p.m7220a();
                        throw null;
                    } else {
                        BigDecimal bigDecimal = (BigDecimal) mo5827F0;
                        if (AbstractC23391c.f64761i.compareTo(bigDecimal) > 0 || AbstractC23391c.f64762j.compareTo(bigDecimal) < 0) {
                            m7153L2();
                            throw null;
                        }
                    }
                    c = mo5827F0.longValue();
                    return c;
                }
            }
            return mo5827F0.longValue();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: D0 */
        public AbstractC23376j.EnumC23378b mo5829D0() throws IOException {
            AbstractC23376j.EnumC23378b enumC23378b = AbstractC23376j.EnumC23378b.INT;
            Number mo5827F0 = mo5827F0();
            if (mo5827F0 instanceof Integer) {
                return enumC23378b;
            }
            if (mo5827F0 instanceof Long) {
                return AbstractC23376j.EnumC23378b.LONG;
            }
            if (mo5827F0 instanceof Double) {
                return AbstractC23376j.EnumC23378b.DOUBLE;
            }
            if (mo5827F0 instanceof BigDecimal) {
                return AbstractC23376j.EnumC23378b.BIG_DECIMAL;
            }
            if (mo5827F0 instanceof BigInteger) {
                return AbstractC23376j.EnumC23378b.BIG_INTEGER;
            }
            if (mo5827F0 instanceof Float) {
                return AbstractC23376j.EnumC23378b.FLOAT;
            }
            if (!(mo5827F0 instanceof Short)) {
                return null;
            }
            return enumC23378b;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: E */
        public BigInteger mo5828E() throws IOException {
            Number mo5827F0 = mo5827F0();
            return mo5827F0 instanceof BigInteger ? (BigInteger) mo5827F0 : mo5829D0() == AbstractC23376j.EnumC23378b.BIG_DECIMAL ? ((BigDecimal) mo5827F0).toBigInteger() : BigInteger.valueOf(mo5827F0.longValue());
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: F0 */
        public final Number mo5827F0() throws IOException {
            EnumC23381m enumC23381m = this.f64765c;
            if (enumC23381m == null || !enumC23381m.f64710g) {
                StringBuilder m8728C = C22128a.m8728C("Current token (");
                m8728C.append(this.f64765c);
                m8728C.append(") not numeric, cannot use numeric value accessors");
                throw new C23375i(this, m8728C.toString());
            }
            Object m5820O2 = m5820O2();
            if (m5820O2 instanceof Number) {
                return (Number) m5820O2;
            }
            if (m5820O2 instanceof String) {
                String str = (String) m5820O2;
                return str.indexOf(46) >= 0 ? Double.valueOf(Double.parseDouble(str)) : Long.valueOf(Long.parseLong(str));
            } else if (m5820O2 == null) {
                return null;
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("Internal error: entry should be a Number, but is of type ");
                m8728C2.append(m5820O2.getClass().getName());
                throw new IllegalStateException(m8728C2.toString());
            }
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: I */
        public byte[] mo5826I(C23344a c23344a) throws IOException, C23375i {
            if (this.f64765c == EnumC23381m.VALUE_EMBEDDED_OBJECT) {
                Object m5820O2 = m5820O2();
                if (m5820O2 instanceof byte[]) {
                    return (byte[]) m5820O2;
                }
            }
            if (this.f64765c != EnumC23381m.VALUE_STRING) {
                StringBuilder m8728C = C22128a.m8728C("Current token (");
                m8728C.append(this.f64765c);
                m8728C.append(") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary");
                throw new C23375i(this, m8728C.toString());
            }
            String mo5817U0 = mo5817U0();
            if (mo5817U0 == null) {
                return null;
            }
            C23348c c23348c = this.f66124t;
            if (c23348c == null) {
                c23348c = new C23348c((C23346a) null, 100);
                this.f66124t = c23348c;
            } else {
                c23348c.m7248l();
            }
            m7138x2(mo5817U0, c23348c, c23344a);
            return c23348c.m7247q();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: J0 */
        public Object mo5825J0() {
            return this.f66120p.m5793f(this.f66121q);
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: K */
        public AbstractC23382n mo5824K() {
            return this.f66117m;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: K0 */
        public AbstractC23380l mo5823K0() {
            return this.f66122r;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: L0 */
        public C23357i<EnumC23385q> mo5822L0() {
            return AbstractC23376j.f64660b;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: M1 */
        public boolean mo5821M1() {
            return false;
        }

        /* renamed from: O2 */
        public final Object m5820O2() {
            C23895b c23895b = this.f66120p;
            return c23895b.f66129c[this.f66121q];
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: P */
        public C23374h mo5819P() {
            C23374h c23374h = this.f66125u;
            C23374h c23374h2 = c23374h;
            if (c23374h == null) {
                c23374h2 = C23374h.f64654f;
            }
            return c23374h2;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: Q */
        public String mo5818Q() {
            return mo5809k();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: U0 */
        public String mo5817U0() {
            EnumC23381m enumC23381m = this.f64765c;
            String str = null;
            if (enumC23381m == EnumC23381m.VALUE_STRING || enumC23381m == EnumC23381m.FIELD_NAME) {
                Object m5820O2 = m5820O2();
                if (m5820O2 instanceof String) {
                    return (String) m5820O2;
                }
                Annotation[] annotationArr = C23914g.f66156a;
                return m5820O2 == null ? null : m5820O2.toString();
            } else if (enumC23381m == null) {
                return null;
            } else {
                int ordinal = enumC23381m.ordinal();
                if (ordinal != 8 && ordinal != 9) {
                    return this.f64765c.f64704a;
                }
                Object m5820O22 = m5820O2();
                Annotation[] annotationArr2 = C23914g.f66156a;
                if (m5820O22 != null) {
                    str = m5820O22.toString();
                }
                return str;
            }
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: W0 */
        public char[] mo5816W0() {
            String mo5817U0 = mo5817U0();
            return mo5817U0 == null ? null : mo5817U0.toCharArray();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
            if (r0.isInfinite() != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
            if (r0.isInfinite() != false) goto L10;
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
                r0 = 0
                r7 = r0
                r0 = r6
                r8 = r0
                r0 = r4
                r1 = r5
                if (r0 != r1) goto L62
                r0 = r3
                java.lang.Object r0 = r0.m5820O2()
                r4 = r0
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Double
                if (r0 == 0) goto L3f
                r0 = r4
                java.lang.Double r0 = (java.lang.Double) r0
                r4 = r0
                r0 = r4
                boolean r0 = r0.isNaN()
                if (r0 != 0) goto L39
                r0 = r7
                r8 = r0
                r0 = r4
                boolean r0 = r0.isInfinite()
                if (r0 == 0) goto L3c
            L39:
                r0 = 1
                r8 = r0
            L3c:
                r0 = r8
                return r0
            L3f:
                r0 = r6
                r8 = r0
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Float
                if (r0 == 0) goto L62
                r0 = r4
                java.lang.Float r0 = (java.lang.Float) r0
                r4 = r0
                r0 = r4
                boolean r0 = r0.isNaN()
                if (r0 != 0) goto L5f
                r0 = r6
                r8 = r0
                r0 = r4
                boolean r0 = r0.isInfinite()
                if (r0 == 0) goto L62
            L5f:
                r0 = 1
                r8 = r0
            L62:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0.C23894a.mo5815Z1():boolean");
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: b */
        public boolean mo5814b() {
            return this.f66119o;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: b2 */
        public String mo5813b2() throws IOException {
            String str;
            C23895b c23895b;
            if (!this.f66123s && (c23895b = this.f66120p) != null) {
                int i = this.f66121q + 1;
                if (i < 16) {
                    EnumC23381m m5788k = c23895b.m5788k(i);
                    EnumC23381m enumC23381m = EnumC23381m.FIELD_NAME;
                    if (m5788k == enumC23381m) {
                        this.f66121q = i;
                        this.f64765c = enumC23381m;
                        Object obj = this.f66120p.f66129c[i];
                        String obj2 = obj instanceof String ? (String) obj : obj.toString();
                        this.f66122r.f66133e = obj2;
                        return obj2;
                    }
                }
                if (mo5811i2() == EnumC23381m.FIELD_NAME) {
                    str = mo5809k();
                    return str;
                }
            }
            str = null;
            return str;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f66123s) {
                this.f66123s = true;
            }
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: d */
        public boolean mo5812d() {
            return this.f66118n;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: i2 */
        public EnumC23381m mo5811i2() throws IOException {
            C23895b c23895b;
            if (this.f66123s || (c23895b = this.f66120p) == null) {
                return null;
            }
            int i = this.f66121q + 1;
            this.f66121q = i;
            if (i >= 16) {
                this.f66121q = 0;
                C23895b c23895b2 = c23895b.f66127a;
                this.f66120p = c23895b2;
                if (c23895b2 == null) {
                    return null;
                }
            }
            EnumC23381m m5788k = this.f66120p.m5788k(this.f66121q);
            this.f64765c = m5788k;
            if (m5788k == EnumC23381m.FIELD_NAME) {
                Object m5820O2 = m5820O2();
                this.f66122r.f66133e = m5820O2 instanceof String ? (String) m5820O2 : m5820O2.toString();
            } else if (m5788k == EnumC23381m.START_OBJECT) {
                C23897b0 c23897b0 = this.f66122r;
                c23897b0.f64689b++;
                this.f66122r = new C23897b0(c23897b0, 2, -1);
            } else if (m5788k == EnumC23381m.START_ARRAY) {
                C23897b0 c23897b02 = this.f66122r;
                c23897b02.f64689b++;
                this.f66122r = new C23897b0(c23897b02, 1, -1);
            } else if (m5788k == EnumC23381m.END_OBJECT || m5788k == EnumC23381m.END_ARRAY) {
                C23897b0 c23897b03 = this.f66122r;
                AbstractC23380l abstractC23380l = c23897b03.f66131c;
                this.f66122r = abstractC23380l instanceof C23897b0 ? (C23897b0) abstractC23380l : abstractC23380l == null ? new C23897b0() : new C23897b0(abstractC23380l, c23897b03.f66132d);
            } else {
                this.f66122r.f64689b++;
            }
            return this.f64765c;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: j1 */
        public int mo5810j1() {
            String mo5817U0 = mo5817U0();
            return mo5817U0 == null ? 0 : mo5817U0.length();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: k */
        public String mo5809k() {
            EnumC23381m enumC23381m = this.f64765c;
            return (enumC23381m == EnumC23381m.START_OBJECT || enumC23381m == EnumC23381m.START_ARRAY) ? this.f66122r.f66131c.mo5786a() : this.f66122r.f66133e;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: k0 */
        public BigDecimal mo5808k0() throws IOException {
            Number mo5827F0 = mo5827F0();
            if (mo5827F0 instanceof BigDecimal) {
                return (BigDecimal) mo5827F0;
            }
            int ordinal = mo5829D0().ordinal();
            return (ordinal == 0 || ordinal == 1) ? BigDecimal.valueOf(mo5827F0.longValue()) : ordinal != 2 ? BigDecimal.valueOf(mo5827F0.doubleValue()) : new BigDecimal((BigInteger) mo5827F0);
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: l1 */
        public int mo5807l1() {
            return 0;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: m1 */
        public C23374h mo5806m1() {
            return mo5819P();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: n0 */
        public double mo5805n0() throws IOException {
            return mo5827F0().doubleValue();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: n1 */
        public Object mo5804n1() {
            return this.f66120p.m5792g(this.f66121q);
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: p0 */
        public Object mo5803p0() {
            if (this.f64765c == EnumC23381m.VALUE_EMBEDDED_OBJECT) {
                return m5820O2();
            }
            return null;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: r2 */
        public int mo5802r2(C23344a c23344a, OutputStream outputStream) throws IOException {
            byte[] mo5826I = mo5826I(c23344a);
            if (mo5826I != null) {
                outputStream.write(mo5826I, 0, mo5826I.length);
                return mo5826I.length;
            }
            return 0;
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: t0 */
        public float mo5801t0() throws IOException {
            return mo5827F0().floatValue();
        }

        @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
        /* renamed from: z0 */
        public int mo5800z0() throws IOException {
            int i;
            Number mo5827F0 = this.f64765c == EnumC23381m.VALUE_NUMBER_INT ? (Number) m5820O2() : mo5827F0();
            if (!(mo5827F0 instanceof Integer)) {
                if (!((mo5827F0 instanceof Short) || (mo5827F0 instanceof Byte))) {
                    if (mo5827F0 instanceof Long) {
                        long longValue = mo5827F0.longValue();
                        i = (int) longValue;
                        if (i != longValue) {
                            m7156J2();
                            throw null;
                        }
                    } else {
                        if (mo5827F0 instanceof BigInteger) {
                            BigInteger bigInteger = (BigInteger) mo5827F0;
                            if (AbstractC23391c.f64757e.compareTo(bigInteger) > 0 || AbstractC23391c.f64758f.compareTo(bigInteger) < 0) {
                                m7156J2();
                                throw null;
                            }
                        } else if ((mo5827F0 instanceof Double) || (mo5827F0 instanceof Float)) {
                            double doubleValue = mo5827F0.doubleValue();
                            if (doubleValue < -2.147483648E9d || doubleValue > 2.147483647E9d) {
                                m7156J2();
                                throw null;
                            }
                            i = (int) doubleValue;
                        } else if (!(mo5827F0 instanceof BigDecimal)) {
                            C23365p.m7220a();
                            throw null;
                        } else {
                            BigDecimal bigDecimal = (BigDecimal) mo5827F0;
                            if (AbstractC23391c.f64763k.compareTo(bigDecimal) > 0 || AbstractC23391c.f64764l.compareTo(bigDecimal) < 0) {
                                m7156J2();
                                throw null;
                            }
                        }
                        i = mo5827F0.intValue();
                    }
                    return i;
                }
            }
            return mo5827F0.intValue();
        }

        @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c
        /* renamed from: z2 */
        public void mo5799z2() throws C23375i {
            C23365p.m7220a();
            throw null;
        }
    }

    /* renamed from: e.k.a.c.n0.a0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/a0$b.class */
    public static final class C23895b {

        /* renamed from: e */
        public static final EnumC23381m[] f66126e;

        /* renamed from: a */
        public C23895b f66127a;

        /* renamed from: b */
        public long f66128b;

        /* renamed from: c */
        public final Object[] f66129c = new Object[16];

        /* renamed from: d */
        public TreeMap<Integer, Object> f66130d;

        static {
            EnumC23381m[] enumC23381mArr = new EnumC23381m[16];
            f66126e = enumC23381mArr;
            System.arraycopy(EnumC23381m.values(), 1, enumC23381mArr, 1, Math.min(15, 12));
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: a */
        public C23895b m5798a(int i, EnumC23381m enumC23381m) {
            if (i >= 16) {
                C23895b c23895b = new C23895b();
                this.f66127a = c23895b;
                c23895b.f66128b = enumC23381m.ordinal() | c23895b.f66128b;
                return this.f66127a;
            }
            ?? ordinal = enumC23381m.ordinal();
            char c = ordinal;
            if (i > 0) {
                c = ordinal << (i << 2);
            }
            this.f66128b |= c;
            return null;
        }

        /* renamed from: b */
        public C23895b m5797b(int i, EnumC23381m enumC23381m, Object obj) {
            if (i < 16) {
                m5791h(i, enumC23381m, obj);
                return null;
            }
            C23895b c23895b = new C23895b();
            this.f66127a = c23895b;
            c23895b.m5791h(0, enumC23381m, obj);
            return this.f66127a;
        }

        /* renamed from: c */
        public C23895b m5796c(int i, EnumC23381m enumC23381m, Object obj, Object obj2) {
            if (i < 16) {
                m5790i(i, enumC23381m, obj, obj2);
                return null;
            }
            C23895b c23895b = new C23895b();
            this.f66127a = c23895b;
            c23895b.m5790i(0, enumC23381m, obj, obj2);
            return this.f66127a;
        }

        /* renamed from: d */
        public C23895b m5795d(int i, EnumC23381m enumC23381m, Object obj, Object obj2, Object obj3) {
            if (i < 16) {
                m5789j(i, enumC23381m, obj, obj2, obj3);
                return null;
            }
            C23895b c23895b = new C23895b();
            this.f66127a = c23895b;
            c23895b.m5789j(0, enumC23381m, obj, obj2, obj3);
            return this.f66127a;
        }

        /* renamed from: e */
        public final void m5794e(int i, Object obj, Object obj2) {
            if (this.f66130d == null) {
                this.f66130d = new TreeMap<>();
            }
            if (obj != null) {
                this.f66130d.put(Integer.valueOf(i + i + 1), obj);
            }
            if (obj2 != null) {
                this.f66130d.put(Integer.valueOf(i + i), obj2);
            }
        }

        /* renamed from: f */
        public Object m5793f(int i) {
            TreeMap<Integer, Object> treeMap = this.f66130d;
            return treeMap == null ? null : treeMap.get(Integer.valueOf(i + i + 1));
        }

        /* renamed from: g */
        public Object m5792g(int i) {
            TreeMap<Integer, Object> treeMap = this.f66130d;
            return treeMap == null ? null : treeMap.get(Integer.valueOf(i + i));
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* renamed from: h */
        public final void m5791h(int i, EnumC23381m enumC23381m, Object obj) {
            this.f66129c[i] = obj;
            ?? ordinal = enumC23381m.ordinal();
            char c = ordinal;
            if (i > 0) {
                c = ordinal << (i << 2);
            }
            this.f66128b |= c;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: i */
        public final void m5790i(int i, EnumC23381m enumC23381m, Object obj, Object obj2) {
            ?? ordinal = enumC23381m.ordinal();
            char c = ordinal;
            if (i > 0) {
                c = ordinal << (i << 2);
            }
            this.f66128b = c | this.f66128b;
            m5794e(i, obj, obj2);
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* renamed from: j */
        public final void m5789j(int i, EnumC23381m enumC23381m, Object obj, Object obj2, Object obj3) {
            this.f66129c[i] = obj;
            ?? ordinal = enumC23381m.ordinal();
            char c = ordinal;
            if (i > 0) {
                c = ordinal << (i << 2);
            }
            this.f66128b = c | this.f66128b;
            m5794e(i, obj2, obj3);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* renamed from: k */
        public EnumC23381m m5788k(int i) {
            ?? r0 = this.f66128b;
            char c = r0;
            if (i > 0) {
                c = r0 >> (i << 2);
            }
            return f66126e[c & 15];
        }
    }

    public C23893a0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) {
        this.f66103d = abstractC23376j.mo5824K();
        this.f66104e = abstractC23376j.mo5823K0();
        C23895b c23895b = new C23895b();
        this.f66111l = c23895b;
        this.f66110k = c23895b;
        this.f66106g = abstractC23376j.mo5812d();
        boolean mo5814b = abstractC23376j.mo5814b();
        this.f66107h = mo5814b;
        this.f66108i = this.f66106g || mo5814b;
        this.f66109j = abstractC23632g == null ? false : abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS);
    }

    public C23893a0(AbstractC23382n abstractC23382n, boolean z) {
        boolean z2 = false;
        this.f66103d = abstractC23382n;
        C23895b c23895b = new C23895b();
        this.f66111l = c23895b;
        this.f66110k = c23895b;
        this.f66106g = z;
        this.f66107h = z;
        this.f66108i = (z || z) ? true : z2;
    }

    /* renamed from: w2 */
    public static C23893a0 m5836w2(AbstractC23376j abstractC23376j) throws IOException {
        C23893a0 c23893a0 = new C23893a0(abstractC23376j, (AbstractC23632g) null);
        c23893a0.m5890A2(abstractC23376j);
        return c23893a0;
    }

    /* renamed from: A2 */
    public void m5890A2(AbstractC23376j abstractC23376j) throws IOException {
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l == EnumC23381m.FIELD_NAME) {
            if (this.f66108i) {
                m5844r2(abstractC23376j);
            }
            mo5889B0(abstractC23376j.mo5809k());
            mo7142l = abstractC23376j.mo5811i2();
        } else if (mo7142l == null) {
            throw new IllegalStateException("No token available from argument `JsonParser`");
        }
        int ordinal = mo7142l.ordinal();
        if (ordinal == 1) {
            if (this.f66108i) {
                m5844r2(abstractC23376j);
            }
            mo5875M1();
            m5841s2(abstractC23376j);
        } else if (ordinal == 2) {
            mo5840t0();
        } else if (ordinal != 3) {
            if (ordinal != 4) {
                m5839t2(abstractC23376j, mo7142l);
            } else {
                mo5848p0();
            }
        } else {
            if (this.f66108i) {
                m5844r2(abstractC23376j);
            }
            mo5884F1();
            m5841s2(abstractC23376j);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: B0 */
    public final void mo5889B0(String str) throws IOException {
        this.f66116q.m7061q(str);
        m5860h2(str);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: D0 */
    public void mo5888D0() throws IOException {
        m5847p2(EnumC23381m.VALUE_NULL);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: E */
    public boolean mo5887E(AbstractC23372g.EnumC23373a enumC23373a) {
        return (enumC23373a.f64653b & this.f66105f) != 0;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: E1 */
    public void mo5886E1(String str) throws IOException {
        m5845q2(EnumC23381m.VALUE_EMBEDDED_OBJECT, new C23936w(str));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F0 */
    public void mo5885F0(double d) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_FLOAT, Double.valueOf(d));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: F1 */
    public final void mo5884F1() throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_ARRAY);
        this.f66116q = this.f66116q.m7068j();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: G0 */
    public void mo5883G0(float f) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_FLOAT, Float.valueOf(f));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: I */
    public AbstractC23372g mo5882I(int i, int i2) {
        this.f66105f = (i & i2) | (this.f66105f & (i2 ^ (-1)));
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: I1 */
    public void mo5881I1(Object obj) throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_ARRAY);
        this.f66116q = this.f66116q.m7067k(obj);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: J0 */
    public void mo5880J0(int i) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_INT, Integer.valueOf(i));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    @Deprecated
    /* renamed from: K */
    public AbstractC23372g mo5879K(int i) {
        this.f66105f = i;
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: K0 */
    public void mo5878K0(long j) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_INT, Long.valueOf(j));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: L0 */
    public void mo5877L0(String str) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_FLOAT, str);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: L1 */
    public void mo5876L1(Object obj, int i) throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_ARRAY);
        this.f66116q = this.f66116q.m7067k(obj);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: M1 */
    public final void mo5875M1() throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_OBJECT);
        this.f66116q = this.f66116q.m7066l();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: O1 */
    public void mo5874O1(Object obj) throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_OBJECT);
        this.f66116q = this.f66116q.m7065m(obj);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Q */
    public int mo5873Q(C23344a c23344a, InputStream inputStream, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Q0 */
    public void mo5872Q0(BigDecimal bigDecimal) throws IOException {
        if (bigDecimal == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
        } else {
            m5845q2(EnumC23381m.VALUE_NUMBER_FLOAT, bigDecimal);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: R1 */
    public void mo5871R1(Object obj, int i) throws IOException {
        this.f66116q.m7060r();
        m5849o2(EnumC23381m.START_OBJECT);
        this.f66116q = this.f66116q.m7065m(obj);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S */
    public void mo5870S(C23344a c23344a, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        mo5857j1(bArr2);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: S1 */
    public void mo5869S1(AbstractC23384p abstractC23384p) throws IOException {
        if (abstractC23384p == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
        } else {
            m5845q2(EnumC23381m.VALUE_STRING, abstractC23384p);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: T1 */
    public void mo5868T1(String str) throws IOException {
        if (str == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
        } else {
            m5845q2(EnumC23381m.VALUE_STRING, str);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: U0 */
    public void mo5867U0(BigInteger bigInteger) throws IOException {
        if (bigInteger == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
        } else {
            m5845q2(EnumC23381m.VALUE_NUMBER_INT, bigInteger);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: V1 */
    public void mo5866V1(char[] cArr, int i, int i2) throws IOException {
        mo5868T1(new String(cArr, i, i2));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: W0 */
    public void mo5865W0(short s) throws IOException {
        m5845q2(EnumC23381m.VALUE_NUMBER_INT, Short.valueOf(s));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Y1 */
    public void mo5864Y1(AbstractC23388t abstractC23388t) throws IOException {
        if (abstractC23388t == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
            return;
        }
        AbstractC23382n abstractC23382n = this.f66103d;
        if (abstractC23382n == null) {
            m5845q2(EnumC23381m.VALUE_EMBEDDED_OBJECT, abstractC23388t);
        } else {
            abstractC23382n.mo5674a(this, abstractC23388t);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Z1 */
    public void mo5863Z1(Object obj) {
        this.f66113n = obj;
        this.f66115p = true;
    }

    /* renamed from: b2 */
    public final void m5862b2(EnumC23381m enumC23381m) {
        C23895b m5798a = this.f66111l.m5798a(this.f66112m, enumC23381m);
        if (m5798a == null) {
            this.f66112m++;
            return;
        }
        this.f66111l = m5798a;
        this.f66112m = 1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: d */
    public boolean mo5861d() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Flushable
    public void flush() throws IOException {
    }

    /* renamed from: h2 */
    public final void m5860h2(Object obj) {
        C23895b m5795d = this.f66115p ? this.f66111l.m5795d(this.f66112m, EnumC23381m.FIELD_NAME, obj, this.f66114o, this.f66113n) : this.f66111l.m5797b(this.f66112m, EnumC23381m.FIELD_NAME, obj);
        if (m5795d == null) {
            this.f66112m++;
            return;
        }
        this.f66111l = m5795d;
        this.f66112m = 1;
    }

    /* renamed from: i2 */
    public final void m5859i2(StringBuilder sb) {
        Object m5793f = this.f66111l.m5793f(this.f66112m - 1);
        if (m5793f != null) {
            sb.append("[objectId=");
            sb.append(String.valueOf(m5793f));
            sb.append(']');
        }
        Object m5792g = this.f66111l.m5792g(this.f66112m - 1);
        if (m5792g != null) {
            sb.append("[typeId=");
            sb.append(String.valueOf(m5792g));
            sb.append(']');
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: j */
    public boolean mo5858j() {
        return this.f66107h;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: j1 */
    public void mo5857j1(Object obj) throws IOException {
        if (obj == null) {
            m5847p2(EnumC23381m.VALUE_NULL);
        } else if (obj.getClass() == byte[].class || (obj instanceof C23936w)) {
            m5845q2(EnumC23381m.VALUE_EMBEDDED_OBJECT, obj);
        } else {
            AbstractC23382n abstractC23382n = this.f66103d;
            if (abstractC23382n == null) {
                m5845q2(EnumC23381m.VALUE_EMBEDDED_OBJECT, obj);
            } else {
                abstractC23382n.mo5673b(this, obj);
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: k */
    public boolean mo5856k() {
        return this.f66106g;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: k0 */
    public void mo5855k0(boolean z) throws IOException {
        m5847p2(z ? EnumC23381m.VALUE_TRUE : EnumC23381m.VALUE_FALSE);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: l */
    public AbstractC23372g mo5854l(AbstractC23372g.EnumC23373a enumC23373a) {
        this.f66105f = (enumC23373a.f64653b ^ (-1)) & this.f66105f;
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: l1 */
    public void mo5853l1(Object obj) {
        this.f66114o = obj;
        this.f66115p = true;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: m1 */
    public void mo5852m1(char c) throws IOException {
        m5838u2();
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: n0 */
    public void mo5851n0(Object obj) throws IOException {
        m5845q2(EnumC23381m.VALUE_EMBEDDED_OBJECT, obj);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: n1 */
    public void mo5850n1(AbstractC23384p abstractC23384p) throws IOException {
        m5838u2();
        throw null;
    }

    /* renamed from: o2 */
    public final void m5849o2(EnumC23381m enumC23381m) {
        C23895b m5796c = this.f66115p ? this.f66111l.m5796c(this.f66112m, enumC23381m, this.f66114o, this.f66113n) : this.f66111l.m5798a(this.f66112m, enumC23381m);
        if (m5796c == null) {
            this.f66112m++;
            return;
        }
        this.f66111l = m5796c;
        this.f66112m = 1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: p0 */
    public final void mo5848p0() throws IOException {
        m5862b2(EnumC23381m.END_ARRAY);
        C23411f c23411f = this.f66116q.f64867c;
        if (c23411f != null) {
            this.f66116q = c23411f;
        }
    }

    /* renamed from: p2 */
    public final void m5847p2(EnumC23381m enumC23381m) {
        this.f66116q.m7060r();
        C23895b m5796c = this.f66115p ? this.f66111l.m5796c(this.f66112m, enumC23381m, this.f66114o, this.f66113n) : this.f66111l.m5798a(this.f66112m, enumC23381m);
        if (m5796c == null) {
            this.f66112m++;
            return;
        }
        this.f66111l = m5796c;
        this.f66112m = 1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: q */
    public int mo5846q() {
        return this.f66105f;
    }

    /* renamed from: q2 */
    public final void m5845q2(EnumC23381m enumC23381m, Object obj) {
        this.f66116q.m7060r();
        C23895b m5795d = this.f66115p ? this.f66111l.m5795d(this.f66112m, enumC23381m, obj, this.f66114o, this.f66113n) : this.f66111l.m5797b(this.f66112m, enumC23381m, obj);
        if (m5795d == null) {
            this.f66112m++;
            return;
        }
        this.f66111l = m5795d;
        this.f66112m = 1;
    }

    /* renamed from: r2 */
    public final void m5844r2(AbstractC23376j abstractC23376j) throws IOException {
        Object mo5804n1 = abstractC23376j.mo5804n1();
        this.f66113n = mo5804n1;
        if (mo5804n1 != null) {
            this.f66115p = true;
        }
        Object mo5825J0 = abstractC23376j.mo5825J0();
        this.f66114o = mo5825J0;
        if (mo5825J0 != null) {
            this.f66115p = true;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: s */
    public AbstractC23380l mo5843s() {
        return this.f66116q;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: s1 */
    public void mo5842s1(String str) throws IOException {
        m5838u2();
        throw null;
    }

    /* renamed from: s2 */
    public void m5841s2(AbstractC23376j abstractC23376j) throws IOException {
        int i = 1;
        while (true) {
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            if (mo5811i2 != null) {
                int ordinal = mo5811i2.ordinal();
                if (ordinal == 1) {
                    if (this.f66108i) {
                        m5844r2(abstractC23376j);
                    }
                    mo5875M1();
                } else if (ordinal == 2) {
                    mo5840t0();
                    int i2 = i - 1;
                    i = i2;
                    if (i2 == 0) {
                        return;
                    }
                } else if (ordinal == 3) {
                    if (this.f66108i) {
                        m5844r2(abstractC23376j);
                    }
                    mo5884F1();
                } else if (ordinal == 4) {
                    mo5848p0();
                    int i3 = i - 1;
                    i = i3;
                    if (i3 == 0) {
                        return;
                    }
                } else if (ordinal != 5) {
                    m5839t2(abstractC23376j, mo5811i2);
                } else {
                    if (this.f66108i) {
                        m5844r2(abstractC23376j);
                    }
                    mo5889B0(abstractC23376j.mo5809k());
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: t0 */
    public final void mo5840t0() throws IOException {
        m5862b2(EnumC23381m.END_OBJECT);
        C23411f c23411f = this.f66116q.f64867c;
        if (c23411f != null) {
            this.f66116q = c23411f;
        }
    }

    /* renamed from: t2 */
    public final void m5839t2(AbstractC23376j abstractC23376j, EnumC23381m enumC23381m) throws IOException {
        if (this.f66108i) {
            m5844r2(abstractC23376j);
        }
        switch (enumC23381m.ordinal()) {
            case 6:
                mo5857j1(abstractC23376j.mo5803p0());
                return;
            case 7:
                if (abstractC23376j.mo5821M1()) {
                    mo5866V1(abstractC23376j.mo5816W0(), abstractC23376j.mo5807l1(), abstractC23376j.mo5810j1());
                    return;
                } else {
                    mo5868T1(abstractC23376j.mo5817U0());
                    return;
                }
            case 8:
                int ordinal = abstractC23376j.mo5829D0().ordinal();
                if (ordinal == 0) {
                    mo5880J0(abstractC23376j.mo5800z0());
                    return;
                } else if (ordinal != 2) {
                    mo5878K0(abstractC23376j.mo5830B0());
                    return;
                } else {
                    mo5867U0(abstractC23376j.mo5828E());
                    return;
                }
            case 9:
                if (this.f66109j) {
                    mo5872Q0(abstractC23376j.mo5808k0());
                    return;
                }
                m5845q2(EnumC23381m.VALUE_NUMBER_FLOAT, abstractC23376j.mo7189G0());
                return;
            case 10:
                mo5855k0(true);
                return;
            case 11:
                mo5855k0(false);
                return;
            case 12:
                m5847p2(EnumC23381m.VALUE_NULL);
                return;
            default:
                throw new RuntimeException("Internal error: unexpected token: " + enumC23381m);
        }
    }

    public String toString() {
        int i;
        StringBuilder m8728C = C22128a.m8728C("[TokenBuffer: ");
        AbstractC23376j m5835x2 = m5835x2();
        boolean z = false;
        if (this.f66106g || this.f66107h) {
            z = true;
            i = 0;
        } else {
            i = 0;
        }
        while (true) {
            try {
                EnumC23381m mo5811i2 = m5835x2.mo5811i2();
                if (mo5811i2 == null) {
                    break;
                }
                if (z) {
                    m5859i2(m8728C);
                }
                if (i < 100) {
                    if (i > 0) {
                        m8728C.append(", ");
                    }
                    m8728C.append(mo5811i2.toString());
                    if (mo5811i2 == EnumC23381m.FIELD_NAME) {
                        m8728C.append('(');
                        m8728C.append(m5835x2.mo5809k());
                        m8728C.append(')');
                    }
                }
                i++;
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        if (i >= 100) {
            m8728C.append(" ... (truncated ");
            m8728C.append(i - 100);
            m8728C.append(" entries)");
        }
        m8728C.append(']');
        return m8728C.toString();
    }

    /* renamed from: u2 */
    public void m5838u2() {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    /* renamed from: v2 */
    public C23893a0 m5837v2(C23893a0 c23893a0) throws IOException {
        if (!this.f66106g) {
            this.f66106g = c23893a0.f66106g;
        }
        if (!this.f66107h) {
            this.f66107h = c23893a0.f66107h;
        }
        this.f66108i = this.f66106g || this.f66107h;
        AbstractC23376j m5835x2 = c23893a0.m5835x2();
        while (m5835x2.mo5811i2() != null) {
            m5890A2(m5835x2);
        }
        return this;
    }

    /* renamed from: x2 */
    public AbstractC23376j m5835x2() {
        return new C23894a(this.f66110k, this.f66103d, this.f66106g, this.f66107h, this.f66104e);
    }

    /* renamed from: y2 */
    public AbstractC23376j m5834y2(AbstractC23376j abstractC23376j) {
        C23894a c23894a = new C23894a(this.f66110k, abstractC23376j.mo5824K(), this.f66106g, this.f66107h, this.f66104e);
        c23894a.f66125u = abstractC23376j.mo5806m1();
        return c23894a;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z0 */
    public void mo5833z0(AbstractC23384p abstractC23384p) throws IOException {
        this.f66116q.m7061q(abstractC23384p.getValue());
        m5860h2(abstractC23384p);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: z1 */
    public void mo5832z1(char[] cArr, int i, int i2) throws IOException {
        m5838u2();
        throw null;
    }

    /* renamed from: z2 */
    public AbstractC23376j m5831z2() throws IOException {
        C23894a c23894a = new C23894a(this.f66110k, this.f66103d, this.f66106g, this.f66107h, this.f66104e);
        c23894a.mo5811i2();
        return c23894a;
    }
}
