package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.b.i.e.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/l.class */
public final class C24015l extends AbstractC24025r {

    /* renamed from: a */
    public final long f66557a;

    /* renamed from: b */
    public final long f66558b;

    /* renamed from: c */
    public final AbstractC24021p f66559c;

    /* renamed from: d */
    public final Integer f66560d;

    /* renamed from: e */
    public final String f66561e;

    /* renamed from: f */
    public final List<AbstractC24023q> f66562f;

    /* renamed from: g */
    public final EnumC24030u f66563g;

    public C24015l(long j, long j2, AbstractC24021p abstractC24021p, Integer num, String str, List list, EnumC24030u enumC24030u, C24016a c24016a) {
        this.f66557a = j;
        this.f66558b = j2;
        this.f66559c = abstractC24021p;
        this.f66560d = num;
        this.f66561e = str;
        this.f66562f = list;
        this.f66563g = enumC24030u;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: a */
    public AbstractC24021p mo5605a() {
        return this.f66559c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: b */
    public List<AbstractC24023q> mo5604b() {
        return this.f66562f;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: c */
    public Integer mo5603c() {
        return this.f66560d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: d */
    public String mo5602d() {
        return this.f66561e;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: e */
    public EnumC24030u mo5601e() {
        return this.f66563g;
    }

    public boolean equals(Object obj) {
        AbstractC24021p abstractC24021p;
        Integer num;
        String str;
        List<AbstractC24023q> list;
        EnumC24030u enumC24030u;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24025r)) {
            return false;
        }
        AbstractC24025r abstractC24025r = (AbstractC24025r) obj;
        if (this.f66557a != abstractC24025r.mo5600f() || this.f66558b != abstractC24025r.mo5599g() || ((abstractC24021p = this.f66559c) != null ? !abstractC24021p.equals(abstractC24025r.mo5605a()) : abstractC24025r.mo5605a() != null) || ((num = this.f66560d) != null ? !num.equals(abstractC24025r.mo5603c()) : abstractC24025r.mo5603c() != null) || ((str = this.f66561e) != null ? !str.equals(abstractC24025r.mo5602d()) : abstractC24025r.mo5602d() != null) || ((list = this.f66562f) != null ? !list.equals(abstractC24025r.mo5604b()) : abstractC24025r.mo5604b() != null) || ((enumC24030u = this.f66563g) != null ? !enumC24030u.equals(abstractC24025r.mo5601e()) : abstractC24025r.mo5601e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: f */
    public long mo5600f() {
        return this.f66557a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24025r
    /* renamed from: g */
    public long mo5599g() {
        return this.f66558b;
    }

    public int hashCode() {
        long j = this.f66557a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f66558b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        AbstractC24021p abstractC24021p = this.f66559c;
        int i3 = 0;
        int hashCode = abstractC24021p == null ? 0 : abstractC24021p.hashCode();
        Integer num = this.f66560d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f66561e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC24023q> list = this.f66562f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        EnumC24030u enumC24030u = this.f66563g;
        if (enumC24030u != null) {
            i3 = enumC24030u.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LogRequest{requestTimeMs=");
        m8728C.append(this.f66557a);
        m8728C.append(", requestUptimeMs=");
        m8728C.append(this.f66558b);
        m8728C.append(", clientInfo=");
        m8728C.append(this.f66559c);
        m8728C.append(", logSource=");
        m8728C.append(this.f66560d);
        m8728C.append(", logSourceName=");
        m8728C.append(this.f66561e);
        m8728C.append(", logEvents=");
        m8728C.append(this.f66562f);
        m8728C.append(", qosTier=");
        m8728C.append(this.f66563g);
        m8728C.append("}");
        return m8728C.toString();
    }
}
