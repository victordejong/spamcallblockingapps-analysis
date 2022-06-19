package p193e.p1512i.p1516b;

import android.app.Application;
import com.criteo.publisher.Bid;
import com.criteo.publisher.BidResponseListener;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1518b2.AbstractC22922d;
import p193e.p1512i.p1516b.p1518b2.C22916b;
import p193e.p1512i.p1516b.p1518b2.C22921c;
import p193e.p1512i.p1516b.p1518b2.C22923e;
import p193e.p1512i.p1516b.p1518b2.C22924f;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1520f3.C22946b;
import p193e.p1512i.p1516b.p1520f3.C22947c;
import p193e.p1512i.p1516b.p1521g2.C22951a;
import p193e.p1512i.p1516b.p1523l2.C22978b;
import p193e.p1512i.p1516b.p1526p1.C23006a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1531s2.C23079d;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1533u2.C23134y;
import p193e.p1512i.p1516b.p1535v1.C23142c;
import s1.z.c.l;
/* renamed from: e.i.b.p2 */
/* loaded from: classes-dex2jar.jar:e/i/b/p2.class */
public class C23007p2 extends Criteo {

    /* renamed from: a */
    public final C23021h f63765a = C23023i.m7583a(C23007p2.class);

    /* renamed from: b */
    public final C23157x2 f63766b;

    /* renamed from: c */
    public final C23161y1 f63767c;

    /* renamed from: d */
    public final C23134y f63768d;

    /* renamed from: e */
    public final C23132x f63769e;

    /* renamed from: f */
    public final C22978b f63770f;

    /* renamed from: g */
    public final C22955h2 f63771g;

    /* renamed from: h */
    public final C22921c f63772h;

    /* renamed from: i */
    public final C22951a f63773i;

