package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23476k;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.d0.z.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/q.class */
public class C23580q extends AbstractC23491w.C23492a {
    public C23580q() {
        super(C23374h.class);
    }

    /* renamed from: E */
    public static C23476k m6551E(String str, AbstractC23698i abstractC23698i, int i) {
        return C23476k.m6788I(C23951v.m5665a(str), abstractC23698i, null, null, null, null, i, null, C23949u.f66290h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: C */
    public AbstractC23488u[] mo6552C(C23624f c23624f) {
        AbstractC23698i m6865d = c23624f.m6865d(Integer.TYPE);
        AbstractC23698i m6865d2 = c23624f.m6865d(Long.TYPE);
        return new AbstractC23488u[]{m6551E("sourceRef", c23624f.f65071b.f65022a.m5914b(null, Object.class, C23887o.f66073e), 0), m6551E("byteOffset", m6865d2, 1), m6551E("charOffset", m6865d2, 2), m6551E("lineNr", m6865d, 3), m6551E("columnNr", m6865d, 4)};
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: g */
    public boolean mo6550g() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w
    /* renamed from: s */
    public Object mo6549s(AbstractC23632g abstractC23632g, Object[] objArr) {
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        char longValue = obj2 == null ? (char) 0 : ((Number) obj2).longValue();
        Object obj3 = objArr[2];
        char longValue2 = obj3 == null ? (char) 0 : ((Number) obj3).longValue();
        Object obj4 = objArr[3];
        int intValue = obj4 == null ? 0 : ((Number) obj4).intValue();
        Object obj5 = objArr[4];
        return new C23374h(obj, longValue, longValue2, intValue, obj5 == null ? 0 : ((Number) obj5).intValue());
    }
}
