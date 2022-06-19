package com.huawei.hms.api;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks.class */
public interface HuaweiApiClient$ConnectionCallbacks {
    public static final int CAUSE_API_CLIENT_EXPIRED = 3;
    public static final int CAUSE_NETWORK_LOST = 2;
    public static final int CAUSE_SERVICE_DISCONNECTED = 1;

    void onConnected();

    void onConnectionSuspended(int i);
}
