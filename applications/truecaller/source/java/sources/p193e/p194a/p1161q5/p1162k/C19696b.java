package p193e.p194a.p1161q5.p1162k;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.C16601v;
import p193e.p194a.p1011l.p1021l2.AbstractC16953b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1161q5.p1162k.p1163c.C19697a;
import p193e.p194a.p1161q5.p1162k.p1163c.C19698b;
import p193e.p194a.p1161q5.p1162k.p1163c.C19699c;
import p193e.p194a.p1161q5.p1162k.p1163c.C19700d;
import p193e.p194a.p1161q5.p1162k.p1163c.C19701e;
import p193e.p194a.p1161q5.p1162k.p1163c.C19702f;
import p193e.p194a.p1161q5.p1162k.p1163c.C19703g;
import p193e.p194a.p1161q5.p1162k.p1163c.C19704h;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.q5.k.b */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/b.class */
public final class C19696b extends AbstractC16953b implements AbstractC19695a {

    /* renamed from: d */
    public final C16601v f54702d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19696b(C20592g c20592g, C16601v c16601v, AbstractC19462a abstractC19462a, CleverTapManager cleverTapManager) {
        super((AbstractC20597i) c20592g.f58026t.m10941a(c20592g, C20592g.f57695p6[16]), abstractC19462a, cleverTapManager);
        l.e(c20592g, "featuresRegistry");
        l.e(c16601v, "proStatusGenerator");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(cleverTapManager, "cleverTapManager");
        this.f54702d = c16601v;
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: b */
    public void mo12975b(boolean z, WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam, int i) {
        l.e(whatsAppCallerIdSourceParam, "source");
        C10480a.m26037O1(z ? new C19704h(whatsAppCallerIdSourceParam, i) : new C19703g(whatsAppCallerIdSourceParam, i), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: f */
    public void mo12974f(String str) {
        l.e(str, "appName");
        C10480a.m26037O1(new C19700d(str), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: h */
    public void mo12973h(String str) {
        l.e(str, "appName");
        C10480a.m26037O1(new C19701e(str), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: i */
    public void mo12972i(String str) {
        l.e(str, "appName");
        C10480a.m26037O1(new C19699c(str), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: k */
    public void mo12971k(WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam, int i) {
        l.e(whatsAppCallerIdSourceParam, "source");
        C10480a.m26037O1(new C19698b(whatsAppCallerIdSourceParam, i), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: l */
    public void mo12970l(int i) {
        C10480a.m26037O1(new C19697a(this.f54702d.m17200a(), i), this);
    }

    @Override // p193e.p194a.p1161q5.p1162k.AbstractC19695a
    /* renamed from: m */
    public void mo12969m(String str) {
        l.e(str, "appName");
        C10480a.m26037O1(new C19702f(str), this);
    }
}
