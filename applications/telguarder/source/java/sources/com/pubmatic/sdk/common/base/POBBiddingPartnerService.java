package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBiddingPartnerService.class */
public interface POBBiddingPartnerService<T extends POBAdDescriptor> extends POBBidderProvider<T>, POBCustomRendererProvider, POBPriceGranuilarityListener, POBTrackerHandlerProvider<T> {
    POBAuctioning<T> getAuction();
}
