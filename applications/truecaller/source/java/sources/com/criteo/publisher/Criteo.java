package com.criteo.publisher;

import android.app.Application;
import androidx.annotation.Keep;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import e.i.b.k1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.AbstractC23156x1;
import p193e.p1512i.p1516b.C22912a3;
import p193e.p1512i.p1516b.C22936d3;
import p193e.p1512i.p1516b.C22989m2;
import p193e.p1512i.p1516b.C23007p2;
import p193e.p1512i.p1516b.C23153w2;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1521g2.C22951a;
import p193e.p1512i.p1516b.p1528q2.C23017d;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1533u2.C23134y;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/Criteo.class */
public abstract class Criteo {
    private static Criteo criteo;

    @Keep
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/Criteo$Builder.class */
    public static class Builder {
        private final Application application;
        private final String criteoPublisherId;
        private String mopubConsent;
        private Boolean usPrivacyOptOut;
        private List<AdUnit> adUnits = new ArrayList();
        private boolean isDebugLogsEnabled = false;

        public Builder(Application application, String str) {
            this.application = application;
            this.criteoPublisherId = str;
        }

        public Builder adUnits(List<AdUnit> list) {
            if (list == null) {
                this.adUnits = new ArrayList();
            } else {
                this.adUnits = list;
            }
            return this;
        }

        public Builder debugLogsEnabled(boolean z) {
            this.isDebugLogsEnabled = z;
            return this;
        }

        public Criteo init() throws CriteoInitException {
            return Criteo.init(this);
        }

        public Builder mopubConsent(String str) {
            this.mopubConsent = str;
            return this;
        }

        public Builder usPrivacyOptOut(boolean z) {
            this.usPrivacyOptOut = Boolean.valueOf(z);
            return this;
        }
    }

    public static Criteo getInstance() {
        Criteo criteo2 = criteo;
        if (criteo2 != null) {
            return criteo2;
        }
        throw new C23153w2("You must initialize the SDK before calling Criteo.getInstance()");
    }

    public static String getVersion() {
        try {
            Objects.requireNonNull(C23157x2.m7454h().m7443s());
            return "4.4.0";
        } catch (Throwable th) {
            C23023i.m7583a(Criteo.class).m7586a(C22912a3.m7631a(th));
            return "";
        }
    }

    public static Criteo init(Builder builder) throws CriteoInitException {
        Criteo criteo2;
        C23021h m7583a = C23023i.m7583a(Criteo.class);
        synchronized (Criteo.class) {
            try {
                if (criteo == null) {
                    final C23157x2 m7454h = C23157x2.m7454h();
                    m7454h.f64125b = builder.application;
                    m7454h.m7456f();
                    String str = builder.criteoPublisherId;
                    m7454h.f64126c = str;
                    if (C26232y.m2338k(str)) {
                        throw new C23153w2("Criteo Publisher Id is required");
                    }
                    if (builder.isDebugLogsEnabled) {
                        ((C23017d) C26232y.m2364e(m7454h.f64124a, C23017d.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.h1
                            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                            /* renamed from: a */
                            public final Object mo7423a() {
                                return new C23017d(C23157x2.this.m7443s());
                            }
                        }))).f63784a = 4;
                    }
                    Objects.requireNonNull(m7454h.m7461a());
                    criteo = new C23007p2(builder.application, builder.adUnits, builder.usPrivacyOptOut, builder.mopubConsent, m7454h);
                    m7583a.m7586a(C22936d3.m7618a(builder.criteoPublisherId, builder.adUnits, getVersion()));
                } else {
                    m7583a.m7586a(new C23019f(0, "Criteo SDK initialization method cannot be called more than once. Please ignore this if you are using a mediation adapter.", null, null, 13));
                }
                criteo2 = criteo;
            } catch (Throwable th) {
                throw th;
            }
        }
        return criteo2;
    }

    public static void setInstance(Criteo criteo2) {
        criteo = criteo2;
    }

    public abstract C22989m2 createBannerController(CriteoBannerView criteoBannerView);

    public abstract void enrichAdObjectWithBid(Object obj, Bid bid);

    public abstract void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC23156x1 abstractC23156x1);

    public abstract C23132x getConfig();

    public abstract C23134y getDeviceInfo();

    public abstract C22951a getInterstitialActivityHelper();

    public void loadBid(AdUnit adUnit, BidResponseListener bidResponseListener) {
        loadBid(adUnit, new ContextData(), bidResponseListener);
    }

    public abstract void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener);

    public abstract void setMopubConsent(String str);

    public abstract void setUsPrivacyOptOut(boolean z);

    public abstract void setUserData(UserData userData);
}
