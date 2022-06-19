package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.Set;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23467c;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23486t;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.d0.z.j0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/j0.class */
public class C23567j0 extends C23467c {
    public C23567j0(C23467c c23467c) {
        super(c23467c);
        this.f65120k = false;
    }

    public C23567j0(C23467c c23467c, AbstractC23929s abstractC23929s) {
        super(c23467c, abstractC23929s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [java.lang.Object[]] */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.C23467c
    /* renamed from: L0 */
    public Object mo6579L0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        int i;
        AbstractC23488u[] abstractC23488uArr;
        if (this.f65118i != null) {
            return mo6736n0(abstractC23376j, abstractC23632g);
        }
        AbstractC23700j<Object> abstractC23700j = this.f65116g;
        if (abstractC23700j != null) {
            return this.f65115f.mo6595w(abstractC23632g, abstractC23700j.mo6232d(abstractC23376j, abstractC23632g));
        }
        if (this.f65113d.mo5986v()) {
            abstractC23632g.m6501E(this.f65113d.f65728a, this.f65115f, abstractC23376j, "abstract type (need to add/enable type information?)", new Object[0]);
            throw null;
        }
        boolean mo6609h = this.f65115f.mo6609h();
        boolean mo6607j = this.f65115f.mo6607j();
        if (!mo6609h && !mo6607j) {
            abstractC23632g.m6501E(this.f65113d.f65728a, this.f65115f, abstractC23376j, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator", new Object[0]);
            throw null;
        }
        int i2 = 0;
        Object obj = null;
        AbstractC23488u[] abstractC23488uArr2 = null;
        while (!abstractC23376j.mo7150O1(EnumC23381m.END_OBJECT)) {
            String mo5809k = abstractC23376j.mo5809k();
            AbstractC23488u m6726e = this.f65121l.m6726e(mo5809k);
            abstractC23376j.mo5811i2();
            if (m6726e != null) {
                if (obj != null) {
                    m6726e.mo6682i(abstractC23376j, abstractC23632g, obj);
                    abstractC23488uArr = abstractC23488uArr2;
                    i = i2;
                } else {
                    abstractC23488uArr = abstractC23488uArr2;
                    if (abstractC23488uArr2 == null) {
                        int i3 = this.f65121l.f65208c;
                        abstractC23488uArr = new Object[i3 + i3];
                    }
                    int i4 = i2 + 1;
                    abstractC23488uArr[i2] = m6726e;
                    i = i4 + 1;
                    abstractC23488uArr[i4] = m6726e.m6762h(abstractC23376j, abstractC23632g);
                }
            } else if (!"message".equals(mo5809k) || !mo6609h) {
                Set<String> set = this.f65124o;
                if (set == null || !set.contains(mo5809k)) {
                    C23486t c23486t = this.f65123n;
                    if (c23486t != null) {
                        c23486t.m6767b(abstractC23376j, abstractC23632g, obj, mo5809k);
                        abstractC23488uArr = abstractC23488uArr2;
                        i = i2;
                    } else {
                        mo6642l0(abstractC23376j, abstractC23632g, obj, mo5809k);
                        i = i2;
                        abstractC23488uArr = abstractC23488uArr2;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                    abstractC23488uArr = abstractC23488uArr2;
                    i = i2;
                }
            } else {
                Object mo6598t = this.f65115f.mo6598t(abstractC23632g, abstractC23376j.mo7001F1());
                obj = mo6598t;
                abstractC23488uArr = abstractC23488uArr2;
                i = i2;
                if (abstractC23488uArr2 != null) {
                    for (int i5 = 0; i5 < i2; i5 += 2) {
                        abstractC23488uArr2[i5].mo6680z(mo6598t, abstractC23488uArr2[i5 + 1]);
                    }
                    abstractC23488uArr = null;
                    obj = mo6598t;
                    i = i2;
                }
            }
            abstractC23376j.mo5811i2();
            abstractC23488uArr2 = abstractC23488uArr;
            i2 = i;
        }
        Object obj2 = obj;
        if (obj == null) {
            Object mo6598t2 = mo6609h ? this.f65115f.mo6598t(abstractC23632g, null) : this.f65115f.mo6596v(abstractC23632g);
            obj2 = mo6598t2;
            if (abstractC23488uArr2 != null) {
                int i6 = 0;
                while (true) {
                    obj2 = mo6598t2;
                    if (i6 >= i2) {
                        break;
                    }
                    abstractC23488uArr2[i6].mo6680z(mo6598t2, abstractC23488uArr2[i6 + 1]);
                    i6 += 2;
                }
            }
        }
        return obj2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.C23467c, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: q */
    public AbstractC23700j<Object> mo6219q(AbstractC23929s abstractC23929s) {
        return C23567j0.class != C23567j0.class ? this : new C23567j0(this, abstractC23929s);
    }
}
