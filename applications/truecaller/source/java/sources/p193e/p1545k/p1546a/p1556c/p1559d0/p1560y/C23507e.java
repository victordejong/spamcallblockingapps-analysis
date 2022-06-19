package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.lang.reflect.Member;
import java.util.HashMap;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23554f0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/e.class */
public class C23507e {

    /* renamed from: j */
    public static final String[] f65229j = {"default", "from-String", "from-int", "from-long", "from-big-integer", "from-double", "from-big-decimal", "from-boolean", "delegate", "property-based", "array-delegate"};

    /* renamed from: a */
    public final AbstractC23444c f65230a;

    /* renamed from: b */
    public final boolean f65231b;

    /* renamed from: c */
    public final boolean f65232c;

    /* renamed from: d */
    public final AbstractC23670n[] f65233d = new AbstractC23670n[11];

    /* renamed from: e */
    public int f65234e = 0;

    /* renamed from: f */
    public boolean f65235f = false;

    /* renamed from: g */
    public AbstractC23488u[] f65236g;

    /* renamed from: h */
    public AbstractC23488u[] f65237h;

    /* renamed from: i */
    public AbstractC23488u[] f65238i;

    public C23507e(AbstractC23444c abstractC23444c, AbstractC23458k<?> abstractC23458k) {
        this.f65230a = abstractC23444c;
        this.f65231b = abstractC23458k.m6867b();
        this.f65232c = abstractC23458k.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
    }

    /* renamed from: a */
    public final AbstractC23698i m6713a(AbstractC23632g abstractC23632g, AbstractC23670n abstractC23670n, AbstractC23488u[] abstractC23488uArr) throws C23733k {
        if (!this.f65235f || abstractC23670n == null) {
            return null;
        }
        int i = 0;
        if (abstractC23488uArr != null) {
            int length = abstractC23488uArr.length;
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length) {
                    break;
                } else if (abstractC23488uArr[i2] == null) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        AbstractC23458k<?> abstractC23458k = abstractC23632g.f65501c;
        AbstractC23698i mo6367r = abstractC23670n.mo6367r(i);
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        AbstractC23698i abstractC23698i = mo6367r;
        if (m6864e != null) {
            C23669m m6369p = abstractC23670n.m6369p(i);
            Object mo6279j = m6864e.mo6279j(m6369p);
            abstractC23698i = mo6279j != null ? mo6367r.mo5940R(abstractC23632g.mo6464p(m6369p, mo6279j)) : m6864e.mo6264q0(abstractC23458k, m6369p, mo6367r);
        }
        return abstractC23698i;
    }

    /* renamed from: b */
    public boolean m6712b(AbstractC23670n abstractC23670n) {
        return C23914g.m5744w(abstractC23670n.mo6376g()) && "valueOf".equals(abstractC23670n.getName());
    }

    /* renamed from: c */
    public void m6711c(int i, boolean z, AbstractC23670n abstractC23670n, AbstractC23670n abstractC23670n2) {
        throw new IllegalArgumentException(String.format("Conflicting %s creators: already had %s creator %s, encountered another: %s", f65229j[i], z ? "explicitly marked" : "implicitly discovered", abstractC23670n, abstractC23670n2));
    }

    /* renamed from: d */
    public void m6710d(AbstractC23670n abstractC23670n, boolean z, AbstractC23488u[] abstractC23488uArr, int i) {
        if (abstractC23670n.mo6367r(i).mo5983x()) {
            if (!m6706h(abstractC23670n, 10, z)) {
                return;
            }
            this.f65237h = abstractC23488uArr;
        } else if (!m6706h(abstractC23670n, 8, z)) {
        } else {
            this.f65236g = abstractC23488uArr;
        }
    }

    /* renamed from: e */
    public void m6709e(AbstractC23670n abstractC23670n, boolean z, AbstractC23488u[] abstractC23488uArr) {
        Integer num;
        if (m6706h(abstractC23670n, 9, z)) {
            if (abstractC23488uArr.length > 1) {
                HashMap hashMap = new HashMap();
                int length = abstractC23488uArr.length;
                for (int i = 0; i < length; i++) {
                    String str = abstractC23488uArr[i].f65171c.f66304a;
                    if ((!str.isEmpty() || abstractC23488uArr[i].mo6754o() == null) && (num = (Integer) hashMap.put(str, Integer.valueOf(i))) != null) {
                        throw new IllegalArgumentException(String.format("Duplicate creator property \"%s\" (index %s vs %d) for type %s ", str, num, Integer.valueOf(i), C23914g.m5776E(this.f65230a.f65020a.f65728a)));
                    }
                }
            }
            this.f65238i = abstractC23488uArr;
        }
    }

