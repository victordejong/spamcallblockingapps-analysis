package com.huawei.hms.opendevice;

import com.huawei.hmf.tasks.Task;
import com.huawei.hms.support.api.opendevice.OdidResult;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/OpenDeviceClient.class */
public interface OpenDeviceClient {
    Task<OdidResult> getOdid();
}
