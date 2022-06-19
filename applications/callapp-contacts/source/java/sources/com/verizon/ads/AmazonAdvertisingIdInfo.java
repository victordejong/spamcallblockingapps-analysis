package com.verizon.ads;

import com.verizon.ads.EnvironmentInfo;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AmazonAdvertisingIdInfo.class */
public final class AmazonAdvertisingIdInfo implements EnvironmentInfo.AdvertisingIdInfo {

    /* renamed from: a */
    private final String f61155a;

    /* renamed from: b */
    private final boolean f61156b;

    public AmazonAdvertisingIdInfo(String str, int i) {
        this.f61155a = str;
        this.f61156b = i != 0;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final String getId() {
        return this.f61155a;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final boolean isLimitAdTrackingEnabled() {
        return this.f61156b;
    }

    public final String toString() {
        return "AmazonAdvertisingIdInfo{id='" + this.f61155a + "', limitAdTracking=" + this.f61156b + '}';
    }
}
