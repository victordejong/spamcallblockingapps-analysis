package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23933u;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.g0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/g0.class */
public final class C23556g0 extends AbstractC23541b0<String[]> implements AbstractC23474i {

    /* renamed from: h */
    public static final String[] f65343h = new String[0];

    /* renamed from: i */
    public static final C23556g0 f65344i = new C23556g0();

    /* renamed from: d */
    public AbstractC23700j<String> f65345d;

    /* renamed from: e */
    public final AbstractC23484r f65346e;

    /* renamed from: f */
    public final Boolean f65347f;

    /* renamed from: g */
    public final boolean f65348g;

    public C23556g0() {
        super(String[].class);
        this.f65345d = null;
        this.f65346e = null;
        this.f65347f = null;
        this.f65348g = C23529t.m6693a(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C23556g0(AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r, Boolean bool) {
        super(String[].class);
        this.f65345d = abstractC23700j;
        this.f65346e = abstractC23484r;
        this.f65347f = bool;
        this.f65348g = C23529t.m6693a(abstractC23484r);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23700j<?> m6645g0 = m6645g0(abstractC23632g, abstractC23462d, this.f65345d);
        AbstractC23698i m6465o = abstractC23632g.m6465o(String.class);
        AbstractC23700j<Object> m6461s = m6645g0 == null ? abstractC23632g.m6461s(m6465o, abstractC23462d) : abstractC23632g.m6499G(m6645g0, abstractC23462d, m6465o);
        AbstractC23311k.EnumC23312a enumC23312a = AbstractC23311k.EnumC23312a.ACCEPT_SINGLE_VALUE_AS_ARRAY;
        AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, String[].class);
        Boolean m7286b = m6644h0 != null ? m6644h0.m7286b(enumC23312a) : null;
        AbstractC23484r m6646f0 = m6646f0(abstractC23632g, abstractC23462d, m6461s);
        AbstractC23700j<Object> abstractC23700j = m6461s;
        if (m6461s != null) {
            abstractC23700j = m6461s;
            if (C23914g.m5742y(m6461s)) {
                abstractC23700j = null;
            }
        }
        return (this.f65345d == abstractC23700j && Objects.equals(this.f65347f, m7286b) && this.f65346e == m6646f0) ? this : new C23556g0(abstractC23700j, m6646f0, m7286b);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        String[] strArr;
        if (!abstractC23376j.mo7146V1()) {
            strArr = m6590n0(abstractC23376j, abstractC23632g);
        } else if (this.f65345d != null) {
            strArr = m6591m0(abstractC23376j, abstractC23632g, null);
        } else {
            C23933u m6485U = abstractC23632g.m6485U();
            Object[] m5721g = m6485U.m5721g();
            int i = 0;
            while (true) {
                try {
                    String mo6968h2 = abstractC23376j.mo6968h2();
                    String str = mo6968h2;
                    if (mo6968h2 == null) {
                        EnumC23381m mo7142l = abstractC23376j.mo7142l();
                        if (mo7142l == EnumC23381m.END_ARRAY) {
                            break;
                        } else if (mo7142l != EnumC23381m.VALUE_NULL) {
                            str = m6651a0(abstractC23376j, abstractC23632g);
                        } else if (!this.f65348g) {
                            str = (String) this.f65346e.mo6233c(abstractC23632g);
                        }
                    }
                    Object[] objArr = m5721g;
                    int i2 = i;
                    if (i >= m5721g.length) {
                        objArr = m6485U.m5725c(m5721g);
                        i2 = 0;
                    }
                    objArr[i2] = str;
                    i = i2 + 1;
                    m5721g = objArr;
                } catch (Exception e) {
                    throw C23733k.m6158i(e, m5721g, m6485U.f66193c + i);
                }
            }
            strArr = (String[]) m6485U.m5722f(m5721g, i, String.class);
            abstractC23632g.m6473g0(m6485U);
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
        r7 = p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23556g0.f65343h;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo6231e(p193e.p1545k.p1546a.p1548b.AbstractC23376j r7, p193e.p1545k.p1546a.p1556c.AbstractC23632g r8, java.lang.Object r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23556g0.mo6231e(e.k.a.b.j, e.k.a.c.g, java.lang.Object):java.lang.Object");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.CONSTANT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return f65343h;
    }

    /* renamed from: m0 */
    public final String[] m6591m0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, String[] strArr) throws IOException {
        int i;
        Object[] objArr;
        String mo6232d;
        C23933u m6485U = abstractC23632g.m6485U();
        if (strArr == null) {
            objArr = m6485U.m5721g();
            i = 0;
        } else {
            i = strArr.length;
            objArr = m6485U.m5720h(strArr, i);
        }
        AbstractC23700j<String> abstractC23700j = this.f65345d;
        Object[] objArr2 = objArr;
        while (true) {
            try {
                if (abstractC23376j.mo6968h2() == null) {
                    EnumC23381m mo7142l = abstractC23376j.mo7142l();
                    if (mo7142l == EnumC23381m.END_ARRAY) {
                        String[] strArr2 = (String[]) m6485U.m5722f(objArr2, i, String.class);
                        abstractC23632g.m6473g0(m6485U);
                        return strArr2;
                    } else if (mo7142l != EnumC23381m.VALUE_NULL) {
                        mo6232d = abstractC23700j.mo6232d(abstractC23376j, abstractC23632g);
                    } else if (!this.f65348g) {
                        mo6232d = (String) this.f65346e.mo6233c(abstractC23632g);
                    }
                } else {
                    mo6232d = abstractC23700j.mo6232d(abstractC23376j, abstractC23632g);
                }
                int i2 = i;
                Object[] objArr3 = objArr2;
                if (i >= objArr2.length) {
                    objArr3 = m6485U.m5725c(objArr2);
                    i2 = 0;
                }
                objArr3[i2] = mo6232d;
                i = i2 + 1;
                objArr2 = objArr3;
            } catch (Exception e) {
                throw C23733k.m6158i(e, String.class, i);
            }
        }
    }

    /* renamed from: n0 */
    public final String[] m6590n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Boolean bool = this.f65347f;
        if (bool == Boolean.TRUE || (bool == null && abstractC23632g.m6488R(EnumC23694h.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            return new String[]{abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL) ? (String) this.f65346e.mo6233c(abstractC23632g) : m6651a0(abstractC23376j, abstractC23632g)};
        } else if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            return m6674C(abstractC23376j, abstractC23632g);
        } else {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Array;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.TRUE;
    }
}
