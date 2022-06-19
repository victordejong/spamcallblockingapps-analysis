package com.iab.omid.library.applovin.adsession;

import com.iab.omid.library.applovin.adsession.media.VastProperties;
import com.iab.omid.library.applovin.p062d.C1950e;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/AdEvents.class */
public final class AdEvents {
    private final C1929a adSession;

    private AdEvents(C1929a c1929a) {
        this.adSession = c1929a;
    }

    public static AdEvents createAdEvents(AdSession adSession) {
        C1929a c1929a = (C1929a) adSession;
        C1950e.m4083a(adSession, "AdSession is null");
        C1950e.m4078d(c1929a);
        C1950e.m4080b(c1929a);
        AdEvents adEvents = new AdEvents(c1929a);
        c1929a.getAdSessionStatePublisher().m4066a(adEvents);
        return adEvents;
    }

    public void impressionOccurred() {
        C1950e.m4080b(this.adSession);
        C1950e.m4076f(this.adSession);
        if (!this.adSession.m4184f()) {
            try {
                this.adSession.start();
            } catch (Exception e) {
            }
        }
        if (this.adSession.m4184f()) {
            this.adSession.m4189c();
        }
    }

    public void loaded() {
        C1950e.m4079c(this.adSession);
        C1950e.m4076f(this.adSession);
        this.adSession.m4187d();
    }

    public void loaded(VastProperties vastProperties) {
        C1950e.m4083a(vastProperties, "VastProperties is null");
        C1950e.m4079c(this.adSession);
        C1950e.m4076f(this.adSession);
        this.adSession.m4192a(vastProperties.m4177a());
    }
}
