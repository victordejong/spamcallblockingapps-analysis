package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
/* renamed from: e.k.a.c.d0.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/w.class */
public abstract class AbstractC23491w {

    /* renamed from: e.k.a.c.d0.w$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/w$a.class */
    public static class C23492a extends AbstractC23491w implements Serializable {

        /* renamed from: a */
        public final Class<?> f65184a;

        public C23492a(AbstractC23698i abstractC23698i) {
            this.f65184a = abstractC23698i.f65728a;
        }

        public C23492a(Class<?> cls) {
            this.f65184a = cls;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
        /* renamed from: D */
        public Class<?> mo6618D() {
            return this.f65184a;
        }
    }

    /* renamed from: A */
    public AbstractC23670n mo6620A() {
        return null;
    }

    /* renamed from: B */
    public AbstractC23698i mo6619B(C23624f c23624f) {
        return null;
    }

    /* renamed from: C */
    public AbstractC23488u[] mo6552C(C23624f c23624f) {
        return null;
    }

    /* renamed from: D */
    public Class<?> mo6618D() {
        return Object.class;
    }

    /* renamed from: a */
    public boolean mo6615a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo6614b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo6613c() {
        return false;
    }

    /* renamed from: d */
    public boolean mo6612d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo6611e() {
        return false;
    }

    /* renamed from: f */
    public boolean mo6610f() {
        return false;
    }

    /* renamed from: g */
    public boolean mo6550g() {
        return false;
    }

    /* renamed from: h */
    public boolean mo6609h() {
        return false;
    }

    /* renamed from: i */
    public boolean mo6608i() {
        return false;
    }

    /* renamed from: j */
    public boolean mo6607j() {
        return mo6592z() != null;
    }

    /* renamed from: k */
    public boolean mo6606k() {
        return false;
    }

    /* renamed from: l */
    public boolean mo6605l() {
        return mo6607j() || mo6606k() || mo6608i() || mo6550g() || mo6609h() || mo6611e() || mo6610f() || mo6612d() || mo6613c();
    }

    /* renamed from: m */
    public Object mo6604m(AbstractC23632g abstractC23632g, BigDecimal bigDecimal) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no BigDecimal/double/Double-argument constructor/factory method to deserialize from Number value (%s)", bigDecimal);
        throw null;
    }

    /* renamed from: n */
    public Object mo6603n(AbstractC23632g abstractC23632g, BigInteger bigInteger) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no BigInteger-argument constructor/factory method to deserialize from Number value (%s)", bigInteger);
        throw null;
    }

    /* renamed from: o */
    public Object mo6602o(AbstractC23632g abstractC23632g, boolean z) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no boolean/Boolean-argument constructor/factory method to deserialize from boolean value (%s)", Boolean.valueOf(z));
        throw null;
    }

    /* renamed from: p */
    public Object mo6601p(AbstractC23632g abstractC23632g, double d) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no double/Double-argument constructor/factory method to deserialize from Number value (%s)", Double.valueOf(d));
        throw null;
    }

    /* renamed from: q */
    public Object mo6600q(AbstractC23632g abstractC23632g, int i) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no int/Int-argument constructor/factory method to deserialize from Number value (%s)", Integer.valueOf(i));
        throw null;
    }

    /* renamed from: r */
    public Object mo6599r(AbstractC23632g abstractC23632g, long j) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no long/Long-argument constructor/factory method to deserialize from Number value (%s)", Long.valueOf(j));
        throw null;
    }

    /* renamed from: s */
    public Object mo6549s(AbstractC23632g abstractC23632g, Object[] objArr) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no creator with arguments specified", new Object[0]);
        throw null;
    }

    /* renamed from: t */
    public Object mo6598t(AbstractC23632g abstractC23632g, String str) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, abstractC23632g.f65505g, "no String-argument constructor/factory method to deserialize from String value ('%s')", str);
        throw null;
    }

    /* renamed from: u */
    public Object mo6597u(AbstractC23632g abstractC23632g, Object obj) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no array delegate creator specified", new Object[0]);
        throw null;
    }

    /* renamed from: v */
    public Object mo6596v(AbstractC23632g abstractC23632g) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no default no-arguments constructor found", new Object[0]);
        throw null;
    }

    /* renamed from: w */
    public Object mo6595w(AbstractC23632g abstractC23632g, Object obj) throws IOException {
        abstractC23632g.m6501E(mo6618D(), this, null, "no delegate creator specified", new Object[0]);
        throw null;
    }

    /* renamed from: x */
    public AbstractC23670n mo6594x() {
        return null;
    }

    /* renamed from: y */
    public AbstractC23698i mo6593y(C23624f c23624f) {
        return null;
    }

    /* renamed from: z */
    public AbstractC23670n mo6592z() {
        return null;
    }
}
