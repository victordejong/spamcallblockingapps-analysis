package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
/* renamed from: e.m.a.b.j.c0.i.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/y.class */
public final class C24123y extends AbstractC24095g0 {

    /* renamed from: a */
    public final long f66827a;

    /* renamed from: b */
    public final AbstractC24158r f66828b;

    /* renamed from: c */
    public final AbstractC24151n f66829c;

    public C24123y(long j, AbstractC24158r abstractC24158r, AbstractC24151n abstractC24151n) {
        this.f66827a = j;
        Objects.requireNonNull(abstractC24158r, "Null transportContext");
        this.f66828b = abstractC24158r;
        Objects.requireNonNull(abstractC24151n, "Null event");
        this.f66829c = abstractC24151n;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24095g0
    /* renamed from: a */
    public AbstractC24151n mo5556a() {
        return this.f66829c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24095g0
    /* renamed from: b */
    public long mo5555b() {
        return this.f66827a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24095g0
    /* renamed from: c */
    public AbstractC24158r mo5554c() {
        return this.f66828b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24095g0)) {
            return false;
        }
        AbstractC24095g0 abstractC24095g0 = (AbstractC24095g0) obj;
        if (this.f66827a != abstractC24095g0.mo5555b() || !this.f66828b.equals(abstractC24095g0.mo5554c()) || !this.f66829c.equals(abstractC24095g0.mo5556a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f66827a;
        return ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f66828b.hashCode()) * 1000003) ^ this.f66829c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PersistedEvent{id=");
        m8728C.append(this.f66827a);
        m8728C.append(", transportContext=");
        m8728C.append(this.f66828b);
        m8728C.append(", event=");
        m8728C.append(this.f66829c);
        m8728C.append("}");
        return m8728C.toString();
    }
}
