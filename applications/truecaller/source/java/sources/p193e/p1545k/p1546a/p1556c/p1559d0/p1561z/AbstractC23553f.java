package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23620f;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23735a;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23737c;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23738d;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23742h;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23743i;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23744j;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23746l;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23748n;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23751q;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23753s;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23754t;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23755u;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23936w;
/* renamed from: e.k.a.c.d0.z.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/f.class */
public abstract class AbstractC23553f<T extends AbstractC23757l> extends AbstractC23541b0<T> {

    /* renamed from: d */
    public final Boolean f65324d;

    public AbstractC23553f(Class<T> cls, Boolean bool) {
        super((Class<?>) cls);
        this.f65324d = bool;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
    }

    /* renamed from: m0 */
    public final AbstractC23757l m6629m0(AbstractC23376j abstractC23376j, C23746l c23746l) throws IOException {
        Object mo5803p0 = abstractC23376j.mo5803p0();
        if (mo5803p0 == null) {
            Objects.requireNonNull(c23746l);
            return C23751q.f65823a;
        } else if (mo5803p0.getClass() == byte[].class) {
            byte[] bArr = (byte[]) mo5803p0;
            Objects.requireNonNull(c23746l);
            return bArr.length == 0 ? C23738d.f65789b : new C23738d(bArr);
        } else if (mo5803p0 instanceof C23936w) {
            Objects.requireNonNull(c23746l);
            return new C23754t((C23936w) mo5803p0);
        } else if (mo5803p0 instanceof AbstractC23757l) {
            return (AbstractC23757l) mo5803p0;
        } else {
            Objects.requireNonNull(c23746l);
            return new C23754t(mo5803p0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return true;
    }

    /* renamed from: n0 */
    public final AbstractC23757l m6628n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23746l c23746l) throws IOException {
        AbstractC23376j.EnumC23378b enumC23378b = AbstractC23376j.EnumC23378b.LONG;
        int i = abstractC23632g.f65502d;
        AbstractC23376j.EnumC23378b mo5829D0 = (AbstractC23541b0.f65308c & i) != 0 ? EnumC23694h.USE_BIG_INTEGER_FOR_INTS.m6246d(i) ? AbstractC23376j.EnumC23378b.BIG_INTEGER : EnumC23694h.USE_LONG_FOR_INTS.m6246d(i) ? enumC23378b : abstractC23376j.mo5829D0() : abstractC23376j.mo5829D0();
        if (mo5829D0 == AbstractC23376j.EnumC23378b.INT) {
            int mo5800z0 = abstractC23376j.mo5800z0();
            Objects.requireNonNull(c23746l);
            return (mo5800z0 > 10 || mo5800z0 < -1) ? new C23744j(mo5800z0) : C23744j.f65803b[mo5800z0 + 1];
        } else if (mo5829D0 == enumC23378b) {
            long mo5830B0 = abstractC23376j.mo5830B0();
            Objects.requireNonNull(c23746l);
            return new C23748n(mo5830B0);
        } else {
            BigInteger mo5828E = abstractC23376j.mo5828E();
            Objects.requireNonNull(c23746l);
            return mo5828E == null ? C23751q.f65823a : new C23737c(mo5828E);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Untyped;
    }

    /* renamed from: o0 */
    public void m6627o0(AbstractC23632g abstractC23632g, C23746l c23746l, String str, C23753s c23753s, AbstractC23757l abstractC23757l, AbstractC23757l abstractC23757l2) throws C23379k {
        C23751q c23751q = C23751q.f65823a;
        if (!abstractC23632g.m6488R(EnumC23694h.FAIL_ON_READING_DUP_TREE_KEY)) {
            if (!abstractC23632g.m6489Q(EnumC23385q.DUPLICATE_PROPERTIES)) {
                return;
            }
            if (abstractC23757l.mo6115y()) {
                C23735a c23735a = (C23735a) abstractC23757l;
                C23751q c23751q2 = abstractC23757l2;
                if (abstractC23757l2 == null) {
                    c23735a.m6154M();
                    c23751q2 = c23751q;
                }
                c23735a.f65783b.add(c23751q2);
                c23753s.m6149N(str, abstractC23757l);
                return;
            }
            Objects.requireNonNull(c23746l);
            C23735a c23735a2 = new C23735a(c23746l);
            c23735a2.f65783b.add(abstractC23757l);
            C23751q c23751q3 = abstractC23757l2;
            if (abstractC23757l2 == null) {
                c23735a2.m6154M();
                c23751q3 = c23751q;
            }
            c23735a2.f65783b.add(c23751q3);
            c23753s.m6149N(str, c23735a2);
            return;
        }
        throw new C23620f(abstractC23632g.f65505g, abstractC23632g.m6529b("Duplicate field '%s' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled", str), AbstractC23757l.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return this.f65324d;
    }

    /* renamed from: p0 */
    public final AbstractC23757l m6626p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23746l c23746l) throws IOException {
        C23742h c23742h;
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 2) {
            Objects.requireNonNull(c23746l);
            return new C23753s(c23746l);
        }
        switch (mo7140q) {
            case 5:
                return m6623s0(abstractC23376j, abstractC23632g, c23746l);
            case 6:
                String mo5817U0 = abstractC23376j.mo5817U0();
                Objects.requireNonNull(c23746l);
                return C23755u.m6147M(mo5817U0);
            case 7:
                return m6628n0(abstractC23376j, abstractC23632g, c23746l);
            case 8:
                AbstractC23376j.EnumC23378b mo5829D0 = abstractC23376j.mo5829D0();
                if (mo5829D0 == AbstractC23376j.EnumC23378b.BIG_DECIMAL) {
                    c23742h = c23746l.m6150b(abstractC23376j.mo5808k0());
                } else if (abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    if (abstractC23376j.mo5815Z1()) {
                        double mo5805n0 = abstractC23376j.mo5805n0();
                        Objects.requireNonNull(c23746l);
                        c23742h = new C23742h(mo5805n0);
                    } else {
                        c23742h = c23746l.m6150b(abstractC23376j.mo5808k0());
                    }
                } else if (mo5829D0 == AbstractC23376j.EnumC23378b.FLOAT) {
                    float mo5801t0 = abstractC23376j.mo5801t0();
                    Objects.requireNonNull(c23746l);
                    c23742h = new C23743i(mo5801t0);
                } else {
                    double mo5805n02 = abstractC23376j.mo5805n0();
                    Objects.requireNonNull(c23746l);
                    c23742h = new C23742h(mo5805n02);
                }
                return c23742h;
            case 9:
                return c23746l.m6151a(true);
            case 10:
                return c23746l.m6151a(false);
            case 11:
                Objects.requireNonNull(c23746l);
                return C23751q.f65823a;
            case 12:
                return m6629m0(abstractC23376j, c23746l);
            default:
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
        }
    }

    /* renamed from: q0 */
    public final C23735a m6625q0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23746l c23746l) throws IOException {
        Objects.requireNonNull(c23746l);
        C23735a c23735a = new C23735a(c23746l);
        while (true) {
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            if (mo5811i2 != null) {
                switch (mo5811i2.f64707d) {
                    case 1:
                        c23735a.f65783b.add(m6624r0(abstractC23376j, abstractC23632g, c23746l));
                        break;
                    case 2:
                    case 5:
                    case 8:
                    default:
                        c23735a.m6155N(m6626p0(abstractC23376j, abstractC23632g, c23746l));
                        break;
                    case 3:
                        c23735a.f65783b.add(m6625q0(abstractC23376j, abstractC23632g, c23746l));
                        break;
                    case 4:
                        return c23735a;
                    case 6:
                        c23735a.m6155N(C23755u.m6147M(abstractC23376j.mo5817U0()));
                        break;
                    case 7:
                        c23735a.m6155N(m6628n0(abstractC23376j, abstractC23632g, c23746l));
                        break;
                    case 9:
                        c23735a.f65783b.add(c23746l.m6151a(true));
                        break;
                    case 10:
                        c23735a.f65783b.add(c23746l.m6151a(false));
                        break;
                    case 11:
                        c23735a.f65783b.add(C23751q.f65823a);
                        break;
                    case 12:
                        c23735a.f65783b.add(m6629m0(abstractC23376j, c23746l));
                        break;
                }
            } else {
                return c23735a;
            }
        }
    }

