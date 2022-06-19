package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v.class */
public class C23589v {

    /* renamed from: a */
    public static final HashSet<String> f65434a = new HashSet<>();

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$a.class */
    public static class C23590a extends AbstractC23552e0<BigDecimal> {

        /* renamed from: d */
        public static final C23590a f65435d = new C23590a();

        public C23590a() {
            super(BigDecimal.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            BigDecimal bigDecimal;
            int mo7140q = abstractC23376j.mo7140q();
            if (mo7140q == 1) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            }
            if (mo7140q == 3) {
                bigDecimal = mo6676A(abstractC23376j, abstractC23632g);
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Float, mo6223m());
                if (m6637v == EnumC23446b.AsNull) {
                    bigDecimal = null;
                } else if (m6637v == EnumC23446b.AsEmpty) {
                    bigDecimal = BigDecimal.ZERO;
                } else {
                    String trim = mo5817U0.trim();
                    if (m6671F(trim)) {
                        bigDecimal = null;
                    } else {
                        try {
                            bigDecimal = new BigDecimal(trim);
                        } catch (IllegalArgumentException e) {
                            abstractC23632g.m6492N(this.f65309a, trim, "not a valid representation", new Object[0]);
                            throw null;
                        }
                    }
                }
            } else if (mo7140q != 7 && mo7140q != 8) {
                AbstractC23698i abstractC23698i = this.f65310b;
                if (abstractC23698i == null) {
                    abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                throw null;
            } else {
                bigDecimal = abstractC23376j.mo5808k0();
            }
            return bigDecimal;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) {
            return BigDecimal.ZERO;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public final EnumC23876f mo6221o() {
            return EnumC23876f.Float;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$b.class */
    public static class C23591b extends AbstractC23552e0<BigInteger> {

        /* renamed from: d */
        public static final C23591b f65436d = new C23591b();

        public C23591b() {
            super(BigInteger.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            BigInteger bigInteger;
            EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
            EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
            if (abstractC23376j.mo7147T1()) {
                bigInteger = abstractC23376j.mo5828E();
            } else {
                int mo7140q = abstractC23376j.mo7140q();
                if (mo7140q == 1) {
                    abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                    throw null;
                } else if (mo7140q == 3) {
                    bigInteger = mo6676A(abstractC23376j, abstractC23632g);
                } else if (mo7140q == 6) {
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, mo6223m());
                    if (m6637v == enumC23446b2) {
                        bigInteger = null;
                    } else if (m6637v == enumC23446b) {
                        bigInteger = BigInteger.ZERO;
                    } else {
                        String trim = mo5817U0.trim();
                        if (m6671F(trim)) {
                            bigInteger = null;
                        } else {
                            try {
                                bigInteger = new BigInteger(trim);
                            } catch (IllegalArgumentException e) {
                                abstractC23632g.m6492N(this.f65309a, trim, "not a valid representation", new Object[0]);
                                throw null;
                            }
                        }
                    }
                } else if (mo7140q != 8) {
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                } else {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, this.f65309a);
                    bigInteger = m6638u == enumC23446b2 ? null : m6638u == enumC23446b ? BigInteger.ZERO : abstractC23376j.mo5808k0().toBigInteger();
                }
            }
            return bigInteger;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) {
            return BigInteger.ZERO;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public final EnumC23876f mo6221o() {
            return EnumC23876f.Integer;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$c.class */
    public static final class C23592c extends AbstractC23600k<Boolean> {

        /* renamed from: h */
        public static final C23592c f65437h = new C23592c(Boolean.TYPE, Boolean.FALSE);

        /* renamed from: i */
        public static final C23592c f65438i = new C23592c(Boolean.class, null);

        public C23592c(Class<Boolean> cls, Boolean bool) {
            super(cls, EnumC23876f.Boolean, bool, Boolean.FALSE);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            return mo7142l == EnumC23381m.VALUE_TRUE ? Boolean.TRUE : mo7142l == EnumC23381m.VALUE_FALSE ? Boolean.FALSE : this.f65455g ? Boolean.valueOf(m6662O(abstractC23376j, abstractC23632g)) : m6663N(abstractC23376j, abstractC23632g, this.f65309a);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: f */
        public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            return mo7142l == EnumC23381m.VALUE_TRUE ? Boolean.TRUE : mo7142l == EnumC23381m.VALUE_FALSE ? Boolean.FALSE : this.f65455g ? Boolean.valueOf(m6662O(abstractC23376j, abstractC23632g)) : m6663N(abstractC23376j, abstractC23632g, this.f65309a);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$d.class */
    public static class C23593d extends AbstractC23600k<Byte> {

        /* renamed from: h */
        public static final C23593d f65439h = new C23593d(Byte.TYPE, (byte) 0);

        /* renamed from: i */
        public static final C23593d f65440i = new C23593d(Byte.class, null);

        public C23593d(Class<Byte> cls, Byte b) {
            super(cls, EnumC23876f.Integer, b, (byte) 0);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            Byte b;
            if (abstractC23376j.mo7147T1()) {
                b = Byte.valueOf(abstractC23376j.mo7205J());
            } else if (this.f65455g) {
                b = Byte.valueOf(m6661P(abstractC23376j, abstractC23632g));
            } else {
                EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
                EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
                int mo7140q = abstractC23376j.mo7140q();
                if (mo7140q == 1) {
                    abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                    throw null;
                } else if (mo7140q == 3) {
                    b = mo6676A(abstractC23376j, abstractC23632g);
                } else if (mo7140q == 11) {
                    b = mo6233c(abstractC23632g);
                } else if (mo7140q == 6) {
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), mo6223m());
                    if (m6637v == enumC23446b2) {
                        b = mo6233c(abstractC23632g);
                    } else if (m6637v == enumC23446b) {
                        b = (Byte) this.f65454f;
                    } else {
                        String trim = mo5817U0.trim();
                        if (m6636w(abstractC23632g, trim)) {
                            b = mo6233c(abstractC23632g);
                        } else {
                            try {
                                int m7117f = C23400f.m7117f(trim);
                                boolean z = true;
                                if (m7117f >= -128) {
                                    z = m7117f > 255;
                                }
                                if (z) {
                                    abstractC23632g.m6492N(this.f65309a, trim, "overflow, value cannot be represented as 8-bit value", new Object[0]);
                                    throw null;
                                }
                                b = Byte.valueOf((byte) m7117f);
                            } catch (IllegalArgumentException e) {
                                abstractC23632g.m6492N(this.f65309a, trim, "not a valid Byte value", new Object[0]);
                                throw null;
                            }
                        }
                    }
                } else if (mo7140q == 7) {
                    b = Byte.valueOf(abstractC23376j.mo7205J());
                } else if (mo7140q != 8) {
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                } else {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, this.f65309a);
                    b = m6638u == enumC23446b2 ? mo6233c(abstractC23632g) : m6638u == enumC23446b ? (Byte) this.f65454f : Byte.valueOf(abstractC23376j.mo7205J());
                }
            }
            return b;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$e.class */
    public static class C23594e extends AbstractC23600k<Character> {

        /* renamed from: h */
        public static final C23594e f65441h = new C23594e(Character.TYPE, 0);

        /* renamed from: i */
        public static final C23594e f65442i = new C23594e(Character.class, null);

        public C23594e(Class<Character> cls, Character ch) {
            super(cls, EnumC23876f.Integer, ch, (char) 0);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            Character ch;
            int mo7140q = abstractC23376j.mo7140q();
            if (mo7140q == 1) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            }
            if (mo7140q == 3) {
                ch = mo6676A(abstractC23376j, abstractC23632g);
            } else if (mo7140q == 11) {
                if (this.f65455g) {
                    m6648d0(abstractC23632g);
                }
                ch = mo6233c(abstractC23632g);
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                if (mo5817U0.length() == 1) {
                    ch = Character.valueOf(mo5817U0.charAt(0));
                } else {
                    EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), mo6223m());
                    if (m6637v == EnumC23446b.AsNull) {
                        ch = mo6233c(abstractC23632g);
                    } else if (m6637v == EnumC23446b.AsEmpty) {
                        ch = (Character) this.f65454f;
                    } else {
                        String trim = mo5817U0.trim();
                        if (!m6636w(abstractC23632g, trim)) {
                            abstractC23632g.m6492N(this.f65309a, trim, "Expected either Integer value code or 1-character String", new Object[0]);
                            throw null;
                        }
                        ch = mo6233c(abstractC23632g);
                    }
                }
            } else if (mo7140q != 7) {
                AbstractC23698i abstractC23698i = this.f65310b;
                if (abstractC23698i == null) {
                    abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                throw null;
            } else {
                EnumC23446b m6463q = abstractC23632g.m6463q(this.f65452d, this.f65309a, EnumC23448d.Integer);
                int ordinal = m6463q.ordinal();
                if (ordinal == 0) {
                    Class<?> cls = this.f65309a;
                    Number mo5827F0 = abstractC23376j.mo5827F0();
                    StringBuilder m8728C = C22128a.m8728C("Integer value (");
                    m8728C.append(abstractC23376j.mo5817U0());
                    m8728C.append(")");
                    m6641r(abstractC23632g, m6463q, cls, mo5827F0, m8728C.toString());
                } else if (ordinal != 2) {
                    if (ordinal != 3) {
                        int mo5800z0 = abstractC23376j.mo5800z0();
                        if (mo5800z0 < 0 || mo5800z0 > 65535) {
                            abstractC23632g.m6493M(this.f65309a, Integer.valueOf(mo5800z0), "value outside valid Character range (0x0000 - 0xFFFF)", new Object[0]);
                            throw null;
                        }
                        ch = Character.valueOf((char) mo5800z0);
                    } else {
                        ch = (Character) this.f65454f;
                    }
                }
                ch = mo6233c(abstractC23632g);
            }
            return ch;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$f.class */
    public static class C23595f extends AbstractC23600k<Double> {

        /* renamed from: h */
        public static final C23595f f65443h = new C23595f(Double.TYPE, Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE));

        /* renamed from: i */
        public static final C23595f f65444i = new C23595f(Double.class, null);

        public C23595f(Class<Double> cls, Double d) {
            super(cls, EnumC23876f.Float, d, Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE));
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            return abstractC23376j.mo7150O1(EnumC23381m.VALUE_NUMBER_FLOAT) ? Double.valueOf(abstractC23376j.mo5805n0()) : this.f65455g ? Double.valueOf(m6660R(abstractC23376j, abstractC23632g)) : m6542m0(abstractC23376j, abstractC23632g);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: f */
        public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
            return abstractC23376j.mo7150O1(EnumC23381m.VALUE_NUMBER_FLOAT) ? Double.valueOf(abstractC23376j.mo5805n0()) : this.f65455g ? Double.valueOf(m6660R(abstractC23376j, abstractC23632g)) : m6542m0(abstractC23376j, abstractC23632g);
        }

        /* JADX WARN: Type inference failed for: r0v36, types: [double] */
        /* renamed from: m0 */
        public final Double m6542m0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            int mo7140q = abstractC23376j.mo7140q();
            if (mo7140q == 1) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else if (mo7140q == 3) {
                return mo6676A(abstractC23376j, abstractC23632g);
            } else {
                if (mo7140q == 11) {
                    return mo6233c(abstractC23632g);
                }
                if (mo7140q != 6) {
                    if (mo7140q == 7 || mo7140q == 8) {
                        return Double.valueOf(abstractC23376j.mo5805n0());
                    }
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                }
                String mo5817U0 = abstractC23376j.mo5817U0();
                Double m6640s = m6640s(mo5817U0);
                if (m6640s != null) {
                    return m6640s;
                }
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, this.f65452d, this.f65309a);
                if (m6637v == EnumC23446b.AsNull) {
                    return mo6233c(abstractC23632g);
                }
                if (m6637v == EnumC23446b.AsEmpty) {
                    return (Double) this.f65454f;
                }
                String trim = mo5817U0.trim();
                if (m6636w(abstractC23632g, trim)) {
                    return mo6233c(abstractC23632g);
                }
                try {
                    return Double.valueOf("2.2250738585072012e-308".equals(trim) ? (char) 0 : Double.parseDouble(trim));
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(this.f65309a, trim, "not a valid `Double` value", new Object[0]);
                    throw null;
                }
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$g */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$g.class */
    public static class C23596g extends AbstractC23600k<Float> {

        /* renamed from: h */
        public static final C23596g f65445h = new C23596g(Float.TYPE, Float.valueOf(0.0f));

        /* renamed from: i */
        public static final C23596g f65446i = new C23596g(Float.class, null);

        public C23596g(Class<Float> cls, Float f) {
            super(cls, EnumC23876f.Float, f, Float.valueOf(0.0f));
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            Float f;
            if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NUMBER_FLOAT)) {
                f = Float.valueOf(abstractC23376j.mo5801t0());
            } else if (this.f65455g) {
                f = Float.valueOf(m6659S(abstractC23376j, abstractC23632g));
            } else {
                int mo7140q = abstractC23376j.mo7140q();
                if (mo7140q == 1) {
                    abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                    throw null;
                } else if (mo7140q == 3) {
                    f = mo6676A(abstractC23376j, abstractC23632g);
                } else if (mo7140q == 11) {
                    f = mo6233c(abstractC23632g);
                } else if (mo7140q == 6) {
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    f = m6639t(mo5817U0);
                    if (f == null) {
                        EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), mo6223m());
                        if (m6637v == EnumC23446b.AsNull) {
                            f = mo6233c(abstractC23632g);
                        } else if (m6637v == EnumC23446b.AsEmpty) {
                            f = (Float) this.f65454f;
                        } else {
                            String trim = mo5817U0.trim();
                            if (m6636w(abstractC23632g, trim)) {
                                f = mo6233c(abstractC23632g);
                            } else {
                                try {
                                    f = Float.valueOf(Float.parseFloat(trim));
                                } catch (IllegalArgumentException e) {
                                    abstractC23632g.m6492N(this.f65309a, trim, "not a valid `Float` value", new Object[0]);
                                    throw null;
                                }
                            }
                        }
                    }
                } else if (mo7140q != 7 && mo7140q != 8) {
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                } else {
                    f = Float.valueOf(abstractC23376j.mo5801t0());
                }
            }
            return f;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$h */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$h.class */
    public static final class C23597h extends AbstractC23600k<Integer> {

        /* renamed from: h */
        public static final C23597h f65447h = new C23597h(Integer.TYPE, 0);

        /* renamed from: i */
        public static final C23597h f65448i = new C23597h(Integer.class, null);

        public C23597h(Class<Integer> cls, Integer num) {
            super(cls, EnumC23876f.Integer, num, 0);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            return abstractC23376j.mo7147T1() ? Integer.valueOf(abstractC23376j.mo5800z0()) : this.f65455g ? Integer.valueOf(m6658T(abstractC23376j, abstractC23632g)) : m6656V(abstractC23376j, abstractC23632g, Integer.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: f */
        public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
            return abstractC23376j.mo7147T1() ? Integer.valueOf(abstractC23376j.mo5800z0()) : this.f65455g ? Integer.valueOf(m6658T(abstractC23376j, abstractC23632g)) : m6656V(abstractC23376j, abstractC23632g, Integer.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: n */
        public boolean mo6222n() {
            return true;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$i */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$i.class */
    public static final class C23598i extends AbstractC23600k<Long> {

        /* renamed from: h */
        public static final C23598i f65449h = new C23598i(Long.TYPE, 0L);

        /* renamed from: i */
        public static final C23598i f65450i = new C23598i(Long.class, null);

        public C23598i(Class<Long> cls, Long l) {
            super(cls, EnumC23876f.Integer, l, 0L);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            return abstractC23376j.mo7147T1() ? Long.valueOf(abstractC23376j.mo5830B0()) : this.f65455g ? Long.valueOf(m6654X(abstractC23376j, abstractC23632g)) : m6655W(abstractC23376j, abstractC23632g, Long.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: n */
        public boolean mo6222n() {
            return true;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$j */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$j.class */
    public static class C23599j extends AbstractC23552e0<Object> {

        /* renamed from: d */
        public static final C23599j f65451d = new C23599j();

        public C23599j() {
            super(Number.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            boolean z;
            int i;
            int mo7140q = abstractC23376j.mo7140q();
            if (mo7140q == 1) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else if (mo7140q == 3) {
                return mo6676A(abstractC23376j, abstractC23632g);
            } else {
                if (mo7140q != 6) {
                    if (mo7140q == 7) {
                        return abstractC23632g.m6491O(AbstractC23541b0.f65308c) ? m6634y(abstractC23376j, abstractC23632g) : abstractC23376j.mo5827F0();
                    } else if (mo7140q == 8) {
                        return (!abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) || abstractC23376j.mo5815Z1()) ? abstractC23376j.mo5827F0() : abstractC23376j.mo5808k0();
                    } else {
                        AbstractC23698i abstractC23698i = this.f65310b;
                        if (abstractC23698i == null) {
                            abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                        }
                        abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                        throw null;
                    }
                }
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, mo6223m());
                if (m6637v == EnumC23446b.AsNull || m6637v == EnumC23446b.AsEmpty) {
                    return null;
                }
                String trim = mo5817U0.trim();
                if (m6671F(trim)) {
                    return null;
                }
                if (m6666K(trim)) {
                    return Double.valueOf(Double.POSITIVE_INFINITY);
                }
                if (m6667J(trim)) {
                    return Double.valueOf(Double.NEGATIVE_INFINITY);
                }
                if (m6668I(trim)) {
                    return Double.valueOf(Double.NaN);
                }
                try {
                    int length = trim.length();
                    if (length > 0) {
                        char charAt = trim.charAt(0);
                        if (charAt != '-' && charAt != '+') {
                            i = 0;
                        } else if (length != 1) {
                            i = 1;
                        }
                        while (true) {
                            z = true;
                            if (i >= length) {
                                break;
                            }
                            char charAt2 = trim.charAt(i);
                            if (charAt2 > '9' || charAt2 < '0') {
                                break;
                            }
                            i++;
                        }
                    }
                    z = false;
                    if (!z) {
                        return abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? new BigDecimal(trim) : Double.valueOf(trim);
                    } else if (abstractC23632g.m6488R(EnumC23694h.USE_BIG_INTEGER_FOR_INTS)) {
                        return new BigInteger(trim);
                    } else {
                        long parseLong = Long.parseLong(trim);
                        return (abstractC23632g.m6488R(EnumC23694h.USE_LONG_FOR_INTS) || parseLong > 2147483647L || parseLong < -2147483648L) ? Long.valueOf(parseLong) : Integer.valueOf((int) parseLong);
                    }
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(this.f65309a, trim, "not a valid number", new Object[0]);
                    throw null;
                }
            }
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: f */
        public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
            int mo7140q = abstractC23376j.mo7140q();
            return (mo7140q == 6 || mo7140q == 7 || mo7140q == 8) ? mo6232d(abstractC23376j, abstractC23632g) : abstractC23709e.mo6205e(abstractC23376j, abstractC23632g);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public final EnumC23876f mo6221o() {
            return EnumC23876f.Integer;
        }
    }

    /* renamed from: e.k.a.c.d0.z.v$k */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$k.class */
    public static abstract class AbstractC23600k<T> extends AbstractC23552e0<T> {

        /* renamed from: d */
        public final EnumC23876f f65452d;

        /* renamed from: e */
        public final T f65453e;

        /* renamed from: f */
        public final T f65454f;

        /* renamed from: g */
        public final boolean f65455g;

        public AbstractC23600k(Class<T> cls, EnumC23876f enumC23876f, T t, T t2) {
            super((Class<?>) cls);
            this.f65452d = enumC23876f;
            this.f65453e = t;
            this.f65454f = t2;
            this.f65455g = cls.isPrimitive();
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r
        /* renamed from: c */
        public final T mo6233c(AbstractC23632g abstractC23632g) throws C23733k {
            if (!this.f65455g || !abstractC23632g.m6488R(EnumC23694h.FAIL_ON_NULL_FOR_PRIMITIVES)) {
                return this.f65453e;
            }
            abstractC23632g.m6479a0(this, "Cannot map `null` into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", C23914g.m5761f(this.f65309a));
            throw null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
            return this.f65454f;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public final EnumC23876f mo6221o() {
            return this.f65452d;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.v$l */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/v$l.class */
    public static class C23601l extends AbstractC23600k<Short> {

        /* renamed from: h */
        public static final C23601l f65456h = new C23601l(Short.TYPE, 0);

        /* renamed from: i */
        public static final C23601l f65457i = new C23601l(Short.class, null);

        public C23601l(Class<Short> cls, Short sh) {
            super(cls, EnumC23876f.Integer, sh, (short) 0);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            Short sh;
            if (abstractC23376j.mo7147T1()) {
                sh = Short.valueOf(abstractC23376j.mo7204Q0());
            } else if (this.f65455g) {
                sh = Short.valueOf(m6652Z(abstractC23376j, abstractC23632g));
            } else {
                EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
                EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
                int mo7140q = abstractC23376j.mo7140q();
                if (mo7140q == 1) {
                    abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                    throw null;
                } else if (mo7140q == 3) {
                    sh = mo6676A(abstractC23376j, abstractC23632g);
                } else if (mo7140q == 11) {
                    sh = mo6233c(abstractC23632g);
                } else if (mo7140q == 6) {
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), mo6223m());
                    if (m6637v == enumC23446b2) {
                        sh = mo6233c(abstractC23632g);
                    } else if (m6637v == enumC23446b) {
                        sh = (Short) this.f65454f;
                    } else {
                        String trim = mo5817U0.trim();
                        if (m6636w(abstractC23632g, trim)) {
                            sh = mo6233c(abstractC23632g);
                        } else {
                            try {
                                int m7117f = C23400f.m7117f(trim);
                                boolean z = true;
                                if (m7117f >= -32768) {
                                    z = m7117f > 32767;
                                }
                                if (z) {
                                    abstractC23632g.m6492N(this.f65309a, trim, "overflow, value cannot be represented as 16-bit value", new Object[0]);
                                    throw null;
                                }
                                sh = Short.valueOf((short) m7117f);
                            } catch (IllegalArgumentException e) {
                                abstractC23632g.m6492N(this.f65309a, trim, "not a valid Short value", new Object[0]);
                                throw null;
                            }
                        }
                    }
                } else if (mo7140q == 7) {
                    sh = Short.valueOf(abstractC23376j.mo7204Q0());
                } else if (mo7140q != 8) {
                    AbstractC23698i abstractC23698i = this.f65310b;
                    if (abstractC23698i == null) {
                        abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                    }
                    abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                    throw null;
                } else {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, this.f65309a);
                    sh = m6638u == enumC23446b2 ? mo6233c(abstractC23632g) : m6638u == enumC23446b ? (Short) this.f65454f : Short.valueOf(abstractC23376j.mo7204Q0());
                }
            }
            return sh;
        }
    }

    static {
        for (int i = 0; i < 11; i++) {
            f65434a.add(new Class[]{Boolean.class, Byte.class, Short.class, Character.class, Integer.class, Long.class, Float.class, Double.class, Number.class, BigDecimal.class, BigInteger.class}[i].getName());
        }
    }
}
