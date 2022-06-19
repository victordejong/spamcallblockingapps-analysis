package com.amazon.device.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBCacheData.class */
public class DTBCacheData {
    private static long ADMOB_AUTO_REFRESH_TIME_LIMIT_MS = 30000;
    private DTBAdRequest cachingLoader;
    private DTBAdResponse cachingResponse;
    private String requestId;
    private boolean isBidRequestFailed = false;
    private long responseTimeStamp = C22128a.m8638c();

    public DTBCacheData(String str, DTBAdRequest dTBAdRequest) {
        this.requestId = str;
        this.cachingLoader = dTBAdRequest;
    }

    public void addResponse(DTBAdResponse dTBAdResponse) {
        this.cachingResponse = dTBAdResponse;
        this.responseTimeStamp = C22128a.m8638c();
    }

    public DTBAdResponse getAdResponse() {
        if (C22128a.m8638c() - this.responseTimeStamp <= ADMOB_AUTO_REFRESH_TIME_LIMIT_MS) {
            return this.cachingResponse;
        }
        this.cachingResponse = null;
        return null;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public long getResponseTimeStamp() {
        return this.responseTimeStamp;
    }

    public boolean isBidRequestFailed() {
        return this.isBidRequestFailed;
    }

    public void setBidRequestFailed(boolean z) {
        this.isBidRequestFailed = z;
    }

    public void updateResponse(DTBAdResponse dTBAdResponse) {
        this.cachingResponse = dTBAdResponse;
    }
}
