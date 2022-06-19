package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.h0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/h0.class */
public final class C17097h0 {

    /* renamed from: a */
    public final int f47995a;

    /* renamed from: b */
    public final String f47996b;

    public C17097h0(int i, String str) {
        this.f47995a = i;
        this.f47996b = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17097h0)) {
                return false;
            }
            C17097h0 c17097h0 = (C17097h0) obj;
            return this.f47995a == c17097h0.f47995a && l.a(this.f47996b, c17097h0.f47996b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f47995a;
        String str = this.f47996b;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumListTitle(titleRes=");
        m8728C.append(this.f47995a);
        m8728C.append(", subTitle=");
        return C22128a.m8618h(m8728C, this.f47996b, ")");
    }
}
