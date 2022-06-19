package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.f0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/f0.class */
public class C23554f0 extends AbstractC23491w implements Serializable {

    /* renamed from: a */
    public final String f65325a;

    /* renamed from: b */
    public final Class<?> f65326b;

    /* renamed from: c */
    public AbstractC23670n f65327c;

    /* renamed from: d */
    public AbstractC23670n f65328d;

    /* renamed from: e */
    public AbstractC23488u[] f65329e;

    /* renamed from: f */
    public AbstractC23698i f65330f;

    /* renamed from: g */
    public AbstractC23670n f65331g;

    /* renamed from: h */
    public AbstractC23488u[] f65332h;

    /* renamed from: i */
    public AbstractC23698i f65333i;

    /* renamed from: j */
    public AbstractC23670n f65334j;

    /* renamed from: k */
    public AbstractC23488u[] f65335k;

    /* renamed from: l */
    public AbstractC23670n f65336l;

    /* renamed from: m */
    public AbstractC23670n f65337m;

    /* renamed from: n */
    public AbstractC23670n f65338n;

    /* renamed from: o */
    public AbstractC23670n f65339o;

    /* renamed from: p */
    public AbstractC23670n f65340p;

    /* renamed from: q */
    public AbstractC23670n f65341q;

    /* renamed from: r */
    public AbstractC23670n f65342r;

