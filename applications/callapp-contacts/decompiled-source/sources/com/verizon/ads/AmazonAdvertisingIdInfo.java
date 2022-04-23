package com.verizon.ads;

import com.verizon.ads.EnvironmentInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AmazonAdvertisingIdInfo.class */
public final class AmazonAdvertisingIdInfo implements EnvironmentInfo.AdvertisingIdInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f35267a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f35268b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AmazonAdvertisingIdInfo(String str, int i) {
        this.f35267a = str;
        this.f35268b = i != 0;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final String getId() {
        return this.f35267a;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final boolean isLimitAdTrackingEnabled() {
        return this.f35268b;
    }

    public final String toString() {
        return "AmazonAdvertisingIdInfo{id='" + this.f35267a + "', limitAdTracking=" + this.f35268b + '}';
    }
}
