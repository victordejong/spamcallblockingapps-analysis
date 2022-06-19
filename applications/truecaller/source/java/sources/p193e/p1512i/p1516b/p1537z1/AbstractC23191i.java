package p193e.p1512i.p1516b.p1537z1;

import e.m.e.d0.b;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
/* renamed from: e.i.b.z1.i */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/i.class */
public abstract class AbstractC23191i extends AbstractC23177d0 {

    /* renamed from: a */
    public final List<AbstractC23177d0.AbstractC23178a> f64189a;

    /* renamed from: b */
    public final String f64190b;

    /* renamed from: c */
    public final int f64191c;

    public AbstractC23191i(List<AbstractC23177d0.AbstractC23178a> list, String str, int i) {
        Objects.requireNonNull(list, "Null feedbacks");
        this.f64189a = list;
        Objects.requireNonNull(str, "Null wrapperVersion");
        this.f64190b = str;
        this.f64191c = i;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0
    /* renamed from: a */
    public List<AbstractC23177d0.AbstractC23178a> mo7414a() {
        return this.f64189a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0
    @b("profile_id")
    /* renamed from: b */
    public int mo7413b() {
        return this.f64191c;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23177d0
    @b("wrapper_version")
    /* renamed from: c */
    public String mo7412c() {
        return this.f64190b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23177d0)) {
            return false;
        }
        AbstractC23177d0 abstractC23177d0 = (AbstractC23177d0) obj;
        if (!this.f64189a.equals(abstractC23177d0.mo7414a()) || !this.f64190b.equals(abstractC23177d0.mo7412c()) || this.f64191c != abstractC23177d0.mo7413b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f64189a.hashCode() ^ 1000003) * 1000003) ^ this.f64190b.hashCode()) * 1000003) ^ this.f64191c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MetricRequest{feedbacks=");
        m8728C.append(this.f64189a);
        m8728C.append(", wrapperVersion=");
        m8728C.append(this.f64190b);
        m8728C.append(", profileId=");
        return C22128a.m8697J2(m8728C, this.f64191c, "}");
    }
}
