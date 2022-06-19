package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
/* renamed from: e.k.a.c.d0.z.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/u.class */
public class C23588u extends AbstractC23541b0<Object> {

    /* renamed from: d */
    public static final C23588u f65433d = new C23588u();

    public C23588u() {
        super(Object.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (!abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME)) {
            abstractC23376j.mo7139w2();
            return null;
        }
        while (true) {
            EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
            if (mo5811i2 == null || mo5811i2 == EnumC23381m.END_OBJECT) {
                return null;
            }
            abstractC23376j.mo7139w2();
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q == 1 || mo7140q == 3 || mo7140q == 5) {
            return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.FALSE;
    }
}
