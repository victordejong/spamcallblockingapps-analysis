package p193e.p194a.p195a.p271o;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.o.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/e.class */
public final class C7083e {

    /* renamed from: a */
    public final long f22823a;

    /* renamed from: b */
    public final int f22824b;

    /* renamed from: c */
    public final String f22825c;

    public C7083e(long j, int i, String str) {
        l.e(str, AnalyticsConstants.NAME);
        this.f22823a = j;
        this.f22824b = i;
        this.f22825c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7083e)) {
                return false;
            }
            C7083e c7083e = (C7083e) obj;
            return this.f22823a == c7083e.f22823a && this.f22824b == c7083e.f22824b && l.a(this.f22825c, c7083e.f22825c);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f22823a);
        int i = this.f22824b;
        String str = this.f22825c;
        return (((m34274a * 31) + i) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StorageItem(size=");
        m8728C.append(this.f22823a);
        m8728C.append(", color=");
        m8728C.append(this.f22824b);
        m8728C.append(", name=");
        return C22128a.m8618h(m8728C, this.f22825c, ")");
    }
}
