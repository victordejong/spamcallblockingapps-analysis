package net.pubnative.lite.sdk.models;

import com.verizon.ads.VASAds;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IntegrationType.class */
public enum IntegrationType {
    HEADER_BIDDING("hb"),
    IN_APP_BIDDING(VASAds.IAB_CONSENT_KEY),
    MEDIATION("m"),
    STANDALONE("s");
    
    private String code;

    IntegrationType(String str) {
        this.code = str;
    }

    public final String getCode() {
        return this.code;
    }
}
