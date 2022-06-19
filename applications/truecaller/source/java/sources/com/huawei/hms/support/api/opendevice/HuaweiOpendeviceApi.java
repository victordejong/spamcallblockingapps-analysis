package com.huawei.hms.support.api.opendevice;

import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.support.api.client.PendingResult;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/opendevice/HuaweiOpendeviceApi.class */
public interface HuaweiOpendeviceApi {
    PendingResult<OdidResult> getOdid(HuaweiApiClient huaweiApiClient);
}
