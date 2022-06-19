package p193e.p194a.p195a.p200c.p215n;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.f0 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/f0.class */
public final class C5552f0 extends AbstractC5577y {

    /* renamed from: b */
    public final String f18776b;

    /* renamed from: c */
    public final long f18777c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5552f0(String str, long j) {
        super(str);
        l.e(str, AnalyticsConstants.NAME);
        this.f18776b = str;
        this.f18777c = j;
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5577y
    /* renamed from: a */
    public String mo32946a() {
        return this.f18776b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5552f0)) {
                return false;
            }
            C5552f0 c5552f0 = (C5552f0) obj;
            return l.a(this.f18776b, c5552f0.f18776b) && this.f18777c == c5552f0.f18777c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18776b;
        return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f18777c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TimeReport(name=");
        m8728C.append(this.f18776b);
        m8728C.append(", date=");
        return C22128a.m8693K2(m8728C, this.f18777c, ")");
    }
}
