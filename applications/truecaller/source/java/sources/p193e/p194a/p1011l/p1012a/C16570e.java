package p193e.p194a.p1011l.p1012a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import s1.z.c.l;
/* renamed from: e.a.l.a.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/e.class */
public final class C16570e {

    /* renamed from: a */
    public final C16993f f46570a;

    /* renamed from: b */
    public final boolean f46571b;

    public C16570e(C16993f c16993f, boolean z) {
        l.e(c16993f, "subscription");
        this.f46570a = c16993f;
        this.f46571b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16570e)) {
                return false;
            }
            C16570e c16570e = (C16570e) obj;
            return l.a(this.f46570a, c16570e.f46570a) && this.f46571b == c16570e.f46571b;
        }
        return true;
    }

    public int hashCode() {
        C16993f c16993f = this.f46570a;
        int hashCode = c16993f != null ? c16993f.hashCode() : 0;
        boolean z = this.f46571b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DebugSubscriptionHolder(subscription=");
        m8728C.append(this.f46570a);
        m8728C.append(", enabled=");
        return C22128a.m8590o(m8728C, this.f46571b, ")");
    }
}
