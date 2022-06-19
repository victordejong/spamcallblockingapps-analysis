package com.google.android.gms.ads.nonagon.transaction.omid;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/transaction/omid/OmidSettings.class */
public class OmidSettings {
    private final JSONObject zzhlj;

    public OmidSettings(JSONObject jSONObject) {
        this.zzhlj = jSONObject;
    }

    public OmidMediaType getMediaType() {
        int optInt = this.zzhlj.optInt("media_type", -1);
        return optInt != 0 ? optInt != 1 ? OmidMediaType.UNKNOWN : OmidMediaType.VIDEO : OmidMediaType.DISPLAY;
    }

    public String getVideoEventsOwner() {
        if (zza.zzhli[getMediaType().ordinal()] != 1) {
            return "javascript";
        }
        return null;
    }
}
