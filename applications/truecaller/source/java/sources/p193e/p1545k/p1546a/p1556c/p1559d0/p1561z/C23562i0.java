package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.i0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/i0.class */
public class C23562i0 extends AbstractC23552e0<String> {

    /* renamed from: d */
    public static final C23562i0 f65365d = new C23562i0();

    public C23562i0() {
        super(String.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return mo6232d(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return "";
    }

    /* renamed from: m0 */
    public String mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String mo7001F1;
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            return abstractC23376j.mo5817U0();
        }
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l == EnumC23381m.START_ARRAY) {
            return mo6676A(abstractC23376j, abstractC23632g);
        }
        if (mo7142l == EnumC23381m.VALUE_EMBEDDED_OBJECT) {
            Object mo5803p0 = abstractC23376j.mo5803p0();
            if (mo5803p0 == null) {
                return null;
            }
            return mo5803p0 instanceof byte[] ? abstractC23632g.m6505A().m7262g((byte[]) mo5803p0, false) : mo5803p0.toString();
        } else if (mo7142l == EnumC23381m.START_OBJECT) {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        } else if (mo7142l.f64711h && (mo7001F1 = abstractC23376j.mo7001F1()) != null) {
            return mo7001F1;
        } else {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Textual;
    }
}
