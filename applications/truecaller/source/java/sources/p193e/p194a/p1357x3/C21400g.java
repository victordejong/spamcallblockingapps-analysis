package p193e.p194a.p1357x3;

import com.razorpay.AnalyticsConstants;
import java.util.Map;
import p193e.p194a.p1146q2.AbstractC19502g;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x3.g */
/* loaded from: classes9-dex2jar.jar:e/a/x3/g.class */
public final class C21400g implements AbstractC19502g {

    /* renamed from: a */
    public final Map<String, String> f59865a;

    public C21400g(String str, String str2) {
        l.e(str, "url");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.f59865a = i.e0(new k[]{new k("Context", str2), new k("Link", str)});
    }

    @Override // p193e.p194a.p1146q2.AbstractC19502g
    /* renamed from: a */
    public Map<String, String> mo9769a() {
        return this.f59865a;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19502g
    /* renamed from: b */
    public Double mo9768b() {
        return null;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19502g
    public String getName() {
        return "UpdateInitiated";
    }
}
