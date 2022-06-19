package com.huawei.hms.support.api.entity.safetydetect;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/entity/safetydetect/UrlCheckThreat.class */
public class UrlCheckThreat {
    public static final int MALWARE = 1;
    public static final int PHISHING = 3;
    private int urlCheckResult;

    public UrlCheckThreat(int i) {
        this.urlCheckResult = i;
    }

    public int getUrlCheckResult() {
        return this.urlCheckResult;
    }
}
