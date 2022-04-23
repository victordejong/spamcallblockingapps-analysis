package com.bytedance.sdk.openadsdk.preload.falconx.statistic;

import android.os.Build;
import com.bytedance.sdk.openadsdk.preload.a.a.c;
import com.mopub.network.ImpressionData;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/statistic/Common.class */
public class Common {
    @c(a = ImpressionData.APP_VERSION)
    public String appVersion;
    @c(a = "device_id")
    public String deviceId;
    @c(a = "region")
    public String region;
    @c(a = "sdk_version")
    public String sdkVersion = "2.0.3-rc.9-pangle";
    @c(a = "device_model")
    public String deviceModel = Build.MODEL;
    @c(a = "os")
    public int os = 0;
}
