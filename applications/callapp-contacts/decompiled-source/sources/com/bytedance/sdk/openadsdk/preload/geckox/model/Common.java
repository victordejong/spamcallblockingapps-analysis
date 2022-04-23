package com.bytedance.sdk.openadsdk.preload.geckox.model;

import android.os.Build;
import com.bytedance.sdk.openadsdk.preload.a.a.c;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/Common.class */
public class Common {
    @c(a = "ac")
    public String ac;
    @c(a = "aid")
    public long aid;
    @c(a = "app_name")
    public String appName;
    @c(a = ImpressionData.APP_VERSION)
    public String appVersion;
    @c(a = "device_id")
    public String deviceId;
    @c(a = "os_version")
    public String osVersion;
    @c(a = "region")
    public String region;
    @c(a = "uid")
    public String uid;
    @c(a = "os")
    public int os = 0;
    @c(a = "device_model")
    public String deviceModel = Build.MODEL;
    @c(a = "device_platform")
    public String devicePlatform = Constants.ANDROID_PLATFORM;
    @c(a = "sdk_version")
    public String sdkVersion = "2.0.3-rc.9-pangle";

    public Common(long j, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        this.osVersion = sb.toString();
        this.aid = j;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.ac = str4;
    }

    public Common(long j, String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        this.osVersion = sb.toString();
        this.aid = j;
        this.appVersion = str;
        this.deviceId = str2;
        this.appName = str3;
        this.ac = str4;
        this.uid = str5;
        this.region = str6;
    }
}
