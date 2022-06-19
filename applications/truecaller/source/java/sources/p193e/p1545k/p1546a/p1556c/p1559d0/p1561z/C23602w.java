package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23871a;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23933u;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/w.class */
public class C23602w extends AbstractC23561i<Object[]> implements AbstractC23474i {

    /* renamed from: h */
    public final boolean f65458h;

    /* renamed from: i */
    public final Class<?> f65459i;

    /* renamed from: j */
    public AbstractC23700j<Object> f65460j;

    /* renamed from: k */
    public final AbstractC23709e f65461k;

    /* renamed from: l */
    public final Object[] f65462l;

    public C23602w(C23602w c23602w, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r, Boolean bool) {
        super(c23602w, abstractC23484r, bool);
        this.f65459i = c23602w.f65459i;
        this.f65458h = c23602w.f65458h;
        this.f65462l = c23602w.f65462l;
        this.f65460j = abstractC23700j;
        this.f65461k = abstractC23709e;
    }

    public C23602w(AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e) {
        super(abstractC23698i, (AbstractC23484r) null, (Boolean) null);
        C23871a c23871a = (C23871a) abstractC23698i;
        Class<?> cls = c23871a.f66019j.f65728a;
        this.f65459i = cls;
        this.f65458h = cls == Object.class;
        this.f65460j = abstractC23700j;
        this.f65461k = abstractC23709e;
        this.f65462l = (Object[]) c23871a.f66020k;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23700j<?> abstractC23700j = this.f65460j;
        Class<?> cls = this.f65361d.f65728a;
        AbstractC23311k.EnumC23312a enumC23312a = AbstractC23311k.EnumC23312a.ACCEPT_SINGLE_VALUE_AS_ARRAY;
        AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, cls);
        Boolean m7286b = m6644h0 != null ? m6644h0.m7286b(enumC23312a) : null;
        AbstractC23700j<?> m6645g0 = m6645g0(abstractC23632g, abstractC23462d, abstractC23700j);
        AbstractC23698i mo5948k = this.f65361d.mo5948k();
        AbstractC23700j<Object> m6461s = m6645g0 == null ? abstractC23632g.m6461s(mo5948k, abstractC23462d) : abstractC23632g.m6499G(m6645g0, abstractC23462d, mo5948k);
        AbstractC23709e abstractC23709e = this.f65461k;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e != null) {
            abstractC23709e2 = abstractC23709e.mo6204f(abstractC23462d);
        }
        AbstractC23484r m6646f0 = m6646f0(abstractC23632g, abstractC23462d, m6461s);
        return (Objects.equals(m7286b, this.f65364g) && m6646f0 == this.f65362e && m6461s == this.f65460j && abstractC23709e2 == this.f65461k) ? this : new C23602w(this, m6461s, abstractC23709e2, m6646f0, m7286b);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Object[] objArr;
        Object mo6232d;
        if (!abstractC23376j.mo7146V1()) {
            objArr = m6540o0(abstractC23376j, abstractC23632g);
        } else {
            C23933u m6485U = abstractC23632g.m6485U();
            Object[] m5721g = m6485U.m5721g();
            AbstractC23709e abstractC23709e = this.f65461k;
            int i = 0;
            while (true) {
                try {
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    if (mo5811i2 == EnumC23381m.END_ARRAY) {
                        break;
                    }
                    if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                        mo6232d = abstractC23709e == null ? this.f65460j.mo6232d(abstractC23376j, abstractC23632g) : this.f65460j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                    } else if (!this.f65363f) {
                        mo6232d = this.f65362e.mo6233c(abstractC23632g);
                    }
                    Object[] objArr2 = m5721g;
                    int i2 = i;
                    if (i >= m5721g.length) {
                        objArr2 = m6485U.m5725c(m5721g);
                        i2 = 0;
                    }
                    objArr2[i2] = mo6232d;
                    i = i2 + 1;
                    m5721g = objArr2;
                } catch (Exception e) {
                    throw C23733k.m6158i(e, m5721g, m6485U.f66193c + i);
                }
            }
            objArr = this.f65458h ? m6485U.m5723e(m5721g, i) : m6485U.m5722f(m5721g, i, this.f65459i);
            abstractC23632g.m6473g0(m6485U);
        }
        return objArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object[] objArr;
        Object mo6232d;
        Object[] objArr2 = (Object[]) obj;
        if (!abstractC23376j.mo7146V1()) {
            Object[] m6540o0 = m6540o0(abstractC23376j, abstractC23632g);
            if (m6540o0 == null) {
                objArr = objArr2;
            } else {
                int length = objArr2.length;
                objArr = new Object[m6540o0.length + length];
                System.arraycopy(objArr2, 0, objArr, 0, length);
                System.arraycopy(m6540o0, 0, objArr, length, m6540o0.length);
            }
        } else {
            C23933u m6485U = abstractC23632g.m6485U();
            int length2 = objArr2.length;
            Object[] m5720h = m6485U.m5720h(objArr2, length2);
            AbstractC23709e abstractC23709e = this.f65461k;
            while (true) {
                try {
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    if (mo5811i2 == EnumC23381m.END_ARRAY) {
                        break;
                    }
                    if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                        mo6232d = abstractC23709e == null ? this.f65460j.mo6232d(abstractC23376j, abstractC23632g) : this.f65460j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                    } else if (!this.f65363f) {
                        mo6232d = this.f65362e.mo6233c(abstractC23632g);
                    }
                    int i = length2;
                    Object[] objArr3 = m5720h;
                    if (length2 >= m5720h.length) {
                        objArr3 = m6485U.m5725c(m5720h);
                        i = 0;
                    }
                    objArr3[i] = mo6232d;
                    length2 = i + 1;
                    m5720h = objArr3;
                } catch (Exception e) {
                    throw C23733k.m6158i(e, m5720h, m6485U.f66193c + length2);
                }
            }
            objArr = this.f65458h ? m6485U.m5723e(m5720h, length2) : m6485U.m5722f(m5720h, length2, this.f65459i);
            abstractC23632g.m6473g0(m6485U);
        }
        return objArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return (Object[]) abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.CONSTANT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return this.f65462l;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i
    /* renamed from: m0 */
    public AbstractC23700j<Object> mo6541m0() {
        return this.f65460j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return this.f65460j == null && this.f65461k == null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Array;
    }

    /* renamed from: o0 */
    public Object[] m6540o0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        Object obj;
        Boolean bool = this.f65364g;
        if (bool == Boolean.TRUE || (bool == null && abstractC23632g.m6488R(EnumC23694h.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
                AbstractC23709e abstractC23709e = this.f65461k;
                obj = abstractC23709e == null ? this.f65460j.mo6232d(abstractC23376j, abstractC23632g) : this.f65460j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            } else if (this.f65363f) {
                return this.f65462l;
            } else {
                obj = this.f65362e.mo6233c(abstractC23632g);
            }
            Object[] objArr = this.f65458h ? new Object[1] : (Object[]) Array.newInstance(this.f65459i, 1);
            objArr[0] = obj;
            return objArr;
        } else if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            abstractC23632g.m6498H(this.f65361d, abstractC23376j);
            throw null;
        } else if (this.f65459i != Byte.class) {
            return m6674C(abstractC23376j, abstractC23632g);
        } else {
            byte[] mo5826I = abstractC23376j.mo5826I(abstractC23632g.m6505A());
            Byte[] bArr = new Byte[mo5826I.length];
            int length = mo5826I.length;
            for (int i = 0; i < length; i++) {
                bArr[i] = Byte.valueOf(mo5826I[i]);
            }
            return bArr;
        }
    }
}
