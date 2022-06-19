package p193e.p194a.p195a.p200c.p215n;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.e0 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/e0.class */
public final class C5550e0 extends AbstractC5577y {

    /* renamed from: b */
    public final String f18774b;

    /* renamed from: c */
    public final String f18775c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5550e0(String str, String str2) {
        super(str);
        l.e(str, AnalyticsConstants.NAME);
        this.f18774b = str;
        this.f18775c = str2;
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5577y
    /* renamed from: a */
    public String mo32946a() {
        return this.f18774b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5550e0)) {
                return false;
            }
            C5550e0 c5550e0 = (C5550e0) obj;
            return l.a(this.f18774b, c5550e0.f18774b) && l.a(this.f18775c, c5550e0.f18775c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18774b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f18775c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderReport(name=");
        m8728C.append(this.f18774b);
        m8728C.append(", rawAddress=");
        return C22128a.m8618h(m8728C, this.f18775c, ")");
    }
}
