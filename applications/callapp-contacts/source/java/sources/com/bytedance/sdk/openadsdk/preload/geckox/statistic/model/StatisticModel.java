package com.bytedance.sdk.openadsdk.preload.geckox.statistic.model;

import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel.class */
public class StatisticModel {
    @AbstractC5114c(m32993a = "common")
    public Common common;
    @AbstractC5114c(m32993a = "packages")
    public List<PackageStatisticModel> packages = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel.class */
    public static class PackageStatisticModel {
        @AbstractC5114c(m32993a = "ac")

        /* renamed from: ac */
        public String f18910ac;
        @AbstractC5114c(m32993a = "access_key")
        public String accessKey;
        @AbstractC5114c(m32993a = "active_check_duration")
        public Long activeCheckDuration;
        @AbstractC5114c(m32993a = "apply_duration")
        public Long applyDuration;
        @AbstractC5114c(m32993a = AppsFlyerProperties.CHANNEL)
        public String channel;
        @AbstractC5114c(m32993a = "clean_duration")
        public Long cleanDuration;
        @AbstractC5114c(m32993a = "clean_strategy")
        public Integer cleanStrategy;
        @AbstractC5114c(m32993a = "clean_type")
        public Integer cleanType;
        @AbstractC5114c(m32993a = "download_duration")
        public Long downloadDuration;
        @AbstractC5114c(m32993a = "download_fail_records")
        public List<DownloadFailRecords> downloadFailRecords;
        @AbstractC5114c(m32993a = "download_retry_times")
        public Integer downloadRetryTimes;
        @AbstractC5114c(m32993a = "download_url")
        public String downloadUrl;
        @AbstractC5114c(m32993a = "err_code")
        public String errCode;
        @AbstractC5114c(m32993a = "err_msg")
        public String errMsg;
        @AbstractC5114c(m32993a = "group_name")
        public String groupName;
        @AbstractC5114c(m32993a = "id")

        /* renamed from: id */
        public Long f18911id;
        @AbstractC5114c(m32993a = "log_id")
        public String logId;
        @AbstractC5114c(m32993a = "patch_id")
        public Long patchId;
        @AbstractC5114c(m32993a = "stats_type")
        public Integer statsType;

        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords.class */
        public static class DownloadFailRecords {
            @AbstractC5114c(m32993a = "domain")
            public String domain;
            @AbstractC5114c(m32993a = "reason")
            public String reason;

            public DownloadFailRecords(String str, String str2) {
                this.domain = str;
                this.reason = str2;
            }
        }
    }
}
