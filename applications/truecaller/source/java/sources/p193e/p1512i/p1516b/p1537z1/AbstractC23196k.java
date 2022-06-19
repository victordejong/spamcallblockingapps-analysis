package p193e.p1512i.p1516b.p1537z1;

import e.m.e.d0.b;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
/* renamed from: e.i.b.z1.k */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/k.class */
public abstract class AbstractC23196k extends AbstractC23177d0.AbstractC23178a {

    /* renamed from: a */
    public final List<AbstractC23177d0.AbstractC23179b> f64201a;

    /* renamed from: b */
    public final Long f64202b;

    /* renamed from: c */
    public final boolean f64203c;

    /* renamed from: d */
    public final long f64204d;

    /* renamed from: e */
    public final Long f64205e;

    /* renamed from: f */
    public final String f64206f;

    public AbstractC23196k(List<AbstractC23177d0.AbstractC23179b> list, Long l, boolean z, long j, Long l2, String str) {
        Objects.requireNonNull(list, "Null slots");
        this.f64201a = list;
        this.f64202b = l;
        this.f64203c = z;
        this.f64204d = j;
        this.f64205e = l2;
        this.f64206f = str;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    /* renamed from: a */
    public Long mo7407a() {
        return this.f64205e;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    /* renamed from: c */
    public long mo7406c() {
        return this.f64204d;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    /* renamed from: d */
    public Long mo7405d() {
        return this.f64202b;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    /* renamed from: e */
    public String mo7404e() {
        return this.f64206f;
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23177d0.AbstractC23178a)) {
            return false;
        }
        AbstractC23177d0.AbstractC23178a abstractC23178a = (AbstractC23177d0.AbstractC23178a) obj;
        if (!this.f64201a.equals(abstractC23178a.mo7403f()) || ((l = this.f64202b) != null ? !l.equals(abstractC23178a.mo7405d()) : abstractC23178a.mo7405d() != null) || this.f64203c != abstractC23178a.mo7402g() || this.f64204d != abstractC23178a.mo7406c() || ((l2 = this.f64205e) != null ? !l2.equals(abstractC23178a.mo7407a()) : abstractC23178a.mo7407a() != null) || ((str = this.f64206f) != null ? !str.equals(abstractC23178a.mo7404e()) : abstractC23178a.mo7404e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    /* renamed from: f */
    public List<AbstractC23177d0.AbstractC23179b> mo7403f() {
        return this.f64201a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0.AbstractC23178a
    @b("isTimeout")
    /* renamed from: g */
    public boolean mo7402g() {
        return this.f64203c;
    }

    public int hashCode() {
        int hashCode = this.f64201a.hashCode();
        Long l = this.f64202b;
        int i = 0;
        int hashCode2 = l == null ? 0 : l.hashCode();
        int i2 = this.f64203c ? 1231 : 1237;
        long j = this.f64204d;
        int i3 = (int) (j ^ (j >>> 32));
        Long l2 = this.f64205e;
        int hashCode3 = l2 == null ? 0 : l2.hashCode();
        String str = this.f64206f;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode3) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MetricRequestFeedback{slots=");
        m8728C.append(this.f64201a);
        m8728C.append(", elapsed=");
        m8728C.append(this.f64202b);
        m8728C.append(", timeout=");
        m8728C.append(this.f64203c);
        m8728C.append(", cdbCallStartElapsed=");
        m8728C.append(this.f64204d);
        m8728C.append(", cdbCallEndElapsed=");
        m8728C.append(this.f64205e);
        m8728C.append(", requestGroupId=");
        return C22128a.m8618h(m8728C, this.f64206f, "}");
    }
}
