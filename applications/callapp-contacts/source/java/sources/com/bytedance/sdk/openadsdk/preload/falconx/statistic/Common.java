package com.bytedance.sdk.openadsdk.preload.falconx.statistic;

import android.os.Build;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import com.mopub.network.ImpressionData;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/statistic/Common.class */
public class Common {
    @AbstractC5114c(m32993a = ImpressionData.APP_VERSION)
    public String appVersion;
    @AbstractC5114c(m32993a = "device_id")
    public String deviceId;
    @AbstractC5114c(m32993a = "region")
    public String region;
    @AbstractC5114c(m32993a = "sdk_version")
    public String sdkVersion = "2.0.3-rc.9-pangle";
    @AbstractC5114c(m32993a = "device_model")
    public String deviceModel = Build.MODEL;
    @AbstractC5114c(m32993a = "os")

    /* renamed from: os */
    public int f18741os = 0;
}
