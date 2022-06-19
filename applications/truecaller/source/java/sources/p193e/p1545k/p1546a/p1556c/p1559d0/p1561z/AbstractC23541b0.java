package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import com.amazon.device.ads.DtbConstants;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.EnumC23310j0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1551v.C23392a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23469d;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23479m;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23528s;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23530u;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23617c;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23622h;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23924n;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.d0.z.b0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/b0.class */
public abstract class AbstractC23541b0<T> extends AbstractC23700j<T> implements Serializable {

    /* renamed from: c */
    public static final int f65308c = EnumC23694h.USE_BIG_INTEGER_FOR_INTS.f65714b | EnumC23694h.USE_LONG_FOR_INTS.f65714b;

    /* renamed from: a */
    public final Class<?> f65309a;

    /* renamed from: b */
    public final AbstractC23698i f65310b;

    static {
        int i = EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS.f65714b;
        int i2 = EnumC23694h.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT.f65714b;
    }

    public AbstractC23541b0(AbstractC23541b0<?> abstractC23541b0) {
        this.f65309a = abstractC23541b0.f65309a;
        this.f65310b = abstractC23541b0.f65310b;
    }

    public AbstractC23541b0(AbstractC23698i abstractC23698i) {
        this.f65309a = abstractC23698i == null ? Object.class : abstractC23698i.f65728a;
        this.f65310b = abstractC23698i;
    }

    public AbstractC23541b0(Class<?> cls) {
        this.f65309a = cls;
        this.f65310b = null;
    }

