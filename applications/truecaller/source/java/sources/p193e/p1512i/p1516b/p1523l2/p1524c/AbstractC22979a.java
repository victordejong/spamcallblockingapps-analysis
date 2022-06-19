package p193e.p1512i.p1516b.p1523l2.p1524c;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.l2.c.a */
/* loaded from: classes-dex2jar.jar:e/i/b/l2/c/a.class */
public abstract class AbstractC22979a extends AbstractC22980c {

    /* renamed from: a */
    public final String f63709a;

    /* renamed from: b */
    public final Boolean f63710b;

    /* renamed from: c */
    public final Integer f63711c;

    public AbstractC22979a(String str, Boolean bool, Integer num) {
        Objects.requireNonNull(str, "Null consentData");
        this.f63709a = str;
        this.f63710b = bool;
        Objects.requireNonNull(num, "Null version");
        this.f63711c = num;
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c
    /* renamed from: a */
    public String mo7603a() {
        return this.f63709a;
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c
    /* renamed from: b */
    public Boolean mo7602b() {
        return this.f63710b;
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c
    /* renamed from: c */
    public Integer mo7601c() {
        return this.f63711c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC22980c)) {
            return false;
        }
        AbstractC22980c abstractC22980c = (AbstractC22980c) obj;
        if (!this.f63709a.equals(abstractC22980c.mo7603a()) || ((bool = this.f63710b) != null ? !bool.equals(abstractC22980c.mo7602b()) : abstractC22980c.mo7602b() != null) || !this.f63711c.equals(abstractC22980c.mo7601c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f63709a.hashCode();
        Boolean bool = this.f63710b;
        return ((((hashCode ^ 1000003) * 1000003) ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f63711c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GdprData{consentData=");
        m8728C.append(this.f63709a);
        m8728C.append(", gdprApplies=");
        m8728C.append(this.f63710b);
        m8728C.append(", version=");
        return C22128a.m8689L2(m8728C, this.f63711c, "}");
    }
}
