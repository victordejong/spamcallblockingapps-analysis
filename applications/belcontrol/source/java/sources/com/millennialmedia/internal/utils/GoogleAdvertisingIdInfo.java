package com.millennialmedia.internal.utils;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/GoogleAdvertisingIdInfo.class */
public final class GoogleAdvertisingIdInfo implements AdvertisingIdInfo {
    private AdvertisingIdClient.Info info;

    public GoogleAdvertisingIdInfo(AdvertisingIdClient.Info info) {
        this.info = info;
    }

    @Override // com.millennialmedia.internal.utils.AdvertisingIdInfo
    public String getId() {
        AdvertisingIdClient.Info info = this.info;
        return info != null ? info.getId() : null;
    }

    @Override // com.millennialmedia.internal.utils.AdvertisingIdInfo
    public boolean isLimitAdTrackingEnabled() {
        AdvertisingIdClient.Info info = this.info;
        return info != null && info.isLimitAdTrackingEnabled();
    }

    public String toString() {
        return "GoogleAdvertisingIdInfo{id='" + getId() + "', limitAdTracking=" + isLimitAdTrackingEnabled() + '}';
    }
}
