package com.pubmatic.sdk.common.base;

import android.content.Context;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBBidderProvider.class */
public interface POBBidderProvider<T extends POBAdDescriptor> {
    POBBidding<T> getBidder(Context context, POBAdRequest pOBAdRequest, POBPartnerInfo pOBPartnerInfo);
}
