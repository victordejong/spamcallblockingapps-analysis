package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.EnumSet;
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
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.d0.z.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/m.class */
public class C23572m extends AbstractC23541b0<EnumSet<?>> implements AbstractC23474i {

    /* renamed from: d */
    public final AbstractC23698i f65385d;

    /* renamed from: e */
    public AbstractC23700j<Enum<?>> f65386e;

    /* renamed from: f */
    public final AbstractC23484r f65387f;

    /* renamed from: g */
    public final boolean f65388g;

    /* renamed from: h */
    public final Boolean f65389h;

    /* JADX WARN: Multi-variable type inference failed */
    public C23572m(C23572m c23572m, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r, Boolean bool) {
        super(c23572m);
        this.f65385d = c23572m.f65385d;
        this.f65386e = abstractC23700j;
        this.f65387f = abstractC23484r;
        this.f65388g = C23529t.m6693a(abstractC23484r);
        this.f65389h = bool;
    }

    public C23572m(AbstractC23698i abstractC23698i, AbstractC23700j<?> abstractC23700j) {
        super(EnumSet.class);
        this.f65385d = abstractC23698i;
        if (abstractC23698i.m6243B()) {
            this.f65386e = null;
            this.f65389h = null;
            this.f65387f = null;
            this.f65388g = false;
            return;
        }
        throw new IllegalArgumentException("Type " + abstractC23698i + " not Java Enum type");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.EnumC23312a enumC23312a = AbstractC23311k.EnumC23312a.ACCEPT_SINGLE_VALUE_AS_ARRAY;
        AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, EnumSet.class);
        Boolean m7286b = m6644h0 != null ? m6644h0.m7286b(enumC23312a) : null;
        AbstractC23700j<Enum<?>> abstractC23700j = this.f65386e;
        AbstractC23700j<Object> m6461s = abstractC23700j == null ? abstractC23632g.m6461s(this.f65385d, abstractC23462d) : abstractC23632g.m6499G(abstractC23700j, abstractC23462d, this.f65385d);
        return (Objects.equals(this.f65389h, m7286b) && this.f65386e == m6461s && this.f65387f == m6461s) ? this : new C23572m(this, m6461s, m6646f0(abstractC23632g, abstractC23462d, m6461s), m7286b);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        EnumSet noneOf = EnumSet.noneOf(this.f65385d.f65728a);
        if (!abstractC23376j.mo7146V1()) {
            m6567n0(abstractC23376j, abstractC23632g, noneOf);
        } else {
            m6568m0(abstractC23376j, abstractC23632g, noneOf);
        }
        return noneOf;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        EnumSet enumSet = (EnumSet) obj;
        if (!abstractC23376j.mo7146V1()) {
            m6567n0(abstractC23376j, abstractC23632g, enumSet);
        } else {
            m6568m0(abstractC23376j, abstractC23632g, enumSet);
        }
        return enumSet;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException, C23379k {
        return abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.DYNAMIC;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return EnumSet.noneOf(this.f65385d.f65728a);
    }

    /* renamed from: m0 */
    public final EnumSet<?> m6568m0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, EnumSet enumSet) throws IOException {
        Enum<?> mo6232d;
        while (true) {
            try {
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                if (mo5811i2 == EnumC23381m.END_ARRAY) {
                    return enumSet;
                }
                if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                    mo6232d = this.f65386e.mo6232d(abstractC23376j, abstractC23632g);
                } else if (!this.f65388g) {
                    mo6232d = (Enum) this.f65387f.mo6233c(abstractC23632g);
                }
                if (mo6232d != null) {
                    enumSet.add(mo6232d);
                }
            } catch (Exception e) {
                throw C23733k.m6158i(e, enumSet, enumSet.size());
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return this.f65385d.f65730c == null;
    }

    /* renamed from: n0 */
    public EnumSet<?> m6567n0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, EnumSet enumSet) throws IOException {
        Boolean bool = this.f65389h;
        if (!(bool == Boolean.TRUE || (bool == null && abstractC23632g.m6488R(EnumC23694h.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            abstractC23632g.m6496J(EnumSet.class, abstractC23376j);
            throw null;
        } else if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            abstractC23632g.m6498H(this.f65385d, abstractC23376j);
            throw null;
        } else {
            try {
                Enum<?> mo6232d = this.f65386e.mo6232d(abstractC23376j, abstractC23632g);
                if (mo6232d != null) {
                    enumSet.add(mo6232d);
                }
                return enumSet;
            } catch (Exception e) {
                throw C23733k.m6158i(e, enumSet, enumSet.size());
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Collection;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.TRUE;
    }
}
