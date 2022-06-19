package com.pubmatic.sdk.openwrap.core;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBaseEvent.class */
public interface POBBaseEvent {
    void destroy();

    void requestAd(POBBid pOBBid);

    void trackClick();

    void trackImpression();
}
