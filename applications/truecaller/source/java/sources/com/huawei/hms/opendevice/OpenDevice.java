package com.huawei.hms.opendevice;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.utils.Checker;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/OpenDevice.class */
public class OpenDevice {
    public static OpenDeviceClient getOpenDeviceClient(Activity activity) {
        Checker.assertNonNull(activity);
        return new OpenDeviceClientImpl(activity);
    }

    public static OpenDeviceClient getOpenDeviceClient(Context context) {
        Checker.assertNonNull(context);
        return new OpenDeviceClientImpl(context);
    }
}
