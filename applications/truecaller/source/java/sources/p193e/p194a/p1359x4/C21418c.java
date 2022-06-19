package p193e.p194a.p1359x4;

import com.razorpay.AnalyticsConstants;
import com.truecaller.searchwarnings.data.analytics.BusinessCallReasonContext;
import com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource;
import java.util.HashMap;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17657n;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x4.c */
/* loaded from: classes13-dex2jar.jar:e/a/x4/c.class */
public final class C21418c implements AbstractC19549v {

    /* renamed from: a */
    public final String f59889a;

    /* renamed from: b */
    public final BusinessCallReasonContext f59890b;

    /* renamed from: c */
    public final BusinessCallReasonSource f59891c;

    /* renamed from: d */
    public final String f59892d;

    public C21418c(String str, BusinessCallReasonContext businessCallReasonContext, BusinessCallReasonSource businessCallReasonSource, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(businessCallReasonContext, AnalyticsConstants.CONTEXT);
        l.e(businessCallReasonSource, "source");
        l.e(str2, "callReasonId");
        this.f59889a = str;
        this.f59890b = businessCallReasonContext;
        this.f59891c = businessCallReasonSource;
        this.f59892d = str2;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        String str = this.f59889a;
        HashMap m8667T = C22128a.m8667T("Context", this.f59890b.getValue());
        m8667T.put("Source", this.f59891c.getValue());
        m8667T.put("CallReasonId", this.f59892d);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, m8667T, null);
        l.d(c19505a, "asFacebookEvent()");
        AbstractC19580x.C19581a c19581a = new AbstractC19580x.C19581a(c19505a);
        Schema schema = C17657n.f49843h;
        C17657n.C17659b c17659b = new C17657n.C17659b(null);
        c17659b.m15880b(this.f59889a);
        c17659b.m15879c(this.f59890b.getValue());
        c17659b.m15878d(this.f59891c.getValue());
        return new AbstractC19580x.C19585e(i.z0(new AbstractC19580x[]{c19581a, new AbstractC19580x.C19584d(c17659b.build())}));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21418c)) {
                return false;
            }
            C21418c c21418c = (C21418c) obj;
            return l.a(this.f59889a, c21418c.f59889a) && l.a(this.f59890b, c21418c.f59890b) && l.a(this.f59891c, c21418c.f59891c) && l.a(this.f59892d, c21418c.f59892d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59889a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        BusinessCallReasonContext businessCallReasonContext = this.f59890b;
        int hashCode2 = businessCallReasonContext != null ? businessCallReasonContext.hashCode() : 0;
        BusinessCallReasonSource businessCallReasonSource = this.f59891c;
        int hashCode3 = businessCallReasonSource != null ? businessCallReasonSource.hashCode() : 0;
        String str2 = this.f59892d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BusinessCallReasonEvent(name=");
        m8728C.append(this.f59889a);
        m8728C.append(", context=");
        m8728C.append(this.f59890b);
        m8728C.append(", source=");
        m8728C.append(this.f59891c);
        m8728C.append(", callReasonId=");
        return C22128a.m8618h(m8728C, this.f59892d, ")");
    }
}
