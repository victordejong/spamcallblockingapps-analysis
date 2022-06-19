package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdSessionEvent.class */
public class AdSessionEvent {
    public final AdSession adSession;

    public AdSessionEvent(AdSession adSession) {
        this.adSession = adSession;
    }

    public String toString() {
        AdSession adSession = this.adSession;
        return adSession != null ? adSession.toString() : "";
    }
}
