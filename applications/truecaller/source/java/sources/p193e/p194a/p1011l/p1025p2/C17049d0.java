package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.d0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d0.class */
public final class C17049d0 {

    /* renamed from: a */
    public final String f47813a;

    /* renamed from: b */
    public final boolean f47814b;

    public C17049d0(String str, boolean z) {
        l.e(str, "date");
        this.f47813a = str;
        this.f47814b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17049d0)) {
                return false;
            }
            C17049d0 c17049d0 = (C17049d0) obj;
            return l.a(this.f47813a, c17049d0.f47813a) && this.f47814b == c17049d0.f47814b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47813a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f47814b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumExpireDateFormatResult(date=");
        m8728C.append(this.f47813a);
        m8728C.append(", highlight=");
        return C22128a.m8590o(m8728C, this.f47814b, ")");
    }
}
