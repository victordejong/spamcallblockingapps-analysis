package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s;
/* renamed from: e.m.a.b.j.c0.h.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/q.class */
public final class C24066q extends AbstractC24070s.AbstractC24071a {

    /* renamed from: a */
    public final long f66719a;

    /* renamed from: b */
    public final long f66720b;

    /* renamed from: c */
    public final Set<AbstractC24070s.EnumC24073b> f66721c;

    /* renamed from: e.m.a.b.j.c0.h.q$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/q$b.class */
    public static final class C24068b extends AbstractC24070s.AbstractC24071a.AbstractC24072a {

        /* renamed from: a */
        public Long f66722a;

        /* renamed from: b */
        public Long f66723b;

        /* renamed from: c */
        public Set<AbstractC24070s.EnumC24073b> f66724c;

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a.AbstractC24072a
        /* renamed from: a */
        public AbstractC24070s.AbstractC24071a mo5585a() {
            String str = this.f66722a == null ? " delta" : "";
            String str2 = str;
            if (this.f66723b == null) {
                str2 = C22128a.m8543z2(str, " maxAllowedDelay");
            }
            String str3 = str2;
            if (this.f66724c == null) {
                str3 = C22128a.m8543z2(str2, " flags");
            }
            if (str3.isEmpty()) {
                return new C24066q(this.f66722a.longValue(), this.f66723b.longValue(), this.f66724c, null);
            }
            throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str3));
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a.AbstractC24072a
        /* renamed from: b */
        public AbstractC24070s.AbstractC24071a.AbstractC24072a mo5584b(long j) {
            this.f66722a = Long.valueOf(j);
            return this;
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a.AbstractC24072a
        /* renamed from: c */
        public AbstractC24070s.AbstractC24071a.AbstractC24072a mo5583c(long j) {
            this.f66723b = Long.valueOf(j);
            return this;
        }
    }

    public C24066q(long j, long j2, Set set, C24067a c24067a) {
        this.f66719a = j;
        this.f66720b = j2;
        this.f66721c = set;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a
    /* renamed from: b */
    public long mo5588b() {
        return this.f66719a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a
    /* renamed from: c */
    public Set<AbstractC24070s.EnumC24073b> mo5587c() {
        return this.f66721c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s.AbstractC24071a
    /* renamed from: d */
    public long mo5586d() {
        return this.f66720b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24070s.AbstractC24071a)) {
            return false;
        }
        AbstractC24070s.AbstractC24071a abstractC24071a = (AbstractC24070s.AbstractC24071a) obj;
        if (this.f66719a != abstractC24071a.mo5588b() || this.f66720b != abstractC24071a.mo5586d() || !this.f66721c.equals(abstractC24071a.mo5587c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f66719a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f66720b;
        return ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f66721c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConfigValue{delta=");
        m8728C.append(this.f66719a);
        m8728C.append(", maxAllowedDelay=");
        m8728C.append(this.f66720b);
        m8728C.append(", flags=");
        m8728C.append(this.f66721c);
        m8728C.append("}");
        return m8728C.toString();
    }
}
