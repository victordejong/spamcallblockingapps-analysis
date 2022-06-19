package p1727n3.p1758e.p1767b.p1768j1;

import java.util.Objects;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.n */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/n.class */
public final class C25992n<T> extends AbstractC25968j0.AbstractC25969a<T> {

    /* renamed from: a */
    public final String f72642a;

    /* renamed from: b */
    public final Class<T> f72643b;

    /* renamed from: c */
    public final Object f72644c;

    public C25992n(String str, Class<T> cls, Object obj) {
        Objects.requireNonNull(str, "Null id");
        this.f72642a = str;
        Objects.requireNonNull(cls, "Null valueClass");
        this.f72643b = cls;
        this.f72644c = obj;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0.AbstractC25969a
    /* renamed from: a */
    public String mo2823a() {
        return this.f72642a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0.AbstractC25969a
    /* renamed from: b */
    public Object mo2822b() {
        return this.f72644c;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0.AbstractC25969a
    /* renamed from: c */
    public Class<T> mo2821c() {
        return this.f72643b;
    }

    public boolean equals(Object obj) {
        Object obj2;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC25968j0.AbstractC25969a)) {
            return false;
        }
        AbstractC25968j0.AbstractC25969a abstractC25969a = (AbstractC25968j0.AbstractC25969a) obj;
        if (!this.f72642a.equals(abstractC25969a.mo2823a()) || !this.f72643b.equals(abstractC25969a.mo2821c()) || ((obj2 = this.f72644c) != null ? !obj2.equals(abstractC25969a.mo2822b()) : abstractC25969a.mo2822b() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f72642a.hashCode();
        int hashCode2 = this.f72643b.hashCode();
        Object obj = this.f72644c;
        return ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Option{id=");
        m8728C.append(this.f72642a);
        m8728C.append(", valueClass=");
        m8728C.append(this.f72643b);
        m8728C.append(", token=");
        return C22128a.m8634d(m8728C, this.f72644c, "}");
    }
}
