package p193e.p194a.p1011l;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c0.class */
public final class C16830c0 {

    /* renamed from: a */
    public final String f47204a;

    /* renamed from: b */
    public final Integer f47205b;

    /* renamed from: c */
    public final Integer f47206c;

    public C16830c0(String str, Integer num, Integer num2) {
        l.e(str, "promoText");
        this.f47204a = str;
        this.f47205b = num;
        this.f47206c = num2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16830c0)) {
                return false;
            }
            C16830c0 c16830c0 = (C16830c0) obj;
            return l.a(this.f47204a, c16830c0.f47204a) && l.a(this.f47205b, c16830c0.f47205b) && l.a(this.f47206c, c16830c0.f47206c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47204a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Integer num = this.f47205b;
        int hashCode2 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f47206c;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumAlertPromo(promoText=");
        m8728C.append(this.f47204a);
        m8728C.append(", promoTextColor=");
        m8728C.append(this.f47205b);
        m8728C.append(", promoIcon=");
        return C22128a.m8689L2(m8728C, this.f47206c, ")");
    }
}