    public C23554f0(AbstractC23698i abstractC23698i) {
        this.f65325a = abstractC23698i == null ? "UNKNOWN TYPE" : abstractC23698i.toString();
        this.f65326b = abstractC23698i == null ? Object.class : abstractC23698i.f65728a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: A */
    public AbstractC23670n mo6620A() {
        return this.f65331g;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: B */
    public AbstractC23698i mo6619B(C23624f c23624f) {
        return this.f65330f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: C */
    public AbstractC23488u[] mo6552C(C23624f c23624f) {
        return this.f65329e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: D */
    public Class<?> mo6618D() {
        return this.f65326b;
    }

    /* renamed from: E */
    public final Object m6617E(AbstractC23670n abstractC23670n, AbstractC23488u[] abstractC23488uArr, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        if (abstractC23670n == null) {
            StringBuilder m8728C = C22128a.m8728C("No delegate constructor for ");
            m8728C.append(this.f65325a);
            throw new IllegalStateException(m8728C.toString());
        }
        try {
            if (abstractC23488uArr == null) {
                return abstractC23670n.mo6370o(obj);
            }
            int length = abstractC23488uArr.length;
            Object[] objArr = new Object[length];
            for (int i = 0; i < length; i++) {
                AbstractC23488u abstractC23488u = abstractC23488uArr[i];
                if (abstractC23488u != null) {
                    abstractC23632g.m6460t(abstractC23488u.mo6754o(), abstractC23488u, null);
                    throw null;
                }
                objArr[i] = obj;
            }
            return abstractC23670n.mo6371n(objArr);
        } catch (Throwable th) {
            throw m6616F(abstractC23632g, th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
        if ((r6 instanceof java.lang.reflect.InvocationTargetException) != false) goto L6;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.C23733k m6616F(p193e.p1545k.p1546a.p1556c.AbstractC23632g r5, java.lang.Throwable r6) {
        /*
            r4 = this;
            r0 = r6
            boolean r0 = r0 instanceof java.lang.ExceptionInInitializerError
            if (r0 != 0) goto L10
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.InvocationTargetException
            if (r0 == 0) goto L20
        L10:
            r0 = r6
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L20
            r0 = r8
            r7 = r0
        L20:
            r0 = r7
            boolean r0 = r0 instanceof p193e.p1545k.p1546a.p1556c.C23733k
            if (r0 == 0) goto L2f
            r0 = r7
            e.k.a.c.k r0 = (p193e.p1545k.p1546a.p1556c.C23733k) r0
            r5 = r0
            goto L39
        L2f:
            r0 = r5
            r1 = r4
            java.lang.Class<?> r1 = r1.f65326b
            r2 = r7
            e.k.a.c.k r0 = r0.m6490P(r1, r2)
            r5 = r0
        L39:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23554f0.m6616F(e.k.a.c.g, java.lang.Throwable):e.k.a.c.k");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: a */
    public boolean mo6615a() {
        return this.f65341q != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: b */
    public boolean mo6614b() {
        return this.f65339o != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: c */
    public boolean mo6613c() {
        return this.f65342r != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: d */
    public boolean mo6612d() {
        return this.f65340p != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: e */
    public boolean mo6611e() {
        return this.f65337m != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: f */
    public boolean mo6610f() {
        return this.f65338n != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: g */
    public boolean mo6550g() {
        return this.f65328d != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: h */
    public boolean mo6609h() {
        return this.f65336l != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: i */
    public boolean mo6608i() {
        return this.f65333i != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: j */
    public boolean mo6607j() {
        return this.f65327c != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: k */
    public boolean mo6606k() {
        return this.f65330f != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: l */
    public boolean mo6605l() {
        return mo6607j() || mo6606k() || mo6608i() || mo6550g() || mo6609h() || mo6611e() || mo6610f() || mo6612d() || mo6613c();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: m */
    public Object mo6604m(AbstractC23632g abstractC23632g, BigDecimal bigDecimal) throws IOException {
        AbstractC23670n abstractC23670n = this.f65341q;
        if (abstractC23670n != null) {
            try {
                return abstractC23670n.mo6370o(bigDecimal);
            } catch (Throwable th) {
                abstractC23632g.m6502D(this.f65341q.mo6376g(), bigDecimal, m6616F(abstractC23632g, th));
                throw null;
            }
        }
        if (this.f65340p != null) {
            double doubleValue = bigDecimal.doubleValue();
            Double valueOf = Double.isInfinite(doubleValue) ? null : Double.valueOf(doubleValue);
            if (valueOf != null) {
                try {
                    return this.f65340p.mo6370o(valueOf);
                } catch (Throwable th2) {
                    abstractC23632g.m6502D(this.f65340p.mo6376g(), valueOf, m6616F(abstractC23632g, th2));
                    throw null;
                }
            }
        }
        super.mo6604m(abstractC23632g, bigDecimal);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: n */
    public Object mo6603n(AbstractC23632g abstractC23632g, BigInteger bigInteger) throws IOException {
        AbstractC23670n abstractC23670n = this.f65339o;
        if (abstractC23670n == null) {
            super.mo6603n(abstractC23632g, bigInteger);
            throw null;
        }
        try {
            return abstractC23670n.mo6370o(bigInteger);
        } catch (Throwable th) {
            abstractC23632g.m6502D(this.f65339o.mo6376g(), bigInteger, m6616F(abstractC23632g, th));
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: o */
    public Object mo6602o(AbstractC23632g abstractC23632g, boolean z) throws IOException {
        if (this.f65342r == null) {
            super.mo6602o(abstractC23632g, z);
            throw null;
        }
        Boolean valueOf = Boolean.valueOf(z);
        try {
            return this.f65342r.mo6370o(valueOf);
        } catch (Throwable th) {
            abstractC23632g.m6502D(this.f65342r.mo6376g(), valueOf, m6616F(abstractC23632g, th));
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: p */
    public Object mo6601p(AbstractC23632g abstractC23632g, double d) throws IOException {
        if (this.f65340p != null) {
            Double valueOf = Double.valueOf(d);
            try {
                return this.f65340p.mo6370o(valueOf);
            } catch (Throwable th) {
                abstractC23632g.m6502D(this.f65340p.mo6376g(), valueOf, m6616F(abstractC23632g, th));
                throw null;
            }
        } else if (this.f65341q == null) {
            super.mo6601p(abstractC23632g, d);
            throw null;
        } else {
            BigDecimal valueOf2 = BigDecimal.valueOf(d);
            try {
                return this.f65341q.mo6370o(valueOf2);
            } catch (Throwable th2) {
                abstractC23632g.m6502D(this.f65341q.mo6376g(), valueOf2, m6616F(abstractC23632g, th2));
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: q */
    public Object mo6600q(AbstractC23632g abstractC23632g, int i) throws IOException {
        if (this.f65337m != null) {
            Integer valueOf = Integer.valueOf(i);
            try {
                return this.f65337m.mo6370o(valueOf);
            } catch (Throwable th) {
                abstractC23632g.m6502D(this.f65337m.mo6376g(), valueOf, m6616F(abstractC23632g, th));
                throw null;
            }
        } else if (this.f65338n != null) {
            Long valueOf2 = Long.valueOf(i);
            try {
                return this.f65338n.mo6370o(valueOf2);
            } catch (Throwable th2) {
                abstractC23632g.m6502D(this.f65338n.mo6376g(), valueOf2, m6616F(abstractC23632g, th2));
                throw null;
            }
        } else if (this.f65339o == null) {
            super.mo6600q(abstractC23632g, i);
            throw null;
        } else {
            BigInteger valueOf3 = BigInteger.valueOf(i);
            try {
                return this.f65339o.mo6370o(valueOf3);
            } catch (Throwable th3) {
                abstractC23632g.m6502D(this.f65339o.mo6376g(), valueOf3, m6616F(abstractC23632g, th3));
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: r */
    public Object mo6599r(AbstractC23632g abstractC23632g, long j) throws IOException {
        if (this.f65338n != null) {
            Long valueOf = Long.valueOf(j);
            try {
                return this.f65338n.mo6370o(valueOf);
            } catch (Throwable th) {
                abstractC23632g.m6502D(this.f65338n.mo6376g(), valueOf, m6616F(abstractC23632g, th));
                throw null;
            }
        } else if (this.f65339o == null) {
            super.mo6599r(abstractC23632g, j);
            throw null;
        } else {
            BigInteger valueOf2 = BigInteger.valueOf(j);
            try {
                return this.f65339o.mo6370o(valueOf2);
            } catch (Throwable th2) {
                abstractC23632g.m6502D(this.f65339o.mo6376g(), valueOf2, m6616F(abstractC23632g, th2));
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: s */
    public Object mo6549s(AbstractC23632g abstractC23632g, Object[] objArr) throws IOException {
        AbstractC23670n abstractC23670n = this.f65328d;
        if (abstractC23670n == null) {
            super.mo6549s(abstractC23632g, objArr);
            throw null;
        }
        try {
            return abstractC23670n.mo6371n(objArr);
        } catch (Exception e) {
            abstractC23632g.m6502D(this.f65326b, objArr, m6616F(abstractC23632g, e));
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: t */
    public Object mo6598t(AbstractC23632g abstractC23632g, String str) throws IOException {
        AbstractC23670n abstractC23670n = this.f65336l;
        if (abstractC23670n == null) {
            super.mo6598t(abstractC23632g, str);
            throw null;
        }
        try {
            return abstractC23670n.mo6370o(str);
        } catch (Throwable th) {
            abstractC23632g.m6502D(this.f65336l.mo6376g(), str, m6616F(abstractC23632g, th));
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: u */
    public Object mo6597u(AbstractC23632g abstractC23632g, Object obj) throws IOException {
        AbstractC23670n abstractC23670n = this.f65334j;
        return (abstractC23670n != null || this.f65331g == null) ? m6617E(abstractC23670n, this.f65335k, abstractC23632g, obj) : mo6595w(abstractC23632g, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: v */
    public Object mo6596v(AbstractC23632g abstractC23632g) throws IOException {
        AbstractC23670n abstractC23670n = this.f65327c;
        if (abstractC23670n == null) {
            super.mo6596v(abstractC23632g);
            throw null;
        }
        try {
            return abstractC23670n.mo6372m();
        } catch (Exception e) {
            abstractC23632g.m6502D(this.f65326b, null, m6616F(abstractC23632g, e));
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: w */
    public Object mo6595w(AbstractC23632g abstractC23632g, Object obj) throws IOException {
        AbstractC23670n abstractC23670n;
        AbstractC23670n abstractC23670n2 = this.f65331g;
        return (abstractC23670n2 != null || (abstractC23670n = this.f65334j) == null) ? m6617E(abstractC23670n2, this.f65332h, abstractC23632g, obj) : m6617E(abstractC23670n, this.f65335k, abstractC23632g, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: x */
    public AbstractC23670n mo6594x() {
        return this.f65334j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: y */
    public AbstractC23698i mo6593y(C23624f c23624f) {
        return this.f65333i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: z */
    public AbstractC23670n mo6592z() {
        return this.f65327c;
    }
}
