package p193e.p1512i.p1516b;

import com.criteo.publisher.Bid;
import com.criteo.publisher.BidResponseListener;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import java.util.concurrent.Future;
import p193e.p1512i.p1516b.p1521g2.C22951a;
import p193e.p1512i.p1516b.p1525o2.C23001d;
import p193e.p1512i.p1516b.p1531s2.FutureC23081g;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1533u2.C23134y;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.y2 */
/* loaded from: classes-dex2jar.jar:e/i/b/y2.class */
public class C23163y2 extends Criteo {

    /* renamed from: e.i.b.y2$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/y2$b.class */
    public static class C23165b extends C23134y {
        public C23165b(C23164a c23164a) {
            super(null, new ExecutorC23149c());
        }

        @Override // p193e.p1512i.p1516b.p1533u2.C23134y
        /* renamed from: a */
        public Future<String> mo7427a() {
            FutureC23081g futureC23081g = new FutureC23081g();
            futureC23081g.f63909a.compareAndSet(null, new FutureC23081g.C23084c(""));
            futureC23081g.f63910b.countDown();
            return futureC23081g;
        }

        @Override // p193e.p1512i.p1516b.p1533u2.C23134y
        /* renamed from: b */
        public void mo7426b() {
        }
    }

    /* renamed from: e.i.b.y2$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/y2$c.class */
    public static class C23166c extends C22951a {
        public C23166c() {
            super(null, null);
        }

        @Override // p193e.p1512i.p1516b.p1521g2.C22951a
        /* renamed from: a */
        public void mo7425a(String str, C23001d c23001d) {
        }

        @Override // p193e.p1512i.p1516b.p1521g2.C22951a
        /* renamed from: b */
        public boolean mo7424b() {
            return false;
        }
    }

    @Override // com.criteo.publisher.Criteo
    public C22989m2 createBannerController(CriteoBannerView criteoBannerView) {
        return new C22989m2(criteoBannerView, this, C23157x2.m7454h().m7446p(), C23157x2.m7454h().m7453i());
    }

    @Override // com.criteo.publisher.Criteo
    public void enrichAdObjectWithBid(Object obj, Bid bid) {
    }

    @Override // com.criteo.publisher.Criteo
    public void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC23156x1 abstractC23156x1) {
        abstractC23156x1.mo7463a();
    }

    @Override // com.criteo.publisher.Criteo
    public C23132x getConfig() {
        return new C23132x();
    }

    @Override // com.criteo.publisher.Criteo
    public C23134y getDeviceInfo() {
        return new C23165b(null);
    }

    @Override // com.criteo.publisher.Criteo
    public C22951a getInterstitialActivityHelper() {
        return new C23166c();
    }

    @Override // com.criteo.publisher.Criteo
    public void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        bidResponseListener.onResponse(null);
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(String str) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setUserData(UserData userData) {
    }
}
