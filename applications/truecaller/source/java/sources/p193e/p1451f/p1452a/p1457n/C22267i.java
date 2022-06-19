package p193e.p1451f.p1452a.p1457n;

import e.f.a.t.b;
import java.security.MessageDigest;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.C22264h;
/* renamed from: e.f.a.n.i */
/* loaded from: classes-dex2jar.jar:e/f/a/n/i.class */
public final class C22267i implements AbstractC22263f {

    /* renamed from: b */
    public final C26174a<C22264h<?>, Object> f61901b = new b();

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        int i = 0;
        while (true) {
            C26174a<C22264h<?>, Object> c26174a = this.f61901b;
            if (i < c26174a.f73025c) {
                C22264h<?> m2576l = c26174a.m2576l(i);
                Object m2572p = this.f61901b.m2572p(i);
                C22264h.AbstractC22266b<?> abstractC22266b = m2576l.f61898b;
                if (m2576l.f61900d == null) {
                    m2576l.f61900d = m2576l.f61899c.getBytes(AbstractC22263f.f61895a);
                }
                abstractC22266b.mo8201a(m2576l.f61900d, m2572p, messageDigest);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public <T> T m8361c(C22264h<T> c22264h) {
        return this.f61901b.m2579i(c22264h) >= 0 ? this.f61901b.getOrDefault(c22264h, null) : c22264h.f61897a;
    }

    /* renamed from: d */
    public void m8360d(C22267i c22267i) {
        this.f61901b.m2575m(c22267i.f61901b);
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        if (obj instanceof C22267i) {
            return this.f61901b.equals(((C22267i) obj).f61901b);
        }
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        return this.f61901b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Options{values=");
        m8728C.append(this.f61901b);
        m8728C.append('}');
        return m8728C.toString();
    }
}
