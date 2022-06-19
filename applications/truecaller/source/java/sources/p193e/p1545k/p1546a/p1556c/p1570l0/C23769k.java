package p193e.p1545k.p1546a.p1556c.p1570l0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23957y;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23437f;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
/* renamed from: e.k.a.c.l0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/k.class */
public class C23769k {

    /* renamed from: a */
    public final C23957y f65866a;

    /* renamed from: b */
    public final AbstractC23444c f65867b;

    /* renamed from: c */
    public final AbstractC23426b f65868c;

    /* renamed from: d */
    public Object f65869d;

    /* renamed from: e */
    public final AbstractC23331r.C23333b f65870e;

    /* renamed from: f */
    public final boolean f65871f;

    public C23769k(C23957y c23957y, AbstractC23444c abstractC23444c) {
        this.f65866a = c23957y;
        this.f65867b = abstractC23444c;
        AbstractC23331r.C23333b c23333b = AbstractC23331r.C23333b.f64537e;
        AbstractC23331r.C23333b c23333b2 = AbstractC23331r.C23333b.f64537e;
        AbstractC23331r.C23333b mo6355e = abstractC23444c.mo6355e(c23333b2);
        c23957y.m6863j(abstractC23444c.f65020a.f65728a, c23333b2);
        AbstractC23331r.C23333b m7270a = mo6355e == null ? c23333b2 : mo6355e.m7270a(c23333b2);
        AbstractC23331r.C23333b c23333b3 = c23957y.f65080i.f65052a;
        this.f65870e = c23333b3 == null ? m7270a : c23333b3.m7270a(m7270a);
        this.f65871f = m7270a.f64538a == AbstractC23331r.EnumC23332a.NON_DEFAULT;
        this.f65868c = c23957y.m6864e();
    }

    /* renamed from: a */
    public AbstractC23698i m6090a(AbstractC23636b abstractC23636b, boolean z, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23698i mo6262r0 = this.f65868c.mo6262r0(this.f65866a, abstractC23636b, abstractC23698i);
        AbstractC23698i abstractC23698i2 = abstractC23698i;
        if (mo6262r0 != abstractC23698i) {
            Class<?> cls = mo6262r0.f65728a;
            Class<?> cls2 = abstractC23698i.f65728a;
            if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
                StringBuilder m8728C = C22128a.m8728C("Illegal concrete-type annotation for method '");
                m8728C.append(abstractC23636b.getName());
                m8728C.append("': class ");
                m8728C.append(cls.getName());
                m8728C.append(" not a super-type of (declared) class ");
                throw new IllegalArgumentException(C22128a.m8647Z1(cls2, m8728C));
            }
            abstractC23698i2 = mo6262r0;
            z = true;
        }
        AbstractC23437f.EnumC23439b mo6302U = this.f65868c.mo6302U(abstractC23636b);
        boolean z2 = z;
        if (mo6302U != null) {
            z2 = z;
            if (mo6302U != AbstractC23437f.EnumC23439b.DEFAULT_TYPING) {
                z2 = mo6302U == AbstractC23437f.EnumC23439b.STATIC;
            }
        }
        if (z2) {
            return abstractC23698i2.mo5942P();
        }
        return null;
    }
}