    /* renamed from: G */
    public static final boolean m6670G(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) > ' ') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: M */
    public static final boolean m6664M(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? false : true;
    }

    /* renamed from: A */
    public T mo6676A(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23446b m6673D = m6673D(abstractC23632g);
        boolean m6488R = abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS);
        if (m6488R || m6673D != EnumC23446b.Fail) {
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
            if (mo5811i2 == enumC23381m) {
                int ordinal = m6673D.ordinal();
                if (ordinal == 1 || ordinal == 2) {
                    return mo6233c(abstractC23632g);
                }
                if (ordinal == 3) {
                    return (T) mo6226j(abstractC23632g);
                }
            } else if (m6488R) {
                EnumC23381m enumC23381m2 = EnumC23381m.START_ARRAY;
                if (!abstractC23376j.mo7150O1(enumC23381m2)) {
                    T mo6232d = mo6232d(abstractC23376j, abstractC23632g);
                    if (abstractC23376j.mo5811i2() == enumC23381m) {
                        return mo6232d;
                    }
                    m6643k0(abstractC23632g);
                    throw null;
                }
                String format = String.format("Cannot deserialize instance of %s out of %s token: nested Arrays not allowed with %s", C23914g.m5776E(this.f65309a), enumC23381m2, "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS");
                AbstractC23698i abstractC23698i = this.f65310b;
                if (abstractC23698i == null) {
                    abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6497I(abstractC23698i, abstractC23376j.mo7142l(), abstractC23376j, format, new Object[0]);
                throw null;
            }
        }
        AbstractC23698i abstractC23698i2 = this.f65310b;
        if (abstractC23698i2 == null) {
            abstractC23698i2 = abstractC23632g.m6465o(this.f65309a);
        }
        abstractC23632g.m6497I(abstractC23698i2, EnumC23381m.START_ARRAY, abstractC23376j, null, new Object[0]);
        throw null;
    }

    /* renamed from: B */
    public Object m6675B(AbstractC23632g abstractC23632g, EnumC23446b enumC23446b, Class cls) throws IOException {
        int ordinal = enumC23446b.ordinal();
        if (ordinal == 0) {
            m6641r(abstractC23632g, enumC23446b, cls, "", "empty String (\"\")");
            return null;
        } else if (ordinal == 3) {
            return mo6226j(abstractC23632g);
        } else {
            return null;
        }
    }

    /* renamed from: C */
    public T m6674C(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23876f enumC23876f = EnumC23876f.Integer;
        EnumC23446b enumC23446b = EnumC23446b.TryConvert;
        EnumC23448d enumC23448d = EnumC23448d.String;
        AbstractC23491w mo6533i0 = mo6533i0();
        Class<?> mo6223m = mo6223m();
        String mo7001F1 = abstractC23376j.mo7001F1();
        if (mo6533i0 == null || !mo6533i0.mo6609h()) {
            if (mo7001F1.isEmpty()) {
                return (T) m6675B(abstractC23632g, abstractC23632g.m6463q(mo6221o(), mo6223m, EnumC23448d.EmptyString), mo6223m);
            }
            if (m6670G(mo7001F1)) {
                return (T) m6675B(abstractC23632g, abstractC23632g.m6462r(mo6221o(), mo6223m, EnumC23446b.Fail), mo6223m);
            }
            String str = mo7001F1;
            if (mo6533i0 != null) {
                String trim = mo7001F1.trim();
                if (mo6533i0.mo6611e() && abstractC23632g.m6463q(enumC23876f, Integer.class, enumC23448d) == enumC23446b) {
                    return (T) mo6533i0.mo6600q(abstractC23632g, m6657U(abstractC23632g, trim));
                }
                if (mo6533i0.mo6610f() && abstractC23632g.m6463q(enumC23876f, Long.class, enumC23448d) == enumC23446b) {
                    return (T) mo6533i0.mo6599r(abstractC23632g, m6653Y(abstractC23632g, trim));
                }
                str = trim;
                if (mo6533i0.mo6613c()) {
                    str = trim;
                    if (abstractC23632g.m6463q(EnumC23876f.Boolean, Boolean.class, enumC23448d) == enumC23446b) {
                        String trim2 = trim.trim();
                        if ("true".equals(trim2)) {
                            return (T) mo6533i0.mo6602o(abstractC23632g, true);
                        }
                        str = trim;
                        if ("false".equals(trim2)) {
                            return (T) mo6533i0.mo6602o(abstractC23632g, false);
                        }
                    }
                }
            }
            abstractC23632g.m6501E(mo6223m, mo6533i0, abstractC23632g.f65505g, "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
            throw null;
        }
        return (T) mo6533i0.mo6598t(abstractC23632g, mo7001F1);
    }

    /* renamed from: D */
    public EnumC23446b m6673D(AbstractC23632g abstractC23632g) {
        return abstractC23632g.m6463q(mo6221o(), mo6223m(), EnumC23448d.EmptyArray);
    }

    /* renamed from: E */
    public final AbstractC23484r m6672E(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d, EnumC23310j0 enumC23310j0, AbstractC23700j<?> abstractC23700j) throws C23733k {
        if (enumC23310j0 == EnumC23310j0.FAIL) {
            return abstractC23462d == null ? C23530u.m6692a(abstractC23632g.m6465o(abstractC23700j.mo6223m())) : new C23530u(abstractC23462d.mo6107d(), abstractC23462d.getType());
        } else if (enumC23310j0 != EnumC23310j0.AS_EMPTY) {
            if (enumC23310j0 != EnumC23310j0.SKIP) {
                return null;
            }
            C23529t c23529t = C23529t.f65285b;
            return C23529t.f65285b;
        } else if (abstractC23700j == null) {
            return null;
        } else {
            if ((abstractC23700j instanceof AbstractC23469d) && !((AbstractC23469d) abstractC23700j).f65115f.mo6607j()) {
                AbstractC23698i type = abstractC23462d.getType();
                abstractC23632g.mo6466m(type, String.format("Cannot create empty instance of %s, no default Creator", type));
                throw null;
            }
            EnumC23892a mo6227i = abstractC23700j.mo6227i();
            if (mo6227i == EnumC23892a.ALWAYS_NULL) {
                C23529t c23529t2 = C23529t.f65285b;
                return C23529t.f65286c;
            } else if (mo6227i != EnumC23892a.CONSTANT) {
                return new C23528s(abstractC23700j);
            } else {
                Object mo6226j = abstractC23700j.mo6226j(abstractC23632g);
                return mo6226j == null ? C23529t.f65286c : new C23529t(mo6226j);
            }
        }
    }

    /* renamed from: F */
    public boolean m6671F(String str) {
        return AnalyticsConstants.NULL.equals(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if ("False".equals(r4) != false) goto L12;
     */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m6669H(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            char r0 = r0.charAt(r1)
            r6 = r0
            r0 = r6
            r1 = 102(0x66, float:1.43E-43)
            if (r0 != r1) goto L15
            java.lang.String r0 = "false"
            r1 = r4
            boolean r0 = r0.equals(r1)
            return r0
        L15:
            r0 = r5
            r7 = r0
            r0 = r6
            r1 = 70
            if (r0 != r1) goto L38
            java.lang.String r0 = "FALSE"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L35
            r0 = r5
            r7 = r0
            java.lang.String r0 = "False"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
        L35:
            r0 = 1
            r7 = r0
        L38:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0.m6669H(java.lang.String):boolean");
    }

    /* renamed from: I */
    public final boolean m6668I(String str) {
        return "NaN".equals(str);
    }

    /* renamed from: J */
    public final boolean m6667J(String str) {
        return "-Infinity".equals(str) || "-INF".equals(str);
    }

    /* renamed from: K */
    public final boolean m6666K(String str) {
        return "Infinity".equals(str) || "INF".equals(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if ("True".equals(r4) != false) goto L12;
     */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m6665L(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            char r0 = r0.charAt(r1)
            r6 = r0
            r0 = r6
            r1 = 116(0x74, float:1.63E-43)
            if (r0 != r1) goto L15
            java.lang.String r0 = "true"
            r1 = r4
            boolean r0 = r0.equals(r1)
            return r0
        L15:
            r0 = r5
            r7 = r0
            r0 = r6
            r1 = 84
            if (r0 != r1) goto L38
            java.lang.String r0 = "TRUE"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L35
            r0 = r5
            r7 = r0
            java.lang.String r0 = "True"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
        L35:
            r0 = 1
            r7 = r0
        L38:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0.m6665L(java.lang.String):boolean");
    }

    /* renamed from: N */
    public final Boolean m6663N(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Class<?> cls) throws IOException {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(cls, abstractC23376j);
            throw null;
        } else if (mo7140q == 3) {
            return (Boolean) mo6676A(abstractC23376j, abstractC23632g);
        } else {
            if (mo7140q != 6) {
                if (mo7140q == 7) {
                    return m6635x(abstractC23376j, abstractC23632g, cls);
                }
                switch (mo7140q) {
                    case 9:
                        return bool;
                    case 10:
                        return bool2;
                    case 11:
                        return null;
                    default:
                        abstractC23632g.m6496J(cls, abstractC23376j);
                        throw null;
                }
            }
            String mo5817U0 = abstractC23376j.mo5817U0();
            EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Boolean, cls);
            if (m6637v == EnumC23446b.AsNull) {
                return null;
            }
            if (m6637v == EnumC23446b.AsEmpty) {
                return bool2;
            }
            String trim = mo5817U0.trim();
            int length = trim.length();
            if (length == 4) {
                if (m6665L(trim)) {
                    return bool;
                }
            } else if (length == 5 && m6669H(trim)) {
                return bool2;
            }
            if (m6636w(abstractC23632g, trim)) {
                return null;
            }
            abstractC23632g.m6492N(cls, trim, "only \"true\" or \"false\" recognized", new Object[0]);
            throw null;
        }
    }

    /* renamed from: O */
    public final boolean m6662O(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Class<?> cls = Boolean.TYPE;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(cls, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q != 6) {
                if (mo7140q == 7) {
                    return Boolean.TRUE.equals(m6635x(abstractC23376j, abstractC23632g, cls));
                }
                switch (mo7140q) {
                    case 9:
                        return true;
                    case 10:
                        return false;
                    case 11:
                        m6648d0(abstractC23632g);
                        return false;
                }
            }
            String mo5817U0 = abstractC23376j.mo5817U0();
            EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Boolean, cls);
            if (m6637v == EnumC23446b.AsNull) {
                m6648d0(abstractC23632g);
                return false;
            } else if (m6637v == EnumC23446b.AsEmpty) {
                return false;
            } else {
                String trim = mo5817U0.trim();
                int length = trim.length();
                if (length == 4) {
                    if (m6665L(trim)) {
                        return true;
                    }
                } else if (length == 5 && m6669H(trim)) {
                    return false;
                }
                if (m6671F(trim)) {
                    m6647e0(abstractC23632g, trim);
                    return false;
                }
                abstractC23632g.m6492N(cls, trim, "only \"true\"/\"True\"/\"TRUE\" or \"false\"/\"False\"/\"FALSE\" recognized", new Object[0]);
                throw null;
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            boolean m6662O = m6662O(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6662O;
        }
        abstractC23632g.m6496J(cls, abstractC23376j);
        throw null;
    }

    /* renamed from: P */
    public final byte m6661P(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Byte.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return (byte) 0;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Byte.TYPE);
                if (m6637v == enumC23446b2 || m6637v == enumC23446b) {
                    return (byte) 0;
                }
                String trim = mo5817U0.trim();
                if (m6671F(trim)) {
                    m6647e0(abstractC23632g, trim);
                    return (byte) 0;
                }
                try {
                    int m7117f = C23400f.m7117f(trim);
                    boolean z = true;
                    if (m7117f >= -128) {
                        z = m7117f > 255;
                    }
                    if (!z) {
                        return (byte) m7117f;
                    }
                    abstractC23632g.m6492N(this.f65309a, trim, "overflow, value cannot be represented as 8-bit value", new Object[0]);
                    throw null;
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(this.f65309a, trim, "not a valid `byte` value", new Object[0]);
                    throw null;
                }
            } else if (mo7140q == 7) {
                return abstractC23376j.mo7205J();
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, Byte.TYPE);
                    if (m6638u != enumC23446b2 && m6638u != enumC23446b) {
                        return abstractC23376j.mo7205J();
                    }
                    return (byte) 0;
                }
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            byte m6661P = m6661P(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6661P;
        }
        abstractC23632g.m6498H(abstractC23632g.m6465o(Byte.TYPE), abstractC23376j);
        throw null;
    }

    /* renamed from: Q */
    public Date mo6581Q(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Date date;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        } else if (mo7140q != 3) {
            if (mo7140q == 11) {
                return (Date) mo6233c(abstractC23632g);
            }
            if (mo7140q == 6) {
                String trim = abstractC23376j.mo5817U0().trim();
                try {
                    return trim.isEmpty() ? m6637v(abstractC23632g, trim, mo6221o(), mo6223m()).ordinal() != 3 ? null : new Date(0L) : m6671F(trim) ? null : abstractC23632g.m6484V(trim);
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(this.f65309a, trim, "not a valid representation (error: %s)", C23914g.m5757j(e));
                    throw null;
                }
            } else if (mo7140q != 7) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else {
                try {
                    return new Date(abstractC23376j.mo5830B0());
                } catch (C23375i | C23392a e2) {
                    abstractC23632g.m6493M(this.f65309a, abstractC23376j.mo5827F0(), "not a valid 64-bit `long` for creating `java.util.Date`", new Object[0]);
                    throw null;
                }
            }
        } else {
            EnumC23446b m6673D = m6673D(abstractC23632g);
            boolean m6488R = abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS);
            if (m6488R || m6673D != EnumC23446b.Fail) {
                if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                    int ordinal = m6673D.ordinal();
                    if (ordinal == 1 || ordinal == 2) {
                        date = (Date) mo6233c(abstractC23632g);
                    } else if (ordinal == 3) {
                        date = (Date) mo6226j(abstractC23632g);
                    }
                    return date;
                } else if (m6488R) {
                    Date mo6581Q = mo6581Q(abstractC23376j, abstractC23632g);
                    m6649c0(abstractC23376j, abstractC23632g);
                    date = mo6581Q;
                    return date;
                }
            }
            abstractC23632g.m6497I(abstractC23632g.m6465o(this.f65309a), EnumC23381m.START_ARRAY, abstractC23376j, null, new Object[0]);
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    /* renamed from: R */
    public final double m6660R(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Double.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                Double m6640s = m6640s(mo5817U0);
                if (m6640s != null) {
                    return m6640s.doubleValue();
                }
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Double.TYPE);
                if (m6637v == EnumC23446b.AsNull || m6637v == EnumC23446b.AsEmpty) {
                    return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
                }
                String trim = mo5817U0.trim();
                if (m6671F(trim)) {
                    m6647e0(abstractC23632g, trim);
                    return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
                }
                try {
                    return "2.2250738585072012e-308".equals(trim) ? (char) 0 : Double.parseDouble(trim);
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(Double.TYPE, trim, "not a valid `double` value (as String to convert)", new Object[0]);
                    throw null;
                }
            } else if (mo7140q == 7 || mo7140q == 8) {
                return abstractC23376j.mo5805n0();
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            double m6660R = m6660R(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6660R;
        }
        abstractC23632g.m6496J(Double.TYPE, abstractC23376j);
        throw null;
    }

    /* renamed from: S */
    public final float m6659S(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Float.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return 0.0f;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                Float m6639t = m6639t(mo5817U0);
                if (m6639t != null) {
                    return m6639t.floatValue();
                }
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Float.TYPE);
                if (m6637v == EnumC23446b.AsNull || m6637v == EnumC23446b.AsEmpty) {
                    return 0.0f;
                }
                String trim = mo5817U0.trim();
                if (m6671F(trim)) {
                    m6647e0(abstractC23632g, trim);
                    return 0.0f;
                }
                try {
                    return Float.parseFloat(trim);
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(Float.TYPE, trim, "not a valid `float` value", new Object[0]);
                    throw null;
                }
            } else if (mo7140q == 7 || mo7140q == 8) {
                return abstractC23376j.mo5801t0();
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            float m6659S = m6659S(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6659S;
        }
        abstractC23632g.m6496J(Float.TYPE, abstractC23376j);
        throw null;
    }

    /* renamed from: T */
    public final int m6658T(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Integer.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return 0;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Integer.TYPE);
                if (m6637v == enumC23446b2 || m6637v == enumC23446b) {
                    return 0;
                }
                String trim = mo5817U0.trim();
                if (!m6671F(trim)) {
                    return m6657U(abstractC23632g, trim);
                }
                m6647e0(abstractC23632g, trim);
                return 0;
            } else if (mo7140q == 7) {
                return abstractC23376j.mo5800z0();
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, Integer.TYPE);
                    if (m6638u != enumC23446b2 && m6638u != enumC23446b) {
                        return abstractC23376j.mo6946s1();
                    }
                    return 0;
                }
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            int m6658T = m6658T(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6658T;
        }
        abstractC23632g.m6496J(Integer.TYPE, abstractC23376j);
        throw null;
    }

    /* renamed from: U */
    public final int m6657U(AbstractC23632g abstractC23632g, String str) throws IOException {
        try {
            if (str.length() <= 9) {
                return C23400f.m7117f(str);
            }
            long parseLong = Long.parseLong(str);
            if (!(parseLong < -2147483648L || parseLong > 2147483647L)) {
                return (int) parseLong;
            }
            abstractC23632g.m6492N(Integer.TYPE, str, "Overflow: numeric value (%s) out of range of int (%d -%d)", str, Integer.MIN_VALUE, Integer.MAX_VALUE);
            throw null;
        } catch (IllegalArgumentException e) {
            abstractC23632g.m6492N(Integer.TYPE, str, "not a valid `int` value", new Object[0]);
            throw null;
        }
    }

    /* renamed from: V */
    public final Integer m6656V(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Class<?> cls) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(cls, abstractC23376j);
            throw null;
        } else if (mo7140q == 3) {
            return (Integer) mo6676A(abstractC23376j, abstractC23632g);
        } else {
            if (mo7140q == 11) {
                return (Integer) mo6233c(abstractC23632g);
            }
            if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), this.f65309a);
                if (m6637v == enumC23446b2) {
                    return (Integer) mo6233c(abstractC23632g);
                }
                if (m6637v == enumC23446b) {
                    return (Integer) mo6226j(abstractC23632g);
                }
                String trim = mo5817U0.trim();
                return m6636w(abstractC23632g, trim) ? (Integer) mo6233c(abstractC23632g) : Integer.valueOf(m6657U(abstractC23632g, trim));
            } else if (mo7140q == 7) {
                return Integer.valueOf(abstractC23376j.mo5800z0());
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, cls);
                    return m6638u == enumC23446b2 ? (Integer) mo6233c(abstractC23632g) : m6638u == enumC23446b ? (Integer) mo6226j(abstractC23632g) : Integer.valueOf(abstractC23376j.mo6946s1());
                }
                AbstractC23698i abstractC23698i = this.f65310b;
                if (abstractC23698i == null) {
                    abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                throw null;
            }
        }
    }

    /* renamed from: W */
    public final Long m6655W(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Class<?> cls) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(cls, abstractC23376j);
            throw null;
        } else if (mo7140q == 3) {
            return (Long) mo6676A(abstractC23376j, abstractC23632g);
        } else {
            if (mo7140q == 11) {
                return (Long) mo6233c(abstractC23632g);
            }
            if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, mo6221o(), this.f65309a);
                if (m6637v == enumC23446b2) {
                    return (Long) mo6233c(abstractC23632g);
                }
                if (m6637v == enumC23446b) {
                    return (Long) mo6226j(abstractC23632g);
                }
                String trim = mo5817U0.trim();
                return m6636w(abstractC23632g, trim) ? (Long) mo6233c(abstractC23632g) : Long.valueOf(m6653Y(abstractC23632g, trim));
            } else if (mo7140q == 7) {
                return Long.valueOf(abstractC23376j.mo5830B0());
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, cls);
                    return m6638u == enumC23446b2 ? (Long) mo6233c(abstractC23632g) : m6638u == enumC23446b ? (Long) mo6226j(abstractC23632g) : Long.valueOf(abstractC23376j.mo7166B1());
                }
                AbstractC23698i abstractC23698i = this.f65310b;
                if (abstractC23698i == null) {
                    abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                }
                abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                throw null;
            }
        }
    }

    /* renamed from: X */
    public final long m6654X(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Long.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return 0L;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Long.TYPE);
                if (m6637v == enumC23446b2 || m6637v == enumC23446b) {
                    return 0L;
                }
                String trim = mo5817U0.trim();
                if (!m6671F(trim)) {
                    return m6653Y(abstractC23632g, trim);
                }
                m6647e0(abstractC23632g, trim);
                return 0L;
            } else if (mo7140q == 7) {
                return abstractC23376j.mo5830B0();
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, Long.TYPE);
                    if (m6638u != enumC23446b2 && m6638u != enumC23446b) {
                        return abstractC23376j.mo7166B1();
                    }
                    return 0L;
                }
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            long m6654X = m6654X(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6654X;
        }
        abstractC23632g.m6496J(Long.TYPE, abstractC23376j);
        throw null;
    }

    /* renamed from: Y */
    public final long m6653Y(AbstractC23632g abstractC23632g, String str) throws IOException {
        try {
            return C23400f.m7115h(str);
        } catch (IllegalArgumentException e) {
            abstractC23632g.m6492N(Long.TYPE, str, "not a valid `long` value", new Object[0]);
            throw null;
        }
    }

    /* renamed from: Z */
    public final short m6652Z(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.AsEmpty;
        EnumC23446b enumC23446b2 = EnumC23446b.AsNull;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1) {
            abstractC23632g.m6496J(Short.TYPE, abstractC23376j);
            throw null;
        }
        if (mo7140q != 3) {
            if (mo7140q == 11) {
                m6648d0(abstractC23632g);
                return (short) 0;
            } else if (mo7140q == 6) {
                String mo5817U0 = abstractC23376j.mo5817U0();
                EnumC23446b m6637v = m6637v(abstractC23632g, mo5817U0, EnumC23876f.Integer, Short.TYPE);
                if (m6637v == enumC23446b2 || m6637v == enumC23446b) {
                    return (short) 0;
                }
                String trim = mo5817U0.trim();
                if (m6671F(trim)) {
                    m6647e0(abstractC23632g, trim);
                    return (short) 0;
                }
                try {
                    int m7117f = C23400f.m7117f(trim);
                    boolean z = true;
                    if (m7117f >= -32768) {
                        z = m7117f > 32767;
                    }
                    if (!z) {
                        return (short) m7117f;
                    }
                    abstractC23632g.m6492N(Short.TYPE, trim, "overflow, value cannot be represented as 16-bit value", new Object[0]);
                    throw null;
                } catch (IllegalArgumentException e) {
                    abstractC23632g.m6492N(Short.TYPE, trim, "not a valid `short` value", new Object[0]);
                    throw null;
                }
            } else if (mo7140q == 7) {
                return abstractC23376j.mo7204Q0();
            } else {
                if (mo7140q == 8) {
                    EnumC23446b m6638u = m6638u(abstractC23376j, abstractC23632g, Short.TYPE);
                    if (m6638u != enumC23446b2 && m6638u != enumC23446b) {
                        return abstractC23376j.mo7204Q0();
                    }
                    return (short) 0;
                }
            }
        } else if (abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            abstractC23376j.mo5811i2();
            short m6652Z = m6652Z(abstractC23376j, abstractC23632g);
            m6649c0(abstractC23376j, abstractC23632g);
            return m6652Z;
        }
        abstractC23632g.m6498H(abstractC23632g.m6465o(Short.TYPE), abstractC23376j);
        throw null;
    }

    /* renamed from: a0 */
    public final String m6651a0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            return abstractC23376j.mo5817U0();
        }
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_EMBEDDED_OBJECT)) {
            Object mo5803p0 = abstractC23376j.mo5803p0();
            if (mo5803p0 instanceof byte[]) {
                return abstractC23632g.m6505A().m7262g((byte[]) mo5803p0, false);
            }
            if (mo5803p0 != null) {
                return mo5803p0.toString();
            }
            return null;
        } else if (abstractC23376j.mo7150O1(EnumC23381m.START_OBJECT)) {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        } else {
            String mo7001F1 = abstractC23376j.mo7001F1();
            if (mo7001F1 != null) {
                return mo7001F1;
            }
            abstractC23632g.m6496J(String.class, abstractC23376j);
            throw null;
        }
    }

    /* renamed from: b0 */
    public void m6650b0(AbstractC23632g abstractC23632g, boolean z, Enum<?> r11, String str) throws C23733k {
        abstractC23632g.m6479a0(this, "Cannot coerce %s to Null value as %s (%s `%s.%s` to allow)", str, m6633z(), z ? "enable" : "disable", r11.getDeclaringClass().getSimpleName(), r11.name());
        throw null;
    }

    /* renamed from: c0 */
    public void m6649c0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
            return;
        }
        m6643k0(abstractC23632g);
        throw null;
    }

    /* renamed from: d0 */
    public final void m6648d0(AbstractC23632g abstractC23632g) throws C23733k {
        if (!abstractC23632g.m6488R(EnumC23694h.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            return;
        }
        abstractC23632g.m6479a0(this, "Cannot coerce `null` to %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)", m6633z());
        throw null;
    }

    /* renamed from: e0 */
    public final void m6647e0(AbstractC23632g abstractC23632g, String str) throws C23733k {
        boolean z;
        EnumC23942p enumC23942p;
        EnumC23942p enumC23942p2 = EnumC23942p.ALLOW_COERCION_OF_SCALARS;
        if (!abstractC23632g.m6487S(enumC23942p2)) {
            z = true;
            enumC23942p = enumC23942p2;
        } else {
            EnumC23694h enumC23694h = EnumC23694h.FAIL_ON_NULL_FOR_PRIMITIVES;
            if (!abstractC23632g.m6488R(enumC23694h)) {
                return;
            }
            z = false;
            enumC23942p = enumC23694h;
        }
        m6650b0(abstractC23632g, z, enumC23942p, str.isEmpty() ? "empty String (\"\")" : String.format("String \"%s\"", str));
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
    }

    /* renamed from: f0 */
    public AbstractC23484r m6646f0(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d, AbstractC23700j<?> abstractC23700j) throws C23733k {
        EnumC23310j0 enumC23310j0 = abstractC23462d != null ? abstractC23462d.getMetadata().f66299g : null;
        if (enumC23310j0 == EnumC23310j0.SKIP) {
            C23529t c23529t = C23529t.f65285b;
            return C23529t.f65285b;
        } else if (enumC23310j0 != EnumC23310j0.FAIL) {
            AbstractC23484r m6672E = m6672E(abstractC23632g, abstractC23462d, enumC23310j0, abstractC23700j);
            return m6672E != null ? m6672E : abstractC23700j;
        } else if (abstractC23462d != null) {
            return new C23530u(abstractC23462d.mo6107d(), abstractC23462d.getType().mo5948k());
        } else {
            AbstractC23698i m6465o = abstractC23632g.m6465o(abstractC23700j.mo6223m());
            AbstractC23698i abstractC23698i = m6465o;
            if (m6465o.mo5931z()) {
                abstractC23698i = m6465o.mo5948k();
            }
            return C23530u.m6692a(abstractC23698i);
        }
    }

    /* renamed from: g0 */
    public AbstractC23700j<?> m6645g0(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d, AbstractC23700j<?> abstractC23700j) throws C23733k {
        AbstractC23663i mo6108c;
        Object mo6283h;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        if (!m6664M(m6455y, abstractC23462d) || (mo6108c = abstractC23462d.mo6108c()) == null || (mo6283h = m6455y.mo6283h(mo6108c)) == null) {
            return abstractC23700j;
        }
        AbstractC23918i<Object, Object> m6524g = abstractC23632g.m6524g(abstractC23462d.mo6108c(), mo6283h);
        AbstractC23698i mo5737a = m6524g.mo5737a(abstractC23632g.mo6470i());
        AbstractC23700j<?> abstractC23700j2 = abstractC23700j;
        if (abstractC23700j == null) {
            abstractC23700j2 = abstractC23632g.m6461s(mo5737a, abstractC23462d);
        }
        return new C23539a0(m6524g, mo5737a, abstractC23700j2);
    }

    /* renamed from: h0 */
    public AbstractC23311k.C23315d m6644h0(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d, Class<?> cls) {
        return abstractC23462d != null ? abstractC23462d.mo6330e(abstractC23632g.f65501c, cls) : abstractC23632g.f65501c.mo6856h(cls);
    }

    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return null;
    }

    /* renamed from: j0 */
    public AbstractC23698i mo6532j0() {
        return this.f65310b;
    }

    /* renamed from: k0 */
    public void m6643k0(AbstractC23632g abstractC23632g) throws IOException {
        abstractC23632g.m6474f0(this, EnumC23381m.END_ARRAY, "Attempted to unwrap '%s' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value", mo6223m().getName());
        throw null;
    }

    /* renamed from: l0 */
    public void mo6642l0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, String str) throws IOException {
        Class<?> cls = obj;
        if (obj == null) {
            cls = mo6223m();
        }
        C23924n c23924n = abstractC23632g.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            c23924n = c23924n2.f66183b;
        }
        if (!abstractC23632g.m6488R(EnumC23694h.FAIL_ON_UNKNOWN_PROPERTIES)) {
            abstractC23376j.mo7139w2();
            return;
        }
        Collection<Object> mo6225k = mo6225k();
        AbstractC23376j abstractC23376j2 = abstractC23632g.f65505g;
        int i = C23622h.f65478f;
        Class<?> cls2 = cls instanceof Class ? (Class) cls : cls.getClass();
        C23622h c23622h = new C23622h(abstractC23376j2, String.format("Unrecognized field \"%s\" (class %s), not marked as ignorable", str, cls2.getName()), abstractC23376j2.mo5819P(), cls2, str, mo6225k);
        c23622h.m6160g(cls, str);
        throw c23622h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: m */
    public Class<?> mo6223m() {
        return this.f65309a;
    }

    /* renamed from: r */
    public EnumC23446b m6641r(AbstractC23632g abstractC23632g, EnumC23446b enumC23446b, Class<?> cls, Object obj, String str) throws IOException {
        if (enumC23446b != EnumC23446b.Fail) {
            return enumC23446b;
        }
        throw new C23617c(abstractC23632g.f65505g, abstractC23632g.m6529b("Cannot coerce %s to %s (but could if coercion was enabled using `CoercionConfig`)", str, m6633z()), obj, cls);
    }

    /* renamed from: s */
    public Double m6640s(String str) {
        if (!str.isEmpty()) {
            char charAt = str.charAt(0);
            if (charAt == '-') {
                if (!m6667J(str)) {
                    return null;
                }
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            } else if (charAt == 'I') {
                if (!m6666K(str)) {
                    return null;
                }
                return Double.valueOf(Double.POSITIVE_INFINITY);
            } else if (charAt != 'N' || !m6668I(str)) {
                return null;
            } else {
                return Double.valueOf(Double.NaN);
            }
        }
        return null;
    }

    /* renamed from: t */
    public Float m6639t(String str) {
        if (!str.isEmpty()) {
            char charAt = str.charAt(0);
            if (charAt == '-') {
                if (!m6667J(str)) {
                    return null;
                }
                return Float.valueOf(Float.NEGATIVE_INFINITY);
            } else if (charAt == 'I') {
                if (!m6666K(str)) {
                    return null;
                }
                return Float.valueOf(Float.POSITIVE_INFINITY);
            } else if (charAt != 'N' || !m6668I(str)) {
                return null;
            } else {
                return Float.valueOf(Float.NaN);
            }
        }
        return null;
    }

    /* renamed from: u */
    public EnumC23446b m6638u(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Class<?> cls) throws IOException {
        EnumC23446b m6463q = abstractC23632g.m6463q(EnumC23876f.Integer, cls, EnumC23448d.Float);
        if (m6463q == EnumC23446b.Fail) {
            Number mo5827F0 = abstractC23376j.mo5827F0();
            StringBuilder m8728C = C22128a.m8728C("Floating-point value (");
            m8728C.append(abstractC23376j.mo5817U0());
            m8728C.append(")");
            m6641r(abstractC23632g, m6463q, cls, mo5827F0, m8728C.toString());
        }
        return m6463q;
    }

    /* renamed from: v */
    public EnumC23446b m6637v(AbstractC23632g abstractC23632g, String str, EnumC23876f enumC23876f, Class<?> cls) throws IOException {
        EnumC23446b enumC23446b = EnumC23446b.Fail;
        if (str.isEmpty()) {
            EnumC23446b m6463q = abstractC23632g.m6463q(enumC23876f, cls, EnumC23448d.EmptyString);
            m6641r(abstractC23632g, m6463q, cls, str, "empty String (\"\")");
            return m6463q;
        } else if (m6670G(str)) {
            EnumC23446b m6462r = abstractC23632g.m6462r(enumC23876f, cls, enumC23446b);
            m6641r(abstractC23632g, m6462r, cls, str, "blank String (all whitespace)");
            return m6462r;
        } else if (abstractC23632g.m6489Q(EnumC23385q.UNTYPED_SCALARS)) {
            return EnumC23446b.TryConvert;
        } else {
            EnumC23446b m6463q2 = abstractC23632g.m6463q(enumC23876f, cls, EnumC23448d.String);
            if (m6463q2 != enumC23446b) {
                return m6463q2;
            }
            abstractC23632g.m6479a0(this, "Cannot coerce String value (\"%s\") to %s (but might if coercion using `CoercionConfig` was enabled)", str, m6633z());
            throw null;
        }
    }

    /* renamed from: w */
    public boolean m6636w(AbstractC23632g abstractC23632g, String str) throws C23733k {
        if (m6671F(str)) {
            EnumC23942p enumC23942p = EnumC23942p.ALLOW_COERCION_OF_SCALARS;
            if (abstractC23632g.m6487S(enumC23942p)) {
                return true;
            }
            m6650b0(abstractC23632g, true, enumC23942p, "String \"null\"");
            throw null;
        }
        return false;
    }

    /* renamed from: x */
    public Boolean m6635x(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Class<?> cls) throws IOException {
        Boolean bool = Boolean.FALSE;
        EnumC23446b m6463q = abstractC23632g.m6463q(EnumC23876f.Boolean, cls, EnumC23448d.Integer);
        int ordinal = m6463q.ordinal();
        if (ordinal == 0) {
            Number mo5827F0 = abstractC23376j.mo5827F0();
            StringBuilder m8728C = C22128a.m8728C("Integer value (");
            m8728C.append(abstractC23376j.mo5817U0());
            m8728C.append(")");
            m6641r(abstractC23632g, m6463q, cls, mo5827F0, m8728C.toString());
            return bool;
        } else if (ordinal == 2) {
            return null;
        } else {
            if (ordinal == 3) {
                return bool;
            }
            boolean z = true;
            if (abstractC23376j.mo5829D0() != AbstractC23376j.EnumC23378b.INT) {
                return Boolean.valueOf(!DtbConstants.NETWORK_TYPE_UNKNOWN.equals(abstractC23376j.mo5817U0()));
            }
            if (abstractC23376j.mo5800z0() == 0) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: y */
    public Object m6634y(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        int i = abstractC23632g.f65502d;
        return EnumC23694h.USE_BIG_INTEGER_FOR_INTS.m6246d(i) ? abstractC23376j.mo5828E() : EnumC23694h.USE_LONG_FOR_INTS.m6246d(i) ? Long.valueOf(abstractC23376j.mo5830B0()) : abstractC23376j.mo5827F0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        if (java.util.Map.class.isAssignableFrom(r0) != false) goto L18;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m6633z() {
        /*
            r3 = this;
            r0 = r3
            e.k.a.c.i r0 = r0.mo6532j0()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L2c
            r0 = r4
            boolean r0 = r0.m6239G()
            if (r0 != 0) goto L2c
            r0 = r4
            boolean r0 = r0.mo5931z()
            if (r0 != 0) goto L22
            r0 = r4
            boolean r0 = r0.mo5949d()
            if (r0 == 0) goto L24
        L22:
            r0 = 1
            r6 = r0
        L24:
            r0 = r4
            java.lang.String r0 = p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5747t(r0)
            r4 = r0
            goto L55
        L2c:
            r0 = r3
            java.lang.Class r0 = r0.mo6223m()
            r4 = r0
            r0 = r4
            boolean r0 = r0.isArray()
            if (r0 != 0) goto L4e
            java.lang.Class<java.util.Collection> r0 = java.util.Collection.class
            r1 = r4
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 != 0) goto L4e
            r0 = r5
            r6 = r0
            java.lang.Class<java.util.Map> r0 = java.util.Map.class
            r1 = r4
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L50
        L4e:
            r0 = 1
            r6 = r0
        L50:
            r0 = r4
            java.lang.String r0 = p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5753n(r0)
            r4 = r0
        L55:
            r0 = r6
            if (r0 == 0) goto L61
            java.lang.String r0 = "element of "
            r1 = r4
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8543z2(r0, r1)
            return r0
        L61:
            r0 = r4
            java.lang.String r1 = " value"
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8543z2(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0.m6633z():java.lang.String");
    }
}
