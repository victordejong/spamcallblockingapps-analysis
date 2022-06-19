package p193e.p194a.p1011l.p1033v2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.l.v2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/d.class */
public final class C17256d extends AbstractC20576b<AbstractC17252a> {

    /* renamed from: b */
    public final C17030a1 f48408b;

    /* renamed from: c */
    public final AbstractC17197v0 f48409c;

    /* renamed from: d */
    public final AbstractC19223c0 f48410d;

    /* renamed from: e */
    public final AbstractC19462a f48411e;

    /* renamed from: f */
    public final AbstractC8541a f48412f;

    @Inject
    public C17256d(C17030a1 c17030a1, AbstractC17197v0 abstractC17197v0, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a, AbstractC8541a abstractC8541a) {
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19223c0, "res");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8541a, "coreSettings");
        this.f48408b = c17030a1;
        this.f48409c = abstractC17197v0;
        this.f48410d = abstractC19223c0;
        this.f48411e = abstractC19462a;
        this.f48412f = abstractC8541a;
    }

    /* renamed from: Hj */
    public final void m16322Hj() {
        AbstractC17252a abstractC17252a = (AbstractC17252a) this.f57683a;
        if (abstractC17252a != null) {
            abstractC17252a.mo16328U(PremiumLaunchContext.NAV_DRAWER, this.f48409c.mo16407H2().ordinal() != 4 ? null : "gold");
        }
        if (this.f48408b.m16622a()) {
            this.f48412f.putBoolean("subscriptionPaymentFailedViewShownOnce", true);
        }
        LinkedHashMap m8655X = C22128a.m8655X("NavigationBarAction", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("action", AnalyticsConstants.NAME, "upgradeToPremium", "value", m8655X, "action", "upgradeToPremium");
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("NavigationBarAction");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(m8655X);
        GenericRecord build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f48411e.mo13275a(build);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0151  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16321Ij() {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1033v2.C17256d.m16321Ij():void");
    }
}
