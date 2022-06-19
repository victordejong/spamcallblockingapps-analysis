package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/NetworkType.class */
public enum NetworkType {
    WIFI(AnalyticsConstants.WIFI),
    CELLULAR(AnalyticsConstants.CELLULAR),
    BLUETOOTH(AnalyticsConstants.BLUETOOTH),
    UNKNOWN("unknown");
    
    private String mNetworkTypeName;

    NetworkType(String str) {
        this.mNetworkTypeName = str;
    }

    public final String getNetworkTypeName() {
        return this.mNetworkTypeName;
    }
}
