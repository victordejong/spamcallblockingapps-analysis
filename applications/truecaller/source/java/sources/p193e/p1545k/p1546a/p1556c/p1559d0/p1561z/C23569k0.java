package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.k0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/k0.class */
public class C23569k0 extends AbstractC23552e0<C23893a0> {
    public C23569k0() {
        super(C23893a0.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        EnumC23381m mo5811i2;
        C23893a0 c23893a0 = new C23893a0(abstractC23376j, (AbstractC23632g) null);
        if (!abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME)) {
            c23893a0.m5890A2(abstractC23376j);
        } else {
            c23893a0.mo5875M1();
            do {
                c23893a0.m5890A2(abstractC23376j);
                mo5811i2 = abstractC23376j.mo5811i2();
            } while (mo5811i2 == EnumC23381m.FIELD_NAME);
            EnumC23381m enumC23381m = EnumC23381m.END_OBJECT;
            if (mo5811i2 != enumC23381m) {
                throw abstractC23632g.m6467j0(abstractC23632g.f65505g, C23893a0.class, enumC23381m, abstractC23632g.m6529b("Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got " + mo5811i2, new Object[0]));
            }
            c23893a0.mo5840t0();
        }
        return c23893a0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Untyped;
    }
}
