package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.POBError;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEventListener.class */
public interface POBBidEventListener {
    void onBidFailed(POBBidEvent pOBBidEvent, POBError pOBError);

    void onBidReceived(POBBidEvent pOBBidEvent, POBBid pOBBid);
}
