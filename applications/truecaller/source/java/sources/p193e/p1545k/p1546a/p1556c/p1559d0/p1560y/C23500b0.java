package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.BitSet;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23486t;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
/* renamed from: e.k.a.c.d0.y.b0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/b0.class */
public class C23500b0 {

    /* renamed from: a */
    public final AbstractC23376j f65197a;

    /* renamed from: b */
    public final AbstractC23632g f65198b;

    /* renamed from: c */
    public final C23531v f65199c;

    /* renamed from: d */
    public final Object[] f65200d;

    /* renamed from: e */
    public int f65201e;

    /* renamed from: f */
    public int f65202f;

    /* renamed from: g */
    public final BitSet f65203g;

    /* renamed from: h */
    public AbstractC23495a0 f65204h;

    /* renamed from: i */
    public Object f65205i;

    public C23500b0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, int i, C23531v c23531v) {
        this.f65197a = abstractC23376j;
        this.f65198b = abstractC23632g;
        this.f65201e = i;
        this.f65199c = c23531v;
        this.f65200d = new Object[i];
        if (i < 32) {
            this.f65203g = null;
        } else {
            this.f65203g = new BitSet();
        }
    }

    /* renamed from: a */
    public Object m6734a(AbstractC23488u abstractC23488u) throws C23733k {
        if (abstractC23488u.mo6754o() != null) {
            this.f65198b.m6460t(abstractC23488u.mo6754o(), abstractC23488u, null);
            throw null;
        } else if (abstractC23488u.m6331a()) {
            this.f65198b.m6481Y(abstractC23488u, "Missing required creator property '%s' (index %d)", abstractC23488u.f65171c.f66304a, Integer.valueOf(abstractC23488u.mo6687m()));
            throw null;
        } else if (this.f65198b.m6488R(EnumC23694h.FAIL_ON_MISSING_CREATOR_PROPERTIES)) {
            this.f65198b.m6481Y(abstractC23488u, "Missing creator property '%s' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled", abstractC23488u.f65171c.f66304a, Integer.valueOf(abstractC23488u.mo6687m()));
            throw null;
        } else {
            try {
                Object mo6233c = abstractC23488u.f65177i.mo6233c(this.f65198b);
                return mo6233c != null ? mo6233c : abstractC23488u.mo6751r().mo6233c(this.f65198b);
            } catch (C23733k e) {
                AbstractC23663i mo6108c = abstractC23488u.mo6108c();
                if (mo6108c != null) {
                    e.m6160g(mo6108c.mo6376g(), abstractC23488u.f65171c.f66304a);
                }
                throw e;
            }
        }
    }

    /* renamed from: b */
    public boolean m6733b(AbstractC23488u abstractC23488u, Object obj) {
        int mo6687m = abstractC23488u.mo6687m();
        this.f65200d[mo6687m] = obj;
        BitSet bitSet = this.f65203g;
        boolean z = false;
        if (bitSet != null) {
            if (bitSet.get(mo6687m)) {
                return false;
            }
            this.f65203g.set(mo6687m);
            this.f65201e--;
            return false;
        }
        int i = this.f65202f;
        int i2 = (1 << mo6687m) | i;
        if (i == i2) {
            return false;
        }
        this.f65202f = i2;
        int i3 = this.f65201e - 1;
        this.f65201e = i3;
        if (i3 > 0) {
            return false;
        }
        if (this.f65199c == null || this.f65205i != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public void m6732c(C23486t c23486t, String str, Object obj) {
        this.f65204h = new AbstractC23495a0.C23496a(this.f65204h, obj, c23486t, str);
    }

    /* renamed from: d */
    public boolean m6731d(String str) throws IOException {
        C23531v c23531v = this.f65199c;
        if (c23531v == null || !str.equals(c23531v.f65291b.f66304a)) {
            return false;
        }
        this.f65205i = this.f65199c.m6689c(this.f65197a, this.f65198b);
        return true;
    }
}
