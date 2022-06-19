package com.google.android.gms.ads.nonagon.transaction.omid;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nonagon/transaction/omid/OmidSettings.class */
public class OmidSettings {
    private final JSONObject zzhok;

    public OmidSettings(JSONObject jSONObject) {
        this.zzhok = jSONObject;
    }

    public OmidMediaType getMediaType() {
        int optInt = this.zzhok.optInt("media_type", -1);
        return optInt != 0 ? optInt != 1 ? OmidMediaType.UNKNOWN : OmidMediaType.VIDEO : OmidMediaType.DISPLAY;
    }

    public String getVideoEventsOwner() {
        if (zza.zzhoj[getMediaType().ordinal()] != 1) {
            return "javascript";
        }
        return null;
    }
}
