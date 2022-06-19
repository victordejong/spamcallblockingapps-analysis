package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.IOException;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.l0.s.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/u.class */
public final class C23804u {

    /* renamed from: a */
    public final AbstractC23316k0<?> f65927a;

    /* renamed from: b */
    public Object f65928b;

    /* renamed from: c */
    public boolean f65929c = false;

    public C23804u(AbstractC23316k0<?> abstractC23316k0) {
        this.f65927a = abstractC23316k0;
    }

    /* renamed from: a */
    public void m6050a(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, C23786j c23786j) throws IOException {
        this.f65929c = true;
        if (abstractC23372g.mo5858j()) {
            Object obj = this.f65928b;
            abstractC23372g.mo5853l1(obj == null ? null : String.valueOf(obj));
            return;
        }
        AbstractC23384p abstractC23384p = c23786j.f65893b;
        if (abstractC23384p == null) {
            return;
        }
        abstractC23372g.mo5833z0(abstractC23384p);
        c23786j.f65895d.mo5894f(this.f65928b, abstractC23372g, abstractC23425a0);
    }

    /* renamed from: b */
    public boolean m6049b(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, C23786j c23786j) throws IOException {
        if (this.f65928b != null) {
            if (!this.f65929c && !c23786j.f65896e) {
                return false;
            }
            if (!abstractC23372g.mo5858j()) {
                c23786j.f65895d.mo5894f(this.f65928b, abstractC23372g, abstractC23425a0);
                return true;
            }
            String.valueOf(this.f65928b);
            throw new C23371f("No native support for writing Object Ids", abstractC23372g);
        }
        return false;
    }
}
