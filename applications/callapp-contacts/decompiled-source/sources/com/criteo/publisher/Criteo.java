package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.j.a;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.g;
import com.criteo.publisher.m0.k;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.u;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/Criteo.class */
public abstract class Criteo {
    private static Criteo criteo;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/Criteo$Builder.class */
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
            List<AdUnit> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
            }
            this.adUnits = list2;
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
        throw new p("You must initialize the SDK before calling Criteo.getInstance()");
    }

    public static String getVersion() {
        try {
            q.a().o();
            return g.a();
        } catch (Throwable th) {
            h.a(Criteo.class).a(t.a(th));
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Criteo init(Builder builder) throws CriteoInitException {
        Criteo criteo2;
        com.criteo.publisher.logging.g a2 = h.a(Criteo.class);
        synchronized (Criteo.class) {
            try {
                if (criteo == null) {
                    q a3 = q.a();
                    a3.f17655b = builder.application;
                    a3.b();
                    a3.f17656c = builder.criteoPublisherId;
                    a3.c();
                    if (builder.isDebugLogsEnabled) {
                        a3.B().f17445a = 4;
                    }
                    a3.g();
                    if (k.c()) {
                        criteo = new l(builder.application, builder.adUnits, builder.usPrivacyOptOut, builder.mopubConsent, a3);
                        a2.a(w.a(builder.criteoPublisherId, builder.adUnits, getVersion()));
                    } else {
                        criteo = new s();
                        a2.a(w.a());
                    }
                } else {
                    a2.a(w.b());
                }
                criteo2 = criteo;
            } catch (Throwable th) {
                throw th;
            }
        }
        return criteo2;
    }

    static void setInstance(Criteo criteo2) {
        criteo = criteo2;
    }

    public abstract k createBannerController(CriteoBannerView criteoBannerView);

    public abstract void enrichAdObjectWithBid(Object obj, Bid bid);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract t getConfig();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract u getDeviceInfo();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a getInterstitialActivityHelper();

    public void loadBid(AdUnit adUnit, BidResponseListener bidResponseListener) {
        loadBid(adUnit, new ContextData(), bidResponseListener);
    }

    public abstract void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener);

    public abstract void setMopubConsent(String str);

    public abstract void setUsPrivacyOptOut(boolean z);

    public abstract void setUserData(UserData userData);
}
