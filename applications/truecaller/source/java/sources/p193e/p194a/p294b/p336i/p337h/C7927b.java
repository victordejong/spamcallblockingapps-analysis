package p193e.p194a.p294b.p336i.p337h;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackAction;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackContext;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.b.i.h.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/h/b.class */
public final class C7927b {

    /* renamed from: a */
    public final AbstractC19462a f24554a;

    @Inject
    public C7927b(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f24554a = abstractC19462a;
    }

    /* renamed from: a */
    public void m29103a(BizCallMeBackContext bizCallMeBackContext, BizCallMeBackAction bizCallMeBackAction, String str, String str2, String str3) {
        l.e(bizCallMeBackContext, AnalyticsConstants.CONTEXT);
        l.e(bizCallMeBackAction, "action");
        this.f24554a.mo13274b(new C7926a(bizCallMeBackContext, bizCallMeBackAction, str, str2, str3));
    }
}
