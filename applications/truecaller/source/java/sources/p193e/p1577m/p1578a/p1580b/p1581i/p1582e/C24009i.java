package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.i.e.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/i.class */
public final class C24009i extends AbstractC24020o {

    /* renamed from: a */
    public final List<AbstractC24025r> f66540a;

    public C24009i(List<AbstractC24025r> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f66540a = list;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24020o
    /* renamed from: a */
    public List<AbstractC24025r> mo5615a() {
        return this.f66540a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24020o)) {
            return false;
        }
        return this.f66540a.equals(((AbstractC24020o) obj).mo5615a());
    }

    public int hashCode() {
        return this.f66540a.hashCode() ^ 1000003;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("BatchedLogRequest{logRequests="), this.f66540a, "}");
    }
}
