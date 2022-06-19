package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24027t;
/* renamed from: e.m.a.b.i.e.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/n.class */
public final class C24018n extends AbstractC24027t {

    /* renamed from: a */
    public final AbstractC24027t.EnumC24029b f66565a;

    /* renamed from: b */
    public final AbstractC24027t.EnumC24028a f66566b;

    public C24018n(AbstractC24027t.EnumC24029b enumC24029b, AbstractC24027t.EnumC24028a enumC24028a, C24019a c24019a) {
        this.f66565a = enumC24029b;
        this.f66566b = enumC24028a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24027t
    /* renamed from: a */
    public AbstractC24027t.EnumC24028a mo5596a() {
        return this.f66566b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24027t
    /* renamed from: b */
    public AbstractC24027t.EnumC24029b mo5595b() {
        return this.f66565a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24027t)) {
            return false;
        }
        AbstractC24027t abstractC24027t = (AbstractC24027t) obj;
        AbstractC24027t.EnumC24029b enumC24029b = this.f66565a;
        if (enumC24029b != null ? enumC24029b.equals(abstractC24027t.mo5595b()) : abstractC24027t.mo5595b() == null) {
            AbstractC24027t.EnumC24028a enumC24028a = this.f66566b;
            if (enumC24028a != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC24027t.EnumC24029b enumC24029b = this.f66565a;
        int i = 0;
        int hashCode = enumC24029b == null ? 0 : enumC24029b.hashCode();
        AbstractC24027t.EnumC24028a enumC24028a = this.f66566b;
        if (enumC24028a != null) {
            i = enumC24028a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NetworkConnectionInfo{networkType=");
        m8728C.append(this.f66565a);
        m8728C.append(", mobileSubtype=");
        m8728C.append(this.f66566b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