    /* renamed from: f */
    public AbstractC23491w m6708f(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23698i m6713a = m6713a(abstractC23632g, this.f65233d[8], this.f65236g);
        AbstractC23698i m6713a2 = m6713a(abstractC23632g, this.f65233d[10], this.f65237h);
        C23554f0 c23554f0 = new C23554f0(this.f65230a.f65020a);
        AbstractC23670n[] abstractC23670nArr = this.f65233d;
        AbstractC23670n abstractC23670n = abstractC23670nArr[0];
        AbstractC23670n abstractC23670n2 = abstractC23670nArr[8];
        AbstractC23488u[] abstractC23488uArr = this.f65236g;
        AbstractC23670n abstractC23670n3 = abstractC23670nArr[9];
        AbstractC23488u[] abstractC23488uArr2 = this.f65238i;
        c23554f0.f65327c = abstractC23670n;
        c23554f0.f65331g = abstractC23670n2;
        c23554f0.f65330f = m6713a;
        c23554f0.f65332h = abstractC23488uArr;
        c23554f0.f65328d = abstractC23670n3;
        c23554f0.f65329e = abstractC23488uArr2;
        AbstractC23670n abstractC23670n4 = abstractC23670nArr[10];
        AbstractC23488u[] abstractC23488uArr3 = this.f65237h;
        c23554f0.f65334j = abstractC23670n4;
        c23554f0.f65333i = m6713a2;
        c23554f0.f65335k = abstractC23488uArr3;
        c23554f0.f65336l = abstractC23670nArr[1];
        c23554f0.f65337m = abstractC23670nArr[2];
        c23554f0.f65338n = abstractC23670nArr[3];
        c23554f0.f65339o = abstractC23670nArr[4];
        c23554f0.f65340p = abstractC23670nArr[5];
        c23554f0.f65341q = abstractC23670nArr[6];
        c23554f0.f65342r = abstractC23670nArr[7];
        return c23554f0;
    }

    /* renamed from: g */
    public void m6707g(AbstractC23670n abstractC23670n) {
        AbstractC23670n[] abstractC23670nArr = this.f65233d;
        if (this.f65231b) {
            C23914g.m5762e((Member) abstractC23670n.mo6379b(), this.f65232c);
        }
        abstractC23670nArr[0] = abstractC23670n;
    }

    /* renamed from: h */
    public boolean m6706h(AbstractC23670n abstractC23670n, int i, boolean z) {
        boolean z2;
        int i2 = 1 << i;
        this.f65235f = true;
        AbstractC23670n abstractC23670n2 = this.f65233d[i];
        if (abstractC23670n2 != null) {
            if ((this.f65234e & i2) == 0) {
                z2 = !z;
            } else if (!z) {
                return false;
            } else {
                z2 = true;
            }
            if (z2 && abstractC23670n2.getClass() == abstractC23670n.getClass()) {
                Class<?> mo6366s = abstractC23670n2.mo6366s(0);
                Class<?> mo6366s2 = abstractC23670n.mo6366s(0);
                if (mo6366s == mo6366s2) {
                    if (m6712b(abstractC23670n)) {
                        return false;
                    }
                    if (!m6712b(abstractC23670n2)) {
                        m6711c(i, z, abstractC23670n2, abstractC23670n);
                        throw null;
                    }
                } else if (mo6366s2.isAssignableFrom(mo6366s)) {
                    return false;
                } else {
                    if (!mo6366s.isAssignableFrom(mo6366s2)) {
                        if (mo6366s.isPrimitive() == mo6366s2.isPrimitive()) {
                            m6711c(i, z, abstractC23670n2, abstractC23670n);
                            throw null;
                        } else if (mo6366s.isPrimitive()) {
                            return false;
                        }
                    }
                }
            }
        }
        if (z) {
            this.f65234e |= i2;
        }
        AbstractC23670n[] abstractC23670nArr = this.f65233d;
        if (abstractC23670n != null && this.f65231b) {
            C23914g.m5762e((Member) abstractC23670n.mo6379b(), this.f65232c);
        }
        abstractC23670nArr[i] = abstractC23670n;
        return true;
    }
}
