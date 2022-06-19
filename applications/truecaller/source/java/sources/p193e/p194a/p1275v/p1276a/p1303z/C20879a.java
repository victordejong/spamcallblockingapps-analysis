package p193e.p194a.p1275v.p1276a.p1303z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.v.a.z.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/z/a.class */
public final class C20879a {

    /* renamed from: a */
    public final String f58670a = "DetailsViewV2";

    /* renamed from: b */
    public final AbstractC19462a f58671b;

    @Inject
    public C20879a(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f58671b = abstractC19462a;
    }

    /* renamed from: a */
    public final void m10594a() {
        String str = this.f58670a;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e("call", "action");
        n.B0(new ViewActionEvent("call", null, str), this.f58671b);
    }

    /* renamed from: b */
    public final void m10593b(ViewActionEvent.SocialMediaSubAction socialMediaSubAction) {
        l.e(socialMediaSubAction, "subAction");
        String str = this.f58670a;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(socialMediaSubAction, "subAction");
        String value = socialMediaSubAction.getValue();
        l.e("Click", "action");
        n.B0(new ViewActionEvent("Click", value, str), this.f58671b);
    }

    /* renamed from: c */
    public final void m10592c(ViewActionEvent.SocialMediaSubAction socialMediaSubAction) {
        l.e(socialMediaSubAction, "subAction");
        String str = this.f58670a;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(socialMediaSubAction, "subAction");
        String value = socialMediaSubAction.getValue();
        l.e("Shown", "action");
        n.B0(new ViewActionEvent("Shown", value, str), this.f58671b);
    }
}
