package p193e.p1545k.p1546a.p1556c;

import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Objects;
import java.util.TimeZone;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23445a;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23447c;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23460m;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23479m;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23480n;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23508e0;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23617c;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23619e;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23620f;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23623i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23898c;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23924n;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23933u;
/* renamed from: e.k.a.c.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g.class */
public abstract class AbstractC23632g extends AbstractC23614e implements Serializable {

    /* renamed from: a */
    public final C23480n f65499a;

    /* renamed from: b */
    public final AbstractC23481o f65500b;

    /* renamed from: c */
    public final C23624f f65501c;

    /* renamed from: d */
    public final int f65502d;

    /* renamed from: e */
    public final C23357i<EnumC23385q> f65503e;

    /* renamed from: f */
    public final Class<?> f65504f;

    /* renamed from: g */
    public transient AbstractC23376j f65505g;

    /* renamed from: h */
    public transient C23898c f65506h;

    /* renamed from: i */
    public transient C23933u f65507i;

    /* renamed from: j */
    public transient DateFormat f65508j;

    /* renamed from: k */
    public C23924n<AbstractC23698i> f65509k;

    public AbstractC23632g(AbstractC23481o abstractC23481o, C23480n c23480n) {
        Objects.requireNonNull(abstractC23481o, "Cannot pass null DeserializerFactory");
        this.f65500b = abstractC23481o;
        this.f65499a = c23480n == null ? new C23480n() : c23480n;
        this.f65502d = 0;
        this.f65503e = null;
        this.f65501c = null;
        this.f65504f = null;
    }

    public AbstractC23632g(AbstractC23632g abstractC23632g, C23624f c23624f) {
        this.f65499a = abstractC23632g.f65499a;
        this.f65500b = abstractC23632g.f65500b;
        this.f65503e = null;
        this.f65501c = c23624f;
        this.f65502d = c23624f.f65484p;
        this.f65504f = null;
        this.f65505g = null;
    }

    public AbstractC23632g(AbstractC23632g abstractC23632g, C23624f c23624f, AbstractC23376j abstractC23376j) {
        this.f65499a = abstractC23632g.f65499a;
        this.f65500b = abstractC23632g.f65500b;
        this.f65503e = abstractC23376j == null ? null : abstractC23376j.mo5822L0();
        this.f65501c = c23624f;
        this.f65502d = c23624f.f65484p;
        this.f65504f = c23624f.f65077f;
        this.f65505g = abstractC23376j;
    }

    /* renamed from: A */
    public final C23344a m6505A() {
        return this.f65501c.f65071b.f65032k;
    }

    /* renamed from: B */
    public TimeZone m6504B() {
        TimeZone timeZone = this.f65501c.f65071b.f65031j;
        TimeZone timeZone2 = timeZone;
        if (timeZone == null) {
            timeZone2 = C23445a.f65021l;
        }
        return timeZone2;
    }

    /* renamed from: C */
    public void m6503C(AbstractC23700j<?> abstractC23700j) throws C23733k {
        if (m6487S(EnumC23942p.IGNORE_MERGE_FOR_UNMERGEABLE)) {
            return;
        }
        AbstractC23698i m6465o = m6465o(abstractC23700j.mo6223m());
        throw new C23616b(this.f65505g, String.format("Invalid configuration: values of type %s cannot be merged", C23914g.m5747t(m6465o)), m6465o);
    }

