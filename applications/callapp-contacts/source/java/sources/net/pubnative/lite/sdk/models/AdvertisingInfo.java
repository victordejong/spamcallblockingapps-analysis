package net.pubnative.lite.sdk.models;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdvertisingInfo.class */
public class AdvertisingInfo {
    private final String advertisingId;
    private final Boolean limitTrackingEnabled;

    public AdvertisingInfo(String str, Boolean bool) {
        this.advertisingId = str;
        this.limitTrackingEnabled = bool;
    }

    public String getAdvertisingId() {
        return this.advertisingId;
    }

    public Boolean isLimitTrackingEnabled() {
        return this.limitTrackingEnabled;
    }
}
