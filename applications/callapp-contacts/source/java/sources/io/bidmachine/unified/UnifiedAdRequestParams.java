package io.bidmachine.unified;

import io.bidmachine.AdRequest;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.DeviceInfo;
import io.bidmachine.models.TargetingInfo;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/unified/UnifiedAdRequestParams.class */
public interface UnifiedAdRequestParams {
    AdRequest getAdRequest();

    DataRestrictions getDataRestrictions();

    DeviceInfo getDeviceInfo();

    TargetingInfo getTargetingParams();

    boolean isTestMode();
}
