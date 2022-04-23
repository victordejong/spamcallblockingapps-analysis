package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.l.d;
import com.criteo.publisher.m0.h;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.u;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s.class */
public final class s extends Criteo {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s$b.class */
    static class b extends u {
        private b() {
            super(null, new com.criteo.publisher.e.c());
        }

        @Override // com.criteo.publisher.model.u
        public Future<String> b() {
            return h.a("");
        }

        @Override // com.criteo.publisher.model.u
        public void d() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/s$c.class */
    static final class c extends com.criteo.publisher.j.a {
        c() {
            super(null, null);
        }

        @Override // com.criteo.publisher.j.a
        public final void a(String str, d dVar) {
        }

        @Override // com.criteo.publisher.j.a
        public final boolean a() {
            return false;
        }
    }

    @Override // com.criteo.publisher.Criteo
    public final k createBannerController(CriteoBannerView criteoBannerView) {
        return new k(criteoBannerView, this, q.a().y(), q.a().i());
    }

    @Override // com.criteo.publisher.Criteo
    public final void enrichAdObjectWithBid(Object obj, Bid bid) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar) {
        dVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final t getConfig() {
        return new t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final u getDeviceInfo() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final com.criteo.publisher.j.a getInterstitialActivityHelper() {
        return new c();
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
