package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.c0.h.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/p.class */
public final class C24065p extends AbstractC24070s {

    /* renamed from: a */
    public final AbstractC24130a f66717a;

    /* renamed from: b */
    public final Map<EnumC23989d, AbstractC24070s.AbstractC24071a> f66718b;

    public C24065p(AbstractC24130a abstractC24130a, Map<EnumC23989d, AbstractC24070s.AbstractC24071a> map) {
        Objects.requireNonNull(abstractC24130a, "Null clock");
        this.f66717a = abstractC24130a;
        Objects.requireNonNull(map, "Null values");
        this.f66718b = map;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s
    /* renamed from: a */
    public AbstractC24130a mo5592a() {
        return this.f66717a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s
    /* renamed from: c */
    public Map<EnumC23989d, AbstractC24070s.AbstractC24071a> mo5590c() {
        return this.f66718b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24070s)) {
            return false;
        }
        AbstractC24070s abstractC24070s = (AbstractC24070s) obj;
        if (!this.f66717a.equals(abstractC24070s.mo5592a()) || !this.f66718b.equals(abstractC24070s.mo5590c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f66717a.hashCode() ^ 1000003) * 1000003) ^ this.f66718b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SchedulerConfig{clock=");
        m8728C.append(this.f66717a);
        m8728C.append(", values=");
        m8728C.append(this.f66718b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
