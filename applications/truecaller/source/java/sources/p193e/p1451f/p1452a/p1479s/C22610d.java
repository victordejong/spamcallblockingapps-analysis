package p193e.p1451f.p1452a.p1479s;

import java.security.MessageDigest;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
/* renamed from: e.f.a.s.d */
/* loaded from: classes-dex2jar.jar:e/f/a/s/d.class */
public final class C22610d implements AbstractC22263f {

    /* renamed from: b */
    public final Object f62624b;

    public C22610d(Object obj) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.f62624b = obj;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    /* renamed from: b */
    public void mo8036b(MessageDigest messageDigest) {
        messageDigest.update(this.f62624b.toString().getBytes(AbstractC22263f.f61895a));
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public boolean equals(Object obj) {
        if (obj instanceof C22610d) {
            return this.f62624b.equals(((C22610d) obj).f62624b);
        }
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22263f
    public int hashCode() {
        return this.f62624b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ObjectKey{object=");
        m8728C.append(this.f62624b);
        m8728C.append('}');
        return m8728C.toString();
    }
}
