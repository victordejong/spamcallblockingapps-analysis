package p193e.p194a.p1349x.p1351h0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.ghost_call.analytics.events.GhostCallCardAction;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.C16601v;
import p193e.p194a.p1011l.p1021l2.AbstractC16953b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1349x.p1351h0.p1352b.C21338a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.x.h0.a */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/a.class */
public final class C21337a extends AbstractC16953b {

    /* renamed from: d */
    public final C16601v f59734d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21337a(C20592g c20592g, C16601v c16601v, AbstractC19462a abstractC19462a, CleverTapManager cleverTapManager) {
        super((AbstractC20597i) c20592g.f58033u.m10941a(c20592g, C20592g.f57695p6[17]), abstractC19462a, cleverTapManager);
        l.e(c20592g, "featuresRegistry");
        l.e(c16601v, "proStatusGenerator");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(cleverTapManager, "cleverTapManager");
        this.f59734d = c16601v;
    }

    /* renamed from: q */
    public void m9878q(int i, GhostCallCardAction ghostCallCardAction, boolean z) {
        l.e(ghostCallCardAction, "ghostCallCardAction");
        C10480a.m26037O1(new C21338a(i, ghostCallCardAction, this.f59734d.m17200a(), z), this);
    }
}
