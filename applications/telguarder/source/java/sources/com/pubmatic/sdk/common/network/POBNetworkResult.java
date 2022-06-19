package com.pubmatic.sdk.common.network;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/POBNetworkResult.class */
public class POBNetworkResult {

    /* renamed from: a */
    private Map<String, String> f545a;

    /* renamed from: b */
    private long f546b;

    public POBNetworkResult(Map<String, String> map, long j) {
        this.f545a = map;
        this.f546b = j;
    }

    public Map<String, String> getHeaders() {
        return this.f545a;
    }

    public long getNetworkTimeMs() {
        return this.f546b;
    }

    public String toString() {
        return "POBNetworkResult{, networkTimeMs=" + this.f546b + '}';
    }
}
