package com.huawei.hms.support.api.opendevice;

import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/opendevice/HuaweiOpendevice.class */
public class HuaweiOpendevice {
    public static final Api<Api.ApiOptions.NoOptions> OPEN_DEVICE_API = new Api<>(HuaweiApiAvailability.HMS_API_NAME_OD);
    public static final HuaweiOpendeviceApi HUAWEI_OPENDEVICE_API = new HuaweiOpendeviceApiImpl();
}