    public C23007p2(Application application, List<AdUnit> list, Boolean bool, String str, final C23157x2 c23157x2) {
        this.f63766b = c23157x2;
        c23157x2.m7449m();
        C23134y m7438x = c23157x2.m7438x();
        this.f63768d = m7438x;
        m7438x.mo7426b();
        c23157x2.m7451k().m7567c();
        this.f63769e = c23157x2.m7441u();
        this.f63767c = c23157x2.m7445q();
        this.f63771g = (C22955h2) C26232y.m2364e(c23157x2.f64124a, C22955h2.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.z0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x22 = C23157x2.this;
                return new C22955h2(c23157x22.m7445q(), c23157x22.m7442t(), c23157x22.m7453i());
            }
        }));
        this.f63772h = (C22921c) C26232y.m2364e(c23157x2.f64124a, C22921c.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.b1
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x22 = C23157x2.this;
                Objects.requireNonNull(c23157x22);
                return new C22921c(Arrays.asList(new C22923e(), new C22916b(c23157x22.m7450l(), c23157x22.m7461a()), new C22924f()), c23157x22.m7460b());
            }
        }));
        this.f63773i = (C22951a) C26232y.m2364e(c23157x2.f64124a, C22951a.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.m0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x22 = C23157x2.this;
                return new C22951a(c23157x22.m7439w(), c23157x22.m7446p());
            }
        }));
        C22978b m7444r = c23157x2.m7444r();
        this.f63770f = m7444r;
        if (bool != null) {
            m7444r.m7605b(bool.booleanValue());
        }
        if (str != null) {
            m7444r.m7606a(str);
        }
        application.registerActivityLifecycleCallbacks((C23079d) C26232y.m2364e(c23157x2.f64124a, C23079d.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.o
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                final C23157x2 c23157x22 = C23157x2.this;
                return new C23079d((C23006a) C26232y.m2364e(c23157x22.f64124a, C23006a.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.n0
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        C23157x2 c23157x23 = C23157x2.this;
                        return new C23006a(c23157x23.m7439w(), c23157x23.m7451k(), c23157x23.m7442t(), c23157x23.m7458d(), c23157x23.m7444r(), c23157x23.m7438x(), c23157x23.m7447o());
                    }
                })), c23157x22.m7445q());
            }
        })));
        C22947c m7446p = c23157x2.m7446p();
        Objects.requireNonNull(m7446p);
        application.registerActivityLifecycleCallbacks(new C22946b(m7446p));
        ((AbstractC23068a) C26232y.m2364e(c23157x2.f64124a, AbstractC23068a.class, new k1(new C22909a0(c23157x2)))).mo7387a();
        c23157x2.m7453i().execute(new C22993n2(this, list));
    }

    /* renamed from: a */
    public final void m7590a(Object obj, Bid bid) {
        C22921c c22921c = this.f63772h;
        C23021h c23021h = c22921c.f63592a;
        StringBuilder m8728C = C22128a.m8728C("Attempting to set bids as AppBidding from bid ");
        m8728C.append(bid != null ? C26232y.m2359f(bid) : null);
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        if (obj != null) {
            for (AbstractC22922d abstractC22922d : c22921c.f63593b) {
                if (abstractC22922d.mo7624b(obj)) {
                    c22921c.f63594c.m7620a(abstractC22922d.mo7626a());
                    C23131w c23131w = bid == null ? null : (C23131w) bid.m42048a(c.a);
                    abstractC22922d.mo7625a(obj);
                    if (c23131w != null) {
                        abstractC22922d.mo7623c(obj, bid.f2421b, c23131w);
                        return;
                    }
                    C23021h c23021h2 = c22921c.f63592a;
                    EnumC22933a mo7626a = abstractC22922d.mo7626a();
                    l.f(mo7626a, "integration");
                    c23021h2.m7586a(new C23019f(0, "Failed to set bids as " + mo7626a + ": No bid found", null, null, 13));
                    return;
                }
            }
        }
        C23021h c23021h3 = c22921c.f63592a;
        StringBuilder m8728C2 = C22128a.m8728C("Failed to set bids: unknown '");
        Class<?> cls = null;
        if (obj != null) {
            cls = obj.getClass();
        }
        m8728C2.append(cls);
        m8728C2.append("' object given");
        c23021h3.m7586a(new C23019f(6, m8728C2.toString(), null, "onUnknownAdObjectEnriched", 4));
    }

    @Override // com.criteo.publisher.Criteo
    public C22989m2 createBannerController(CriteoBannerView criteoBannerView) {
        return new C22989m2(criteoBannerView, this, this.f63766b.m7446p(), this.f63766b.m7453i());
    }

    @Override // com.criteo.publisher.Criteo
    public void enrichAdObjectWithBid(Object obj, Bid bid) {
        try {
            m7590a(obj, bid);
        } catch (Throwable th) {
            this.f63765a.m7586a(C22912a3.m7631a(th));
        }
    }

    @Override // com.criteo.publisher.Criteo
    public void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC23156x1 abstractC23156x1) {
        this.f63767c.m7435c(adUnit, contextData, abstractC23156x1);
    }

    @Override // com.criteo.publisher.Criteo
    public C23132x getConfig() {
        return this.f63769e;
    }

    @Override // com.criteo.publisher.Criteo
    public C23134y getDeviceInfo() {
        return this.f63768d;
    }

    @Override // com.criteo.publisher.Criteo
    public C22951a getInterstitialActivityHelper() {
        return this.f63773i;
    }

    @Override // com.criteo.publisher.Criteo
    public void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        try {
            C22955h2 c22955h2 = this.f63771g;
            c22955h2.f63649b.m7435c(adUnit, contextData, new C22944f2(c22955h2, adUnit, bidResponseListener));
        } catch (Throwable th) {
            this.f63765a.m7586a(C22912a3.m7631a(th));
            bidResponseListener.onResponse(null);
        }
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(String str) {
        this.f63770f.m7606a(str);
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
        this.f63770f.m7605b(z);
    }

    @Override // com.criteo.publisher.Criteo
    public void setUserData(UserData userData) {
        C23142c c23142c = (C23142c) C26232y.m2364e(this.f63766b.f64124a, C23142c.class, new k1(C22970j1.f63693a));
        Objects.requireNonNull(c23142c);
        l.f(userData, "userData");
        c23142c.f64107a.set(userData);
    }
}
