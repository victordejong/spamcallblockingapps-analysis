package com.verizon.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.verizon.ads.EnvironmentInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/GoogleAdvertisingIdInfo.class */
public final class GoogleAdvertisingIdInfo implements EnvironmentInfo.AdvertisingIdInfo {

    /* renamed from: a  reason: collision with root package name */
    private final AdvertisingIdClient.Info f35303a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleAdvertisingIdInfo(AdvertisingIdClient.Info info) {
        this.f35303a = info;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final String getId() {
        AdvertisingIdClient.Info info = this.f35303a;
        if (info != null) {
            return info.getId();
        }
        return null;
    }

    @Override // com.verizon.ads.EnvironmentInfo.AdvertisingIdInfo
    public final boolean isLimitAdTrackingEnabled() {
        AdvertisingIdClient.Info info = this.f35303a;
        return info != null && info.isLimitAdTrackingEnabled();
    }

    public final String toString() {
        return "GoogleAdvertisingIdInfo{id='" + getId() + "', limitAdTracking=" + isLimitAdTrackingEnabled() + '}';
    }
}
