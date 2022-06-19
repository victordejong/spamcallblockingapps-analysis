package p193e.p194a.p1359x4;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.searchwarnings.data.analytics.BusinessCallReasonContext;
import com.truecaller.searchwarnings.data.analytics.BusinessCallReasonSource;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.x4.b */
/* loaded from: classes13-dex2jar.jar:e/a/x4/b.class */
public final class C21417b implements AbstractC21416a {

    /* renamed from: a */
    public final AbstractC19462a f59888a;

    @Inject
    public C21417b(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f59888a = abstractC19462a;
    }

    @Override // p193e.p194a.p1359x4.AbstractC21416a
    /* renamed from: a */
    public void mo9752a(String str, BusinessCallReasonContext businessCallReasonContext, BusinessCallReasonSource businessCallReasonSource, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(businessCallReasonContext, AnalyticsConstants.CONTEXT);
        l.e(businessCallReasonSource, "source");
        l.e(str2, "id");
        this.f59888a.mo13274b(new C21418c(str, businessCallReasonContext, businessCallReasonSource, str2));
    }
}
