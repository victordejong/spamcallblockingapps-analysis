package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p250j.C8353a;
import com.criteo.publisher.p256m0.C8433g;
import com.criteo.publisher.p256m0.C8440k;
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
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
            }
            this.adUnits = arrayList;
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
        throw new C8519p("You must initialize the SDK before calling Criteo.getInstance()");
    }

    public static String getVersion() {
        try {
            C8520q.m25449a().m25394o();
            return C8433g.m25694a();
        } catch (Throwable th) {
            C8404h.m25741a(Criteo.class).m25744a(C8527t.m25376a(th));
            return "";
        }
    }

    public static Criteo init(Builder builder) throws CriteoInitException {
        Criteo criteo2;
        C8402g m25741a = C8404h.m25741a(Criteo.class);
        synchronized (Criteo.class) {
            try {
                if (criteo == null) {
                    C8520q m25449a = C8520q.m25449a();
                    m25449a.f30383b = builder.application;
                    m25449a.m25407b();
                    m25449a.f30384c = builder.criteoPublisherId;
                    m25449a.m25406c();
                    if (builder.isDebugLogsEnabled) {
                        m25449a.m25474B().f30120a = 4;
                    }
                    m25449a.m25402g();
                    if (C8440k.m25682c()) {
                        criteo = new C8381l(builder.application, builder.adUnits, builder.usPrivacyOptOut, builder.mopubConsent, m25449a);
                        m25741a.m25744a(C8530w.m25364a(builder.criteoPublisherId, builder.adUnits, getVersion()));
                    } else {
                        criteo = new C8523s();
                        m25741a.m25744a(C8530w.m25366a());
                    }
                } else {
                    m25741a.m25744a(C8530w.m25363b());
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

    public abstract C8365k createBannerController(CriteoBannerView criteoBannerView);

    public abstract void enrichAdObjectWithBid(Object obj, Bid bid);

    public abstract void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC8270d abstractC8270d);

    public abstract C8507t getConfig();

    public abstract C8509u getDeviceInfo();

    public abstract C8353a getInterstitialActivityHelper();

    public void loadBid(AdUnit adUnit, BidResponseListener bidResponseListener) {
        loadBid(adUnit, new ContextData(), bidResponseListener);
    }

    public abstract void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener);

    public abstract void setMopubConsent(String str);

    public abstract void setUsPrivacyOptOut(boolean z);

    public abstract void setUserData(UserData userData);
}
