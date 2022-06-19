package p193e.p1512i.p1516b.p1533u2;

import e.m.e.d0.b;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.e */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/e.class */
public abstract class AbstractC23119e extends AbstractC23101a0 {

    /* renamed from: a */
    public final String f63995a;

    /* renamed from: b */
    public final String f63996b;

    /* renamed from: c */
    public final Map<String, Object> f63997c;

    public AbstractC23119e(String str, String str2, Map<String, Object> map) {
        Objects.requireNonNull(str, "Null bundleId");
        this.f63995a = str;
        Objects.requireNonNull(str2, "Null criteoPublisherId");
        this.f63996b = str2;
        Objects.requireNonNull(map, "Null ext");
        this.f63997c = map;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23101a0
    /* renamed from: a */
    public String mo7525a() {
        return this.f63995a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23101a0
    @b("cpId")
    /* renamed from: b */
    public String mo7524b() {
        return this.f63996b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.AbstractC23101a0
    /* renamed from: c */
    public Map<String, Object> mo7523c() {
        return this.f63997c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23101a0)) {
            return false;
        }
        AbstractC23101a0 abstractC23101a0 = (AbstractC23101a0) obj;
        if (!this.f63995a.equals(abstractC23101a0.mo7525a()) || !this.f63996b.equals(abstractC23101a0.mo7524b()) || !this.f63997c.equals(abstractC23101a0.mo7523c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f63995a.hashCode() ^ 1000003) * 1000003) ^ this.f63996b.hashCode()) * 1000003) ^ this.f63997c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Publisher{bundleId=");
        m8728C.append(this.f63995a);
        m8728C.append(", criteoPublisherId=");
        m8728C.append(this.f63996b);
        m8728C.append(", ext=");
        m8728C.append(this.f63997c);
        m8728C.append("}");
        return m8728C.toString();
    }
}
