package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.v2.i.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/a.class */
public final class C17279a {

    /* renamed from: a */
    public final String f48474a;

    /* renamed from: b */
    public final String f48475b;

    /* renamed from: c */
    public final String f48476c;

    /* renamed from: d */
    public final String f48477d;

    /* renamed from: e */
    public final int f48478e;

    public C17279a(String str, String str2, String str3, String str4, int i) {
        l.e(str2, "price");
        this.f48474a = str;
        this.f48475b = str2;
        this.f48476c = str3;
        this.f48477d = str4;
        this.f48478e = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17279a)) {
                return false;
            }
            C17279a c17279a = (C17279a) obj;
            return l.a(this.f48474a, c17279a.f48474a) && l.a(this.f48475b, c17279a.f48475b) && l.a(this.f48476c, c17279a.f48476c) && l.a(this.f48477d, c17279a.f48477d) && this.f48478e == c17279a.f48478e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48474a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f48475b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f48476c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f48477d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + this.f48478e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardPurchaseButton(strikeTroughPrice=");
        m8728C.append(this.f48474a);
        m8728C.append(", price=");
        m8728C.append(this.f48475b);
        m8728C.append(", saving=");
        m8728C.append(this.f48476c);
        m8728C.append(", subtext=");
        m8728C.append(this.f48477d);
        m8728C.append(", backgroundRes=");
        return C22128a.m8697J2(m8728C, this.f48478e, ")");
    }
}
