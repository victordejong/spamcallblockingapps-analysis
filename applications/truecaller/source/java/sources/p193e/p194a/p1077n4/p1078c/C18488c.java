package p193e.p194a.p1077n4.p1078c;

import android.content.Context;
import android.view.View;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1077n4.AbstractC18484a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.n4.c.c */
/* loaded from: classes12-dex2jar.jar:e/a/n4/c/c.class */
public final class C18488c extends AbstractC18486a {

    /* renamed from: h */
    public final String f52190h = "buypro";

    /* renamed from: i */
    public final int f52191i = C2752R.C2753drawable.ic_premium_promo;

    /* renamed from: j */
    public final int f52192j = C2752R.string.PremiumBuyHomeScreenLabel;

    /* renamed from: k */
    public final AbstractC17197v0 f52193k;

    /* renamed from: l */
    public final AbstractC18951b0 f52194l;

    /* renamed from: m */
    public final AbstractC16613a2 f52195m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18488c(AbstractC18484a abstractC18484a, C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC19462a abstractC19462a, AbstractC19022f0 abstractC19022f0, AbstractC19222c abstractC19222c, AbstractC18951b0 abstractC18951b0, AbstractC16613a2 abstractC16613a2) {
        super(abstractC18484a, c20592g, abstractC19462a, abstractC19022f0, abstractC19222c);
        l.e(abstractC18484a, "settings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        this.f52193k = abstractC17197v0;
        this.f52194l = abstractC18951b0;
        this.f52195m = abstractC16613a2;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: a */
    public void mo14865a(View view) {
        l.e(view, ViewAction.VIEW);
        l.e(view, ViewAction.VIEW);
        m14866e("Clicked");
        AbstractC16613a2 abstractC16613a2 = this.f52195m;
        Context context = view.getContext();
        l.d(context, "view.context");
        abstractC16613a2.mo17164e(context, null, PremiumLaunchContext.CALL_LOG_PROMO, new SubscriptionPromoEventMetaData(C22128a.m8627e2("UUID.randomUUID().toString()"), (String) null));
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18486a, p193e.p194a.p1077n4.p1078c.AbstractC18489d
    /* renamed from: d */
    public boolean mo14862d() {
        boolean z = false;
        if (super.mo14862d()) {
            z = false;
            if (!this.f52193k.mo16408H()) {
                C20592g c20592g = this.f52181d;
                z = false;
                if (((AbstractC20597i) c20592g.f57803P1.m10941a(c20592g, C20592g.f57695p6[145])).getInt(0) == this.f52194l.mo14292c(this.f52184g.mo13819c())) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public int getIcon() {
        return this.f52191i;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public String getTag() {
        return this.f52190h;
    }

    @Override // p193e.p194a.p1077n4.p1078c.AbstractC18489d
    public int getTitle() {
        return this.f52192j;
    }
}
