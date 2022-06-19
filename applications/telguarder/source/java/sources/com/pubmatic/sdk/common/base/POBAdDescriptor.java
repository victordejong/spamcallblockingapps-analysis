package com.pubmatic.sdk.common.base;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBAdDescriptor.class */
public interface POBAdDescriptor {
    public static final int BID_STATUS_OK = 1;

    POBAdDescriptor buildWithRefreshAndExpiryTimeout(int i, int i2);

    int getContentHeight();

    int getContentWidth();

    String getCreativeType();

    String getId();

    JSONObject getRawBid();

    int getRefreshInterval();

    String getRenderableContent();

    int getStatus();

    Map<String, String> getTargetingInfo();

    boolean isVideo();
}
