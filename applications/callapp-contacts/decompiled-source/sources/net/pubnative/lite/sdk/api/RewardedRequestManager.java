package net.pubnative.lite.sdk.api;

import net.pubnative.lite.sdk.models.AdSize;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/api/RewardedRequestManager.class */
public class RewardedRequestManager extends RequestManager {
    @Override // net.pubnative.lite.sdk.api.RequestManager
    public AdSize getAdSize() {
        return AdSize.SIZE_INTERSTITIAL;
    }

    @Override // net.pubnative.lite.sdk.api.RequestManager
    public boolean isRewarded() {
        return true;
    }
}
