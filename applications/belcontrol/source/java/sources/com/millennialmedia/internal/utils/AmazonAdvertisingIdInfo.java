package com.millennialmedia.internal.utils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/AmazonAdvertisingIdInfo.class */
public final class AmazonAdvertisingIdInfo implements AdvertisingIdInfo {

    /* renamed from: id */
    private String f4125id;
    private boolean limitAdTracking;

    public AmazonAdvertisingIdInfo(String str, int i) {
        this.f4125id = str;
        this.limitAdTracking = i != 0;
    }

    @Override // com.millennialmedia.internal.utils.AdvertisingIdInfo
    public String getId() {
        return this.f4125id;
    }

    @Override // com.millennialmedia.internal.utils.AdvertisingIdInfo
    public boolean isLimitAdTrackingEnabled() {
        return this.limitAdTracking;
    }

    public String toString() {
        return "AmazonAdvertisingIdInfo{id='" + this.f4125id + "', limitAdTracking=" + this.limitAdTracking + '}';
    }
}
