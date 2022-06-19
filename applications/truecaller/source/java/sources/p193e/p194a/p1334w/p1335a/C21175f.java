package p193e.p194a.p1334w.p1335a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.referral.C4390R;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p945j5.p946a.AbstractC15587a;
import p193e.p194a.p945j5.p946a.C15588b;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.f0.r;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.w.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/w/a/f.class */
public final class C21175f extends AbstractC20576b<AbstractC21174e> implements AbstractC21173d {

    /* renamed from: b */
    public Contact f59345b;

    /* renamed from: c */
    public ReferralAnalytics$Source f59346c;

    /* renamed from: d */
    public final g f59347d = C25225a.m3978P1(new C21176a());

    /* renamed from: e */
    public final AbstractC15587a f59348e;

    /* renamed from: f */
    public final AbstractC19223c0 f59349f;

    /* renamed from: g */
    public final AbstractC21179b f59350g;

    /* renamed from: h */
    public final C21185a f59351h;

    /* renamed from: i */
    public final AbstractC19462a f59352i;

    /* renamed from: e.a.w.a.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/w/a/f$a.class */
    public static final class C21176a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21176a() {
            super(0);
            C21175f.this = r4;
        }

        public Object invoke() {
            String string = C21175f.this.f59350g.getString("referralLink");
            if (!(string == null || r.p(string))) {
                String mo13768b = C21175f.this.f59349f.mo13768b(C4390R.string.referral_share_sheet_share_message, string);
                l.d(mo13768b, "resourceProvider.getStri…re_message, referralLink)");
                return mo13768b;
            }
            throw new IllegalStateException("ReferralShareSheet shouldn't be shown if the referral link doesn't exist");
        }
    }

    @Inject
    public C21175f(AbstractC15587a abstractC15587a, AbstractC19223c0 abstractC19223c0, AbstractC21179b abstractC21179b, C21185a c21185a, AbstractC19462a abstractC19462a) {
        l.e(abstractC15587a, "whatsAppIntegration");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC21179b, "referralSettings");
        l.e(c21185a, "referralTargetResolver");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f59348e = abstractC15587a;
        this.f59349f = abstractC19223c0;
        this.f59350g = abstractC21179b;
        this.f59351h = c21185a;
        this.f59352i = abstractC19462a;
    }

    /* renamed from: Hj */
    public final String m10169Hj() {
        C21185a c21185a = this.f59351h;
        Contact contact = this.f59345b;
        String str = null;
        if (contact == null) {
            l.l(AnalyticsConstants.CONTACT);
            throw null;
        }
        Number m10159b = c21185a.m10159b(contact);
        if (m10159b != null) {
            str = m10159b.m35479e();
        }
        return str;
    }

    /* renamed from: Ij */
    public final String m10168Ij() {
        return (String) this.f59347d.getValue();
    }

    /* renamed from: Jj */
    public final C16496d m10167Jj() {
        C16496d c16496d;
        String m10169Hj = m10169Hj();
        if (m10169Hj != null) {
            c16496d = ((C15588b) this.f59348e).m18601a(m10169Hj, m10168Ij());
        } else {
            c16496d = null;
        }
        return c16496d;
    }
}
