package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24173g;
/* renamed from: e.m.a.b.j.y.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/b.class */
public final class C24168b extends AbstractC24173g {

    /* renamed from: a */
    public final AbstractC24173g.EnumC24174a f66905a;

    /* renamed from: b */
    public final long f66906b;

    public C24168b(AbstractC24173g.EnumC24174a enumC24174a, long j) {
        Objects.requireNonNull(enumC24174a, "Null status");
        this.f66905a = enumC24174a;
        this.f66906b = j;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24173g
    /* renamed from: b */
    public long mo5511b() {
        return this.f66906b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24173g
    /* renamed from: c */
    public AbstractC24173g.EnumC24174a mo5510c() {
        return this.f66905a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24173g)) {
            return false;
        }
        AbstractC24173g abstractC24173g = (AbstractC24173g) obj;
        if (!this.f66905a.equals(abstractC24173g.mo5510c()) || this.f66906b != abstractC24173g.mo5511b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f66905a.hashCode();
        long j = this.f66906b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackendResponse{status=");
        m8728C.append(this.f66905a);
        m8728C.append(", nextRequestWaitMillis=");
        return C22128a.m8693K2(m8728C, this.f66906b, "}");
    }
}
