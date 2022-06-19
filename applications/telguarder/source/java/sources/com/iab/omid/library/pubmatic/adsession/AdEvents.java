package com.iab.omid.library.pubmatic.adsession;

import com.iab.omid.library.pubmatic.adsession.media.VastProperties;
import com.iab.omid.library.pubmatic.p014d.C1774e;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/AdEvents.class */
public final class AdEvents {
    private final C1753a adSession;

    private AdEvents(C1753a c1753a) {
        this.adSession = c1753a;
    }

    public static AdEvents createAdEvents(AdSession adSession) {
        C1753a c1753a = (C1753a) adSession;
        C1774e.m1222a(adSession, "AdSession is null");
        C1774e.m1217d(c1753a);
        C1774e.m1219b(c1753a);
        AdEvents adEvents = new AdEvents(c1753a);
        c1753a.getAdSessionStatePublisher().m1205a(adEvents);
        return adEvents;
    }

    public void impressionOccurred() {
        C1774e.m1219b(this.adSession);
        C1774e.m1215f(this.adSession);
        if (!this.adSession.m1319e()) {
            try {
                this.adSession.start();
            } catch (Exception e) {
            }
        }
        if (this.adSession.m1319e()) {
            this.adSession.m1325b();
        }
    }

    public void loaded() {
        C1774e.m1218c(this.adSession);
        C1774e.m1215f(this.adSession);
        this.adSession.m1323c();
    }

    public void loaded(VastProperties vastProperties) {
        C1774e.m1222a(vastProperties, "VastProperties is null");
        C1774e.m1218c(this.adSession);
        C1774e.m1215f(this.adSession);
        this.adSession.m1326a(vastProperties.m1312a());
    }
}
