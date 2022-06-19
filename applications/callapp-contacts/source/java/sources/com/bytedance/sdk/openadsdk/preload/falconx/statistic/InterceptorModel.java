package com.bytedance.sdk.openadsdk.preload.falconx.statistic;

import android.os.SystemClock;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/statistic/InterceptorModel.class */
public class InterceptorModel {
    @AbstractC5114c(m32993a = "ac")

    /* renamed from: ac */
    public String f18742ac;
    @AbstractC5114c(m32993a = "access_key")
    public String accessKey;
    @AbstractC5114c(m32993a = AppsFlyerProperties.CHANNEL)
    public String channel;
    @AbstractC5114c(m32993a = "err_code")
    public String errCode;
    @AbstractC5114c(m32993a = "err_msg")
    public String errMsg;
    @AbstractC5114c(m32993a = "log_id")
    public String logId;
    @AbstractC5114c(m32993a = "mime_type")
    public String mimeType;
    @AbstractC5114c(m32993a = "offline_duration")
    public Long offlineDuration;
    @AbstractC5114c(m32993a = "offline_rule")
    public String offlineRule;
    @AbstractC5114c(m32993a = "offline_status")
    public Integer offlineStatus;
    @AbstractC5114c(m32993a = "online_duration")
    public Long onlineDuration;
    @AbstractC5114c(m32993a = "page_url")
    public String pageUrl;
    @AbstractC5114c(m32993a = "pkg_version")
    public Long pkgVersion;
    @AbstractC5114c(m32993a = "res_root_dir")
    public String resRootDir;
    public Long startTime = Long.valueOf(SystemClock.uptimeMillis());
    @AbstractC5114c(m32993a = "resource_url")
    public String url;

    public void loadFinish(boolean z) {
        if (!z) {
            this.offlineStatus = 0;
            return;
        }
        this.offlineDuration = Long.valueOf(SystemClock.uptimeMillis() - this.startTime.longValue());
        this.offlineStatus = 1;
    }

    public void setErrorCode(String str) {
        this.errCode = str;
    }

    public void setErrorMsg(String str) {
        this.errMsg = str;
    }
}
