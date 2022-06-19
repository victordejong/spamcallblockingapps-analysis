package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24021p;
/* renamed from: e.m.a.b.i.e.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/j.class */
public final class C24010j extends AbstractC24021p {

    /* renamed from: a */
    public final AbstractC24021p.EnumC24022a f66541a;

    /* renamed from: b */
    public final AbstractC24000a f66542b;

    public C24010j(AbstractC24021p.EnumC24022a enumC24022a, AbstractC24000a abstractC24000a, C24011a c24011a) {
        this.f66541a = enumC24022a;
        this.f66542b = abstractC24000a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24021p
    /* renamed from: a */
    public AbstractC24000a mo5614a() {
        return this.f66542b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24021p
    /* renamed from: b */
    public AbstractC24021p.EnumC24022a mo5613b() {
        return this.f66541a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24021p)) {
            return false;
        }
        AbstractC24021p abstractC24021p = (AbstractC24021p) obj;
        AbstractC24021p.EnumC24022a enumC24022a = this.f66541a;
        if (enumC24022a != null ? enumC24022a.equals(abstractC24021p.mo5613b()) : abstractC24021p.mo5613b() == null) {
            AbstractC24000a abstractC24000a = this.f66542b;
            if (abstractC24000a != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC24021p.EnumC24022a enumC24022a = this.f66541a;
        int i = 0;
        int hashCode = enumC24022a == null ? 0 : enumC24022a.hashCode();
        AbstractC24000a abstractC24000a = this.f66542b;
        if (abstractC24000a != null) {
            i = abstractC24000a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClientInfo{clientType=");
        m8728C.append(this.f66541a);
        m8728C.append(", androidClientInfo=");
        m8728C.append(this.f66542b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
