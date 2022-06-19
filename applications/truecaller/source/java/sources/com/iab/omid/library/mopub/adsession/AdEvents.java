package com.iab.omid.library.mopub.adsession;

import android.support.annotation.NonNull;
import com.iab.omid.library.mopub.adsession.media.VastProperties;
import com.iab.omid.library.mopub.p127d.C2618e;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdEvents.class */
public final class AdEvents {
    private final a adSession;

    private AdEvents(a aVar) {
        this.adSession = aVar;
    }

    public static AdEvents createAdEvents(AdSession adSession) {
        a aVar = (a) adSession;
        C2618e.m36398a(adSession, "AdSession is null");
        C2618e.m36393d(aVar);
        C2618e.m36395b(aVar);
        AdEvents adEvents = new AdEvents(aVar);
        aVar.getAdSessionStatePublisher().m36380a(adEvents);
        return adEvents;
    }

    public void impressionOccurred() {
        C2618e.m36395b(this.adSession);
        C2618e.m36391f(this.adSession);
        if (!this.adSession.e()) {
            try {
                this.adSession.start();
            } catch (Exception e) {
            }
        }
        if (this.adSession.e()) {
            this.adSession.b();
        }
    }

    public void loaded() {
        C2618e.m36394c(this.adSession);
        C2618e.m36391f(this.adSession);
        this.adSession.c();
    }

    public void loaded(@NonNull VastProperties vastProperties) {
        C2618e.m36398a(vastProperties, "VastProperties is null");
        C2618e.m36394c(this.adSession);
        C2618e.m36391f(this.adSession);
        this.adSession.a(vastProperties.m36484a());
    }
}