    /* renamed from: D */
    public Object m6502D(Class<?> cls, Object obj, Throwable th) throws IOException {
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            Object obj2 = AbstractC23479m.f65157a;
            c23924n = c23924n2.f66183b;
        }
        C23914g.m5771J(th);
        if (!m6488R(EnumC23694h.WRAP_EXCEPTIONS)) {
            C23914g.m5770K(th);
        }
        throw m6490P(cls, th);
    }

    /* renamed from: E */
    public Object m6501E(Class<?> cls, AbstractC23491w abstractC23491w, AbstractC23376j abstractC23376j, String str, Object... objArr) throws IOException {
        String m6529b = m6529b(str, objArr);
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            Object obj = AbstractC23479m.f65157a;
            c23924n = c23924n2.f66183b;
        }
        if (abstractC23491w == null) {
            mo6466m(m6525f(cls), String.format("Cannot construct instance of %s: %s", C23914g.m5776E(cls), m6529b));
            throw null;
        } else if (abstractC23491w.mo6605l()) {
            throw new C23620f(this.f65505g, m6529b(String.format("Cannot construct instance of %s (although at least one Creator exists): %s", C23914g.m5776E(cls), m6529b), new Object[0]), cls);
        } else {
            mo6466m(m6525f(cls), String.format("Cannot construct instance of %s (no Creators, like default constructor, exist): %s", C23914g.m5776E(cls), m6529b));
            throw null;
        }
    }

    /* renamed from: F */
    public AbstractC23700j<?> m6500F(AbstractC23700j<?> abstractC23700j, AbstractC23462d abstractC23462d, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23700j<?> abstractC23700j2 = abstractC23700j;
        if (abstractC23700j instanceof AbstractC23474i) {
            this.f65509k = new C23924n<>(abstractC23698i, this.f65509k);
            try {
                abstractC23700j2 = ((AbstractC23474i) abstractC23700j).mo6534a(this, abstractC23462d);
            } finally {
                this.f65509k = this.f65509k.f66183b;
            }
        }
        return abstractC23700j2;
    }

    /* renamed from: G */
    public AbstractC23700j<?> m6499G(AbstractC23700j<?> abstractC23700j, AbstractC23462d abstractC23462d, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23700j<?> abstractC23700j2 = abstractC23700j;
        if (abstractC23700j instanceof AbstractC23474i) {
            this.f65509k = new C23924n<>(abstractC23698i, this.f65509k);
            try {
                abstractC23700j2 = ((AbstractC23474i) abstractC23700j).mo6534a(this, abstractC23462d);
            } finally {
                this.f65509k = this.f65509k.f66183b;
            }
        }
        return abstractC23700j2;
    }

    /* renamed from: H */
    public Object m6498H(AbstractC23698i abstractC23698i, AbstractC23376j abstractC23376j) throws IOException {
        m6497I(abstractC23698i, abstractC23376j.mo7142l(), abstractC23376j, null, new Object[0]);
        throw null;
    }

    /* renamed from: I */
    public Object m6497I(AbstractC23698i abstractC23698i, EnumC23381m enumC23381m, AbstractC23376j abstractC23376j, String str, Object... objArr) throws IOException {
        Object obj;
        String m6529b = m6529b(str, objArr);
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            Class<?> cls = abstractC23698i.f65728a;
            Object obj2 = AbstractC23479m.f65157a;
            c23924n = c23924n2.f66183b;
        }
        String str2 = m6529b;
        if (m6529b == null) {
            String m5747t = C23914g.m5747t(abstractC23698i);
            if (enumC23381m == null) {
                str2 = String.format("Unexpected end-of-input when trying read value of type %s", m5747t);
            } else {
                switch (enumC23381m.ordinal()) {
                    case 1:
                    case 2:
                    case 5:
                        obj = "Object value";
                        break;
                    case 3:
                    case 4:
                        obj = "Array value";
                        break;
                    case 6:
                        obj = "Embedded Object";
                        break;
                    case 7:
                        obj = "String value";
                        break;
                    case 8:
                        obj = "Integer value";
                        break;
                    case 9:
                        obj = "Floating-point value";
                        break;
                    case 10:
                    case 11:
                        obj = "Boolean value";
                        break;
                    case 12:
                        obj = "Null value";
                        break;
                    default:
                        obj = "[Unavailable value]";
                        break;
                }
                str2 = String.format("Cannot deserialize value of type %s from %s (token `JsonToken.%s`)", m5747t, obj, enumC23381m);
            }
        }
        if (enumC23381m != null && enumC23381m.f64711h) {
            abstractC23376j.mo5817U0();
        }
        throw new C23620f(this.f65505g, m6529b(str2, new Object[0]), abstractC23698i);
    }

    /* renamed from: J */
    public Object m6496J(Class<?> cls, AbstractC23376j abstractC23376j) throws IOException {
        m6497I(m6465o(cls), abstractC23376j.mo7142l(), abstractC23376j, null, new Object[0]);
        throw null;
    }

    /* renamed from: K */
    public AbstractC23698i m6495K(AbstractC23698i abstractC23698i, String str, AbstractC23710f abstractC23710f, String str2) throws IOException {
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 == null) {
                break;
            }
            Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
            c23924n = c23924n2.f66183b;
        }
        if (!m6488R(EnumC23694h.FAIL_ON_INVALID_SUBTYPE)) {
            return null;
        }
        throw mo6468j(abstractC23698i, str, str2);
    }

    /* renamed from: L */
    public Object m6494L(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String m6529b = m6529b(str2, objArr);
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 != null) {
                Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
                Object obj = AbstractC23479m.f65157a;
                c23924n = c23924n2.f66183b;
            } else {
                throw new C23617c(this.f65505g, String.format("Cannot deserialize Map key of type %s from String %s: %s", C23914g.m5776E(cls), m6528c(str), m6529b), str, cls);
            }
        }
    }

    /* renamed from: M */
    public Object m6493M(Class<?> cls, Number number, String str, Object... objArr) throws IOException {
        String m6529b = m6529b(str, objArr);
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 != null) {
                Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
                Object obj = AbstractC23479m.f65157a;
                c23924n = c23924n2.f66183b;
            } else {
                throw m6471h0(number, cls, m6529b);
            }
        }
    }

    /* renamed from: N */
    public Object m6492N(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String m6529b = m6529b(str2, objArr);
        C23924n c23924n = this.f65501c.f65480l;
        while (true) {
            C23924n c23924n2 = c23924n;
            if (c23924n2 != null) {
                Objects.requireNonNull((AbstractC23479m) c23924n2.f66182a);
                Object obj = AbstractC23479m.f65157a;
                c23924n = c23924n2.f66183b;
            } else {
                throw m6469i0(str, cls, m6529b);
            }
        }
    }

    /* renamed from: O */
    public final boolean m6491O(int i) {
        return (i & this.f65502d) != 0;
    }

    /* renamed from: P */
    public C23733k m6490P(Class<?> cls, Throwable th) {
        String str;
        if (th == null) {
            str = "N/A";
        } else {
            String m5757j = C23914g.m5757j(th);
            str = m5757j;
            if (m5757j == null) {
                str = C23914g.m5776E(th.getClass());
            }
        }
        return new C23623i(this.f65505g, String.format("Cannot construct instance of %s, problem: %s", C23914g.m5776E(cls), str), m6465o(cls), th);
    }

    /* renamed from: Q */
    public final boolean m6489Q(EnumC23385q enumC23385q) {
        C23357i<EnumC23385q> c23357i = this.f65503e;
        Objects.requireNonNull(c23357i);
        return (enumC23385q.mo7193a() & c23357i.f64582a) != 0;
    }

    /* renamed from: R */
    public final boolean m6488R(EnumC23694h enumC23694h) {
        return (enumC23694h.f65714b & this.f65502d) != 0;
    }

    /* renamed from: S */
    public final boolean m6487S(EnumC23942p enumC23942p) {
        return this.f65501c.m6859o(enumC23942p);
    }

    /* renamed from: T */
    public abstract AbstractC23940o mo6486T(AbstractC23636b abstractC23636b, Object obj) throws C23733k;

    /* renamed from: U */
    public final C23933u m6485U() {
        C23933u c23933u = this.f65507i;
        if (c23933u == null) {
            c23933u = new C23933u();
        } else {
            this.f65507i = null;
        }
        return c23933u;
    }

    /* renamed from: V */
    public Date m6484V(String str) throws IllegalArgumentException {
        try {
            DateFormat dateFormat = this.f65508j;
            if (dateFormat == null) {
                dateFormat = (DateFormat) this.f65501c.f65071b.f65029h.clone();
                this.f65508j = dateFormat;
            }
            return dateFormat.parse(str);
        } catch (ParseException e) {
            throw new IllegalArgumentException(String.format("Failed to parse Date value '%s': %s", str, C23914g.m5757j(e)));
        }
    }

    /* renamed from: W */
    public <T> T m6483W(AbstractC23444c abstractC23444c, AbstractC23681s abstractC23681s, String str, Object... objArr) throws C23733k {
        String m6529b = m6529b(str, objArr);
        Annotation[] annotationArr = C23914g.f66156a;
        throw new C23616b(this.f65505g, String.format("Invalid definition for property %s (of type %s): %s", C23914g.m5764c(abstractC23681s.getName()), C23914g.m5776E(abstractC23444c.f65020a.f65728a), m6529b), abstractC23444c, abstractC23681s);
    }

    /* renamed from: X */
    public <T> T m6482X(AbstractC23444c abstractC23444c, String str, Object... objArr) throws C23733k {
        throw new C23616b(this.f65505g, String.format("Invalid type definition for type %s: %s", C23914g.m5776E(abstractC23444c.f65020a.f65728a), m6529b(str, objArr)), abstractC23444c, (AbstractC23681s) null);
    }

    /* renamed from: Y */
    public <T> T m6481Y(AbstractC23462d abstractC23462d, String str, Object... objArr) throws C23733k {
        AbstractC23663i mo6108c;
        C23620f c23620f = new C23620f(this.f65505g, m6529b(str, objArr), abstractC23462d == null ? null : ((AbstractC23488u) abstractC23462d).f65172d);
        if (abstractC23462d != null && (mo6108c = abstractC23462d.mo6108c()) != null) {
            c23620f.m6160g(mo6108c.mo6376g(), ((AbstractC23488u) abstractC23462d).f65171c.f66304a);
        }
        throw c23620f;
    }

    /* renamed from: Z */
    public <T> T m6480Z(AbstractC23698i abstractC23698i, String str, Object... objArr) throws C23733k {
        throw new C23620f(this.f65505g, m6529b(str, objArr), abstractC23698i);
    }

    /* renamed from: a0 */
    public <T> T m6479a0(AbstractC23700j<?> abstractC23700j, String str, Object... objArr) throws C23733k {
        throw new C23620f(this.f65505g, m6529b(str, objArr), abstractC23700j.mo6223m());
    }

    /* renamed from: b0 */
    public <T> T m6478b0(Class<?> cls, String str, Object... objArr) throws C23733k {
        throw new C23620f(this.f65505g, m6529b(str, objArr), cls);
    }

    /* renamed from: c0 */
    public <T> T m6477c0(AbstractC23698i abstractC23698i, String str, String str2, Object... objArr) throws C23733k {
        Class<?> cls = abstractC23698i.f65728a;
        C23620f c23620f = new C23620f(this.f65505g, m6529b(str2, objArr), cls);
        if (str != null) {
            c23620f.m6160g(cls, str);
        }
        throw c23620f;
    }

    /* renamed from: d0 */
    public <T> T m6476d0(Class<?> cls, AbstractC23376j abstractC23376j, EnumC23381m enumC23381m) throws C23733k {
        throw new C23620f(abstractC23376j, String.format("Trailing token (of type %s) found after value (bound as %s): not allowed as per `DeserializationFeature.FAIL_ON_TRAILING_TOKENS`", enumC23381m, C23914g.m5776E(cls)), cls);
    }

    /* renamed from: e0 */
    public void m6475e0(AbstractC23698i abstractC23698i, EnumC23381m enumC23381m, String str, Object... objArr) throws C23733k {
        String m6529b = m6529b(str, objArr);
        AbstractC23376j abstractC23376j = this.f65505g;
        throw new C23620f(abstractC23376j, m6530a(String.format("Unexpected token (%s), expected %s", abstractC23376j.mo7142l(), enumC23381m), m6529b), abstractC23698i);
    }

    /* renamed from: f0 */
    public void m6474f0(AbstractC23700j<?> abstractC23700j, EnumC23381m enumC23381m, String str, Object... objArr) throws C23733k {
        throw m6467j0(this.f65505g, abstractC23700j.mo6223m(), enumC23381m, m6529b(str, objArr));
    }

    /* renamed from: g0 */
    public final void m6473g0(C23933u c23933u) {
        C23933u c23933u2 = this.f65507i;
        if (c23933u2 != null) {
            Object[] objArr = c23933u.f66194d;
            int i = 0;
            int length = objArr == null ? 0 : objArr.length;
            Object[] objArr2 = c23933u2.f66194d;
            if (objArr2 != null) {
                i = objArr2.length;
            }
            if (length < i) {
                return;
            }
        }
        this.f65507i = c23933u;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: h */
    public AbstractC23458k mo6472h() {
        return this.f65501c;
    }

    /* renamed from: h0 */
    public C23733k m6471h0(Number number, Class<?> cls, String str) {
        return new C23617c(this.f65505g, String.format("Cannot deserialize value of type %s from number %s: %s", C23914g.m5776E(cls), String.valueOf(number), str), number, cls);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: i */
    public final C23887o mo6470i() {
        return this.f65501c.f65071b.f65022a;
    }

    /* renamed from: i0 */
    public C23733k m6469i0(String str, Class<?> cls, String str2) {
        return new C23617c(this.f65505g, String.format("Cannot deserialize value of type %s from String %s: %s", C23914g.m5776E(cls), m6528c(str), str2), str, cls);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: j */
    public C23733k mo6468j(AbstractC23698i abstractC23698i, String str, String str2) {
        return new C23619e(this.f65505g, m6530a(String.format("Could not resolve type id '%s' as a subtype of %s", str, C23914g.m5747t(abstractC23698i)), str2), abstractC23698i, str);
    }

    /* renamed from: j0 */
    public C23733k m6467j0(AbstractC23376j abstractC23376j, Class<?> cls, EnumC23381m enumC23381m, String str) {
        return new C23620f(abstractC23376j, m6530a(String.format("Unexpected token (%s), expected %s", abstractC23376j.mo7142l(), enumC23381m), str), cls);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23614e
    /* renamed from: m */
    public <T> T mo6466m(AbstractC23698i abstractC23698i, String str) throws C23733k {
        throw new C23616b(this.f65505g, str, abstractC23698i);
    }

    /* renamed from: o */
    public final AbstractC23698i m6465o(Class<?> cls) {
        return cls == null ? null : this.f65501c.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e);
    }

    /* renamed from: p */
    public abstract AbstractC23700j<Object> mo6464p(AbstractC23636b abstractC23636b, Object obj) throws C23733k;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0064, code lost:
        if (r0.m6515y(p193e.p1545k.p1546a.p1556c.EnumC23694h.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008f, code lost:
        if (r0.m6515y(p193e.p1545k.p1546a.p1556c.EnumC23694h.FAIL_ON_NUMBERS_FOR_ENUMS) != false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0101  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b m6463q(p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f r4, java.lang.Class<?> r5, p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d r6) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.AbstractC23632g.m6463q(e.k.a.c.m0.f, java.lang.Class, e.k.a.c.c0.d):e.k.a.c.c0.b");
    }

    /* renamed from: r */
    public EnumC23446b m6462r(EnumC23876f enumC23876f, Class<?> cls, EnumC23446b enumC23446b) {
        C23624f c23624f = this.f65501c;
        C23447c c23447c = c23624f.f65482n;
        Objects.requireNonNull(c23447c);
        C23460m c23460m = c23447c.f65039b;
        Boolean bool = c23460m.f65082a;
        EnumC23446b enumC23446b2 = c23460m.f65083b[9];
        if (Boolean.TRUE.equals(bool)) {
            if (enumC23446b2 != null) {
                enumC23446b = enumC23446b2;
            } else {
                enumC23446b = c23624f.m6515y(EnumC23694h.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) ? EnumC23446b.AsNull : EnumC23446b.Fail;
            }
        }
        return enumC23446b;
    }

    /* renamed from: s */
    public final AbstractC23700j<Object> m6461s(AbstractC23698i abstractC23698i, AbstractC23462d abstractC23462d) throws C23733k {
        return m6499G(this.f65499a.m6781f(this, this.f65500b, abstractC23698i), abstractC23462d, abstractC23698i);
    }

    /* renamed from: t */
    public final Object m6460t(Object obj, AbstractC23462d abstractC23462d, Object obj2) throws C23733k {
        Annotation[] annotationArr = C23914g.f66156a;
        m6521n(obj == null ? null : obj.getClass(), String.format("No 'injectableValues' configured, cannot inject value with id [%s]", obj));
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x01c6, code lost:
        r0 = new java.lang.StringBuilder();
        r0.append("Unsuitable method (");
        r0.append(r0);
        r0.append(") decorated with @JsonCreator (for Enum type ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f5, code lost:
        throw new java.lang.IllegalArgumentException(p193e.p1432d.p1439c.p1440a.C22128a.m8639b2(r0, r0, ")"));
     */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1556c.AbstractC23940o m6459u(p193e.p1545k.p1546a.p1556c.AbstractC23698i r7, p193e.p1545k.p1546a.p1556c.AbstractC23462d r8) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 939
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.AbstractC23632g.m6459u(e.k.a.c.i, e.k.a.c.d):e.k.a.c.o");
    }

    /* renamed from: v */
    public final AbstractC23700j<Object> m6458v(AbstractC23698i abstractC23698i) throws C23733k {
        return this.f65499a.m6781f(this, this.f65500b, abstractC23698i);
    }

    /* renamed from: w */
    public abstract C23502c0 mo6457w(Object obj, AbstractC23316k0<?> abstractC23316k0, AbstractC23323n0 abstractC23323n0);

    /* renamed from: x */
    public final AbstractC23700j<Object> m6456x(AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23700j<?> m6499G = m6499G(this.f65499a.m6781f(this, this.f65500b, abstractC23698i), null, abstractC23698i);
        AbstractC23709e mo6779b = this.f65500b.mo6779b(this.f65501c, abstractC23698i);
        return mo6779b != null ? new C23508e0(mo6779b.mo6204f(null), m6499G) : m6499G;
    }

    /* renamed from: y */
    public final AbstractC23426b m6455y() {
        return this.f65501c.m6864e();
    }

    /* renamed from: z */
    public final C23898c m6454z() {
        if (this.f65506h == null) {
            this.f65506h = new C23898c();
        }
        return this.f65506h;
    }
}
