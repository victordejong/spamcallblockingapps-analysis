package p193e.p194a.p1011l.p1020g;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.g.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/b.class */
public final class C16883b {

    /* renamed from: a */
    public final String f47418a;

    /* renamed from: b */
    public final String f47419b;

    public C16883b(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "number");
        this.f47418a = str;
        this.f47419b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16883b)) {
                return false;
            }
            C16883b c16883b = (C16883b) obj;
            return l.a(this.f47418a, c16883b.f47418a) && l.a(this.f47419b, c16883b.f47419b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47418a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f47419b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GoldGiftContact(name=");
        m8728C.append(this.f47418a);
        m8728C.append(", number=");
        return C22128a.m8618h(m8728C, this.f47419b, ")");
    }
}