    /* renamed from: r0 */
    public final C23753s m6624r0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23746l c23746l) throws IOException {
        AbstractC23757l abstractC23757l;
        Objects.requireNonNull(c23746l);
        C23753s c23753s = new C23753s(c23746l);
        String mo5813b2 = abstractC23376j.mo5813b2();
        while (true) {
            String str = mo5813b2;
            if (str != null) {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                EnumC23381m enumC23381m = mo5811i2;
                if (mo5811i2 == null) {
                    enumC23381m = EnumC23381m.NOT_AVAILABLE;
                }
                int i = enumC23381m.f64707d;
                if (i == 1) {
                    abstractC23757l = m6624r0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 3) {
                    abstractC23757l = m6625q0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 6) {
                    abstractC23757l = C23755u.m6147M(abstractC23376j.mo5817U0());
                } else if (i != 7) {
                    switch (i) {
                        case 9:
                            abstractC23757l = c23746l.m6151a(true);
                            break;
                        case 10:
                            abstractC23757l = c23746l.m6151a(false);
                            break;
                        case 11:
                            abstractC23757l = C23751q.f65823a;
                            break;
                        case 12:
                            abstractC23757l = m6629m0(abstractC23376j, c23746l);
                            break;
                        default:
                            abstractC23757l = m6626p0(abstractC23376j, abstractC23632g, c23746l);
                            break;
                    }
                } else {
                    abstractC23757l = m6628n0(abstractC23376j, abstractC23632g, c23746l);
                }
                AbstractC23757l m6149N = c23753s.m6149N(str, abstractC23757l);
                if (m6149N != null) {
                    m6627o0(abstractC23632g, c23746l, str, c23753s, m6149N, abstractC23757l);
                }
                mo5813b2 = abstractC23376j.mo5813b2();
            } else {
                return c23753s;
            }
        }
    }

    /* renamed from: s0 */
    public final C23753s m6623s0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23746l c23746l) throws IOException {
        AbstractC23757l abstractC23757l;
        Objects.requireNonNull(c23746l);
        C23753s c23753s = new C23753s(c23746l);
        String mo5809k = abstractC23376j.mo5809k();
        while (true) {
            String str = mo5809k;
            if (str != null) {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                EnumC23381m enumC23381m = mo5811i2;
                if (mo5811i2 == null) {
                    enumC23381m = EnumC23381m.NOT_AVAILABLE;
                }
                int i = enumC23381m.f64707d;
                if (i == 1) {
                    abstractC23757l = m6624r0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 3) {
                    abstractC23757l = m6625q0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 6) {
                    abstractC23757l = C23755u.m6147M(abstractC23376j.mo5817U0());
                } else if (i != 7) {
                    switch (i) {
                        case 9:
                            abstractC23757l = c23746l.m6151a(true);
                            break;
                        case 10:
                            abstractC23757l = c23746l.m6151a(false);
                            break;
                        case 11:
                            abstractC23757l = C23751q.f65823a;
                            break;
                        case 12:
                            abstractC23757l = m6629m0(abstractC23376j, c23746l);
                            break;
                        default:
                            abstractC23757l = m6626p0(abstractC23376j, abstractC23632g, c23746l);
                            break;
                    }
                } else {
                    abstractC23757l = m6628n0(abstractC23376j, abstractC23632g, c23746l);
                }
                AbstractC23757l m6149N = c23753s.m6149N(str, abstractC23757l);
                if (m6149N != null) {
                    m6627o0(abstractC23632g, c23746l, str, c23753s, m6149N, abstractC23757l);
                }
                mo5809k = abstractC23376j.mo5813b2();
            } else {
                return c23753s;
            }
        }
    }

    /* renamed from: t0 */
    public final AbstractC23757l m6622t0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23735a c23735a) throws IOException {
        C23746l c23746l = abstractC23632g.f65501c.f65481m;
        while (true) {
            switch (abstractC23376j.mo5811i2().f64707d) {
                case 1:
                    c23735a.f65783b.add(m6624r0(abstractC23376j, abstractC23632g, c23746l));
                    break;
                case 2:
                case 5:
                case 8:
                default:
                    c23735a.m6155N(m6626p0(abstractC23376j, abstractC23632g, c23746l));
                    break;
                case 3:
                    c23735a.f65783b.add(m6625q0(abstractC23376j, abstractC23632g, c23746l));
                    break;
                case 4:
                    return c23735a;
                case 6:
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    Objects.requireNonNull(c23746l);
                    c23735a.m6155N(C23755u.m6147M(mo5817U0));
                    break;
                case 7:
                    c23735a.m6155N(m6628n0(abstractC23376j, abstractC23632g, c23746l));
                    break;
                case 9:
                    c23735a.f65783b.add(c23746l.m6151a(true));
                    break;
                case 10:
                    c23735a.f65783b.add(c23746l.m6151a(false));
                    break;
                case 11:
                    Objects.requireNonNull(c23746l);
                    c23735a.f65783b.add(C23751q.f65823a);
                    break;
                case 12:
                    c23735a.f65783b.add(m6629m0(abstractC23376j, c23746l));
                    break;
            }
        }
    }

    /* renamed from: u0 */
    public final AbstractC23757l m6621u0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23753s c23753s) throws IOException {
        String str;
        AbstractC23757l abstractC23757l;
        AbstractC23757l abstractC23757l2 = C23751q.f65823a;
        if (abstractC23376j.mo7144Y1()) {
            str = abstractC23376j.mo5813b2();
        } else if (!abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME)) {
            return (AbstractC23757l) mo6232d(abstractC23376j, abstractC23632g);
        } else {
            str = abstractC23376j.mo5809k();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                AbstractC23757l abstractC23757l3 = c23753s.f65824b.get(str2);
                if (abstractC23757l3 != null) {
                    if (abstractC23757l3 instanceof C23753s) {
                        if (mo5811i2 == EnumC23381m.START_OBJECT) {
                            AbstractC23757l m6621u0 = m6621u0(abstractC23376j, abstractC23632g, (C23753s) abstractC23757l3);
                            if (m6621u0 != abstractC23757l3) {
                                AbstractC23757l abstractC23757l4 = m6621u0;
                                if (m6621u0 == 0) {
                                    c23753s.m6154M();
                                    abstractC23757l4 = abstractC23757l2;
                                }
                                c23753s.f65824b.put(str2, abstractC23757l4);
                            }
                            str = abstractC23376j.mo5813b2();
                        }
                    } else if ((abstractC23757l3 instanceof C23735a) && mo5811i2 == EnumC23381m.START_ARRAY) {
                        C23735a c23735a = (C23735a) abstractC23757l3;
                        m6622t0(abstractC23376j, abstractC23632g, c23735a);
                        if (c23735a != abstractC23757l3) {
                            c23753s.f65824b.put(str2, c23735a);
                        }
                        str = abstractC23376j.mo5813b2();
                    }
                }
                EnumC23381m enumC23381m = mo5811i2;
                if (mo5811i2 == null) {
                    enumC23381m = EnumC23381m.NOT_AVAILABLE;
                }
                C23746l c23746l = abstractC23632g.f65501c.f65481m;
                int i = enumC23381m.f64707d;
                if (i == 1) {
                    abstractC23757l = m6624r0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 3) {
                    abstractC23757l = m6625q0(abstractC23376j, abstractC23632g, c23746l);
                } else if (i == 6) {
                    String mo5817U0 = abstractC23376j.mo5817U0();
                    Objects.requireNonNull(c23746l);
                    abstractC23757l = C23755u.m6147M(mo5817U0);
                } else if (i != 7) {
                    switch (i) {
                        case 9:
                            abstractC23757l = c23746l.m6151a(true);
                            break;
                        case 10:
                            abstractC23757l = c23746l.m6151a(false);
                            break;
                        case 11:
                            Objects.requireNonNull(c23746l);
                            abstractC23757l = abstractC23757l2;
                            break;
                        case 12:
                            abstractC23757l = m6629m0(abstractC23376j, c23746l);
                            break;
                        default:
                            abstractC23757l = m6626p0(abstractC23376j, abstractC23632g, c23746l);
                            break;
                    }
                } else {
                    abstractC23757l = m6628n0(abstractC23376j, abstractC23632g, c23746l);
                }
                AbstractC23757l abstractC23757l5 = abstractC23757l;
                if (abstractC23757l == null) {
                    c23753s.m6154M();
                    abstractC23757l5 = abstractC23757l2;
                }
                c23753s.f65824b.put(str2, abstractC23757l5);
                str = abstractC23376j.mo5813b2();
            } else {
                return c23753s;
            }
        }
    }
}
