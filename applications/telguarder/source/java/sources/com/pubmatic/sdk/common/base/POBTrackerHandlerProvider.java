package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.network.POBTrackerHandling;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBTrackerHandlerProvider.class */
public interface POBTrackerHandlerProvider<T extends POBAdDescriptor> {
    POBTrackerHandling getTrackerHandler(List<T> list, POBPartnerInfo pOBPartnerInfo, POBNetworkHandler pOBNetworkHandler);
}
