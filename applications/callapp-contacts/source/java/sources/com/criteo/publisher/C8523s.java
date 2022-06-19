package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p250j.C8353a;
import com.criteo.publisher.p254l.C8387d;
import com.criteo.publisher.p256m0.FutureC8434h;
import java.util.concurrent.Future;
/* renamed from: com.criteo.publisher.s */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s.class */
public final class C8523s extends Criteo {

    /* renamed from: com.criteo.publisher.s$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s$b.class */
    static class C8525b extends C8509u {
        private C8525b() {
            super(null, new ExecutorC8277c());
        }

        @Override // com.criteo.publisher.model.C8509u
        /* renamed from: b */
        public Future<String> mo25380b() {
            return FutureC8434h.m25687a("");
        }

        @Override // com.criteo.publisher.model.C8509u
        /* renamed from: d */
        public void mo25379d() {
        }
    }

    /* renamed from: com.criteo.publisher.s$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s$c.class */
    static final class C8526c extends C8353a {
        C8526c() {
            super(null, null);
        }

        @Override // com.criteo.publisher.p250j.C8353a
        /* renamed from: a */
        public final void mo25377a(String str, C8387d c8387d) {
        }

        @Override // com.criteo.publisher.p250j.C8353a
        /* renamed from: a */
        public final boolean mo25378a() {
            return false;
        }
    }

    @Override // com.criteo.publisher.Criteo
    public final C8365k createBannerController(CriteoBannerView criteoBannerView) {
        return new C8365k(criteoBannerView, this, C8520q.m25449a().m25384y(), C8520q.m25449a().m25400i());
    }

    @Override // com.criteo.publisher.Criteo
    public final void enrichAdObjectWithBid(Object obj, Bid bid) {
    }

    @Override // com.criteo.publisher.Criteo
    public final void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC8270d abstractC8270d) {
        abstractC8270d.mo25712a();
    }

    @Override // com.criteo.publisher.Criteo
    public final C8507t getConfig() {
        return new C8507t();
    }

    @Override // com.criteo.publisher.Criteo
    public final C8509u getDeviceInfo() {
        return new C8525b();
    }

    @Override // com.criteo.publisher.Criteo
    public final C8353a getInterstitialActivityHelper() {
        return new C8526c();
    }

    @Override // com.criteo.publisher.Criteo
    public final void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        bidResponseListener.onResponse(null);
    }

    @Override // com.criteo.publisher.Criteo
    public final void setMopubConsent(String str) {
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUsPrivacyOptOut(boolean z) {
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUserData(UserData userData) {
    }
}
