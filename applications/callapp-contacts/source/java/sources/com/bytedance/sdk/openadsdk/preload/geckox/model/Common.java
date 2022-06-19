package com.bytedance.sdk.openadsdk.preload.geckox.model;

import android.os.Build;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/Common.class */
public class Common {
    @AbstractC5114c(m32993a = "ac")

    /* renamed from: ac */
    public String f18895ac;
    @AbstractC5114c(m32993a = "aid")
    public long aid;
    @AbstractC5114c(m32993a = "app_name")
    public String appName;
    @AbstractC5114c(m32993a = ImpressionData.APP_VERSION)
    public String appVersion;
    @AbstractC5114c(m32993a = "device_id")
    public String deviceId;
    @AbstractC5114c(m32993a = "os_version")
    public String osVersion;
    @AbstractC5114c(m32993a = "region")
    public String region;
    @AbstractC5114c(m32993a = "uid")
    public String uid;
    @AbstractC5114c(m32993a = "os")

    /* renamed from: os */
    public int f18896os = 0;
    @AbstractC5114c(m32993a = "device_model")
    public String deviceModel = Build.MODEL;
    @AbstractC5114c(m32993a = "device_platform")
    public String devicePlatform = Constants.ANDROID_PLATFORM;
    @AbstractC5114c(m32993a = "sdk_version")
    public String sdkVersion = "2.0.3-rc.9-pangle";

    public Common(long j, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        this.osVersion = sb.toString();
        this.aid = j;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.f18895ac = str4;
    }

    public Common(long j, String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        this.osVersion = sb.toString();
        this.aid = j;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.f18895ac = str4;
        this.uid = str5;
        this.region = str6;
    }
}
