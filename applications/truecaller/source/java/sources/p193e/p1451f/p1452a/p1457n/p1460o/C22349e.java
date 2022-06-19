package p193e.p1451f.p1452a.p1457n.p1460o;

import java.security.MessageDigest;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
/* renamed from: e.f.a.n.o.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/e.class */
public final class C22349e implements AbstractC22263f {

    /* renamed from: b */
    public final AbstractC22263f f62046b;

    /* renamed from: c */
    public final AbstractC22263f f62047c;

    public C22349e(AbstractC22263f abstractC22263f, AbstractC22263f abstractC22263f2) {
        this.f62046b = abstractC22263f;
        this.f62047c = abstractC22263f2;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        this.f62046b.mo8036b(messageDigest);
        this.f62047c.mo8036b(messageDigest);
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C22349e) {
            C22349e c22349e = (C22349e) obj;
            z = false;
            if (this.f62046b.equals(c22349e.f62046b)) {
                z = false;
                if (this.f62047c.equals(c22349e.f62047c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        return this.f62047c.hashCode() + (this.f62046b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DataCacheKey{sourceKey=");
        m8728C.append(this.f62046b);
        m8728C.append(", signature=");
        m8728C.append(this.f62047c);
        m8728C.append('}');
        return m8728C.toString();
    }
}
