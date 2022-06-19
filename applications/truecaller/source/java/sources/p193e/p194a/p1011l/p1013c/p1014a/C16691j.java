package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.j */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/j.class */
public final class C16691j {

    /* renamed from: a */
    public final AbstractC14811v f46833a;

    /* renamed from: b */
    public final boolean f46834b;

    public C16691j(AbstractC14811v abstractC14811v, boolean z) {
        l.e(abstractC14811v, "switch");
        this.f46833a = abstractC14811v;
        this.f46834b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16691j)) {
                return false;
            }
            C16691j c16691j = (C16691j) obj;
            return l.a(this.f46833a, c16691j.f46833a) && this.f46834b == c16691j.f46834b;
        }
        return true;
    }

    public int hashCode() {
        AbstractC14811v abstractC14811v = this.f46833a;
        int hashCode = abstractC14811v != null ? abstractC14811v.hashCode() : 0;
        boolean z = this.f46834b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BlockingSwitchHolder(switch=");
        m8728C.append(this.f46833a);
        m8728C.append(", enabled=");
        return C22128a.m8590o(m8728C, this.f46834b, ")");
    }
}
