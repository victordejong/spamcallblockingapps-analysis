package p193e.p1512i.p1516b.p1533u2;

import e.m.e.d0.b;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c;
/* renamed from: e.i.b.u2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/b.class */
public abstract class AbstractC23102b extends AbstractC23127q {

    /* renamed from: a */
    public final String f63938a;

    /* renamed from: b */
    public final AbstractC23101a0 f63939b;

    /* renamed from: c */
    public final AbstractC23120e0 f63940c;

    /* renamed from: d */
    public final String f63941d;

    /* renamed from: e */
    public final int f63942e;

    /* renamed from: f */
    public final AbstractC22980c f63943f;

    /* renamed from: g */
    public final List<AbstractC23129s> f63944g;

    public AbstractC23102b(String str, AbstractC23101a0 abstractC23101a0, AbstractC23120e0 abstractC23120e0, String str2, int i, AbstractC22980c abstractC22980c, List<AbstractC23129s> list) {
        Objects.requireNonNull(str, "Null id");
        this.f63938a = str;
        Objects.requireNonNull(abstractC23101a0, "Null publisher");
        this.f63939b = abstractC23101a0;
        Objects.requireNonNull(abstractC23120e0, "Null user");
        this.f63940c = abstractC23120e0;
        Objects.requireNonNull(str2, "Null sdkVersion");
        this.f63941d = str2;
        this.f63942e = i;
        this.f63943f = abstractC22980c;
        Objects.requireNonNull(list, "Null slots");
        this.f63944g = list;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    @b("gdprConsent")
    /* renamed from: a */
    public AbstractC22980c mo7498a() {
        return this.f63943f;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: b */
    public String mo7497b() {
        return this.f63938a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: c */
    public int mo7496c() {
        return this.f63942e;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: d */
    public AbstractC23101a0 mo7495d() {
        return this.f63939b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: e */
    public String mo7494e() {
        return this.f63941d;
    }

    public boolean equals(Object obj) {
        AbstractC22980c abstractC22980c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23127q)) {
            return false;
        }
        AbstractC23127q abstractC23127q = (AbstractC23127q) obj;
        if (!this.f63938a.equals(abstractC23127q.mo7497b()) || !this.f63939b.equals(abstractC23127q.mo7495d()) || !this.f63940c.equals(abstractC23127q.mo7492g()) || !this.f63941d.equals(abstractC23127q.mo7494e()) || this.f63942e != abstractC23127q.mo7496c() || ((abstractC22980c = this.f63943f) != null ? !abstractC22980c.equals(abstractC23127q.mo7498a()) : abstractC23127q.mo7498a() != null) || !this.f63944g.equals(abstractC23127q.mo7493f())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: f */
    public List<AbstractC23129s> mo7493f() {
        return this.f63944g;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23127q
    /* renamed from: g */
    public AbstractC23120e0 mo7492g() {
        return this.f63940c;
    }

    public int hashCode() {
        int hashCode = this.f63938a.hashCode();
        int hashCode2 = this.f63939b.hashCode();
        int hashCode3 = this.f63940c.hashCode();
        int hashCode4 = this.f63941d.hashCode();
        int i = this.f63942e;
        AbstractC22980c abstractC22980c = this.f63943f;
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i) * 1000003) ^ (abstractC22980c == null ? 0 : abstractC22980c.hashCode())) * 1000003) ^ this.f63944g.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CdbRequest{id=");
        m8728C.append(this.f63938a);
        m8728C.append(", publisher=");
        m8728C.append(this.f63939b);
        m8728C.append(", user=");
        m8728C.append(this.f63940c);
        m8728C.append(", sdkVersion=");
        m8728C.append(this.f63941d);
        m8728C.append(", profileId=");
        m8728C.append(this.f63942e);
        m8728C.append(", gdprData=");
        m8728C.append(this.f63943f);
        m8728C.append(", slots=");
        return C22128a.m8602l(m8728C, this.f63944g, "}");
    }
}
