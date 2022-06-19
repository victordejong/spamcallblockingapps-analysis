package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBAdResponse;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBidderListener.class */
public interface POBBidderListener<T extends POBAdDescriptor> {
    void onBidsFailed(POBBidding<T> pOBBidding, POBError pOBError);

    void onBidsFetched(POBBidding<T> pOBBidding, POBAdResponse<T> pOBAdResponse);
}
