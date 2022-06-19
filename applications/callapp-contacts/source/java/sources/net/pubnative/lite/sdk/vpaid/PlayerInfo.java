package net.pubnative.lite.sdk.vpaid;

import android.text.TextUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/PlayerInfo.class */
public class PlayerInfo {
    private String mMessage;
    private boolean mNoAdsFound;

    public PlayerInfo(String str) {
        this.mMessage = TextUtils.isEmpty(str) ? "Unknown error" : str;
    }

    public String getMessage() {
        return this.mMessage;
    }

    public boolean isNoAdsFound() {
        return this.mNoAdsFound;
    }

    public void setNoAdsFound() {
        this.mNoAdsFound = true;
    }

    public String toString() {
        return "PlayerInfo{message='" + this.mMessage + "'}";
    }
}
