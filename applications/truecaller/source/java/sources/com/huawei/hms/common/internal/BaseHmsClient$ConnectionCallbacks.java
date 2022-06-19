package com.huawei.hms.common.internal;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks.class */
public interface BaseHmsClient$ConnectionCallbacks {
    public static final int CAUSE_API_CLIENT_EXPIRED = 3;
    public static final int CAUSE_NETWORK_LOST = 2;
    public static final int CAUSE_SERVICE_DISCONNECTED = 1;

    void onConnected();

    void onConnectionSuspended(int i);
}
