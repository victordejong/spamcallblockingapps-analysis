package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBAdResponse;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBidding.class */
public interface POBBidding<T extends POBAdDescriptor> {
    void destroy();

    POBAdResponse<T> getAdResponse();

    Map<String, POBBidderResult<T>> getBidderResults();

    void requestBid();

    void setBidderListener(POBBidderListener<T> pOBBidderListener);
}
