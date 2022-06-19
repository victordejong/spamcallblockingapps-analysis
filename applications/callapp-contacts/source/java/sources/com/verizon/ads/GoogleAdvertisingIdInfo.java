package com.verizon.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.verizon.ads.EnvironmentInfo;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/GoogleAdvertisingIdInfo.class */
public final class GoogleAdvertisingIdInfo implements EnvironmentInfo.AdvertisingIdInfo {

    /* renamed from: a */
    private final AdvertisingIdClient.Info f61196a;

    public GoogleAdvertisingIdInfo(AdvertisingIdClient.Info info) {
        this.f61196a = info;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final String getId() {
        AdvertisingIdClient.Info info = this.f61196a;
        if (info != null) {
            return info.getId();
        }
        return null;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final boolean isLimitAdTrackingEnabled() {
        AdvertisingIdClient.Info info = this.f61196a;
        return info != null && info.isLimitAdTrackingEnabled();
    }

    public final String toString() {
        return "GoogleAdvertisingIdInfo{id='" + getId() + "', limitAdTracking=" + isLimitAdTrackingEnabled() + '}';
    }
}
