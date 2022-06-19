package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.p127d.C2614b;
import com.iab.omid.library.mopub.p127d.C2618e;
import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSessionConfiguration.class */
public class AdSessionConfiguration {
    private final CreativeType creativeType;
    private final Owner impressionOwner;
    private final ImpressionType impressionType;
    private final boolean isolateVerificationScripts;
    private final Owner mediaEventsOwner;

    private AdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        this.creativeType = creativeType;
        this.impressionType = impressionType;
        this.impressionOwner = owner;
        if (owner2 == null) {
            this.mediaEventsOwner = Owner.NONE;
        } else {
            this.mediaEventsOwner = owner2;
        }
        this.isolateVerificationScripts = z;
    }

    public static AdSessionConfiguration createAdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        C2618e.m36398a(creativeType, "CreativeType is null");
        C2618e.m36398a(impressionType, "ImpressionType is null");
        C2618e.m36398a(owner, "Impression owner is null");
        C2618e.m36400a(owner, creativeType, impressionType);
        return new AdSessionConfiguration(creativeType, impressionType, owner, owner2, z);
    }

    public boolean isNativeImpressionOwner() {
        return Owner.NATIVE == this.impressionOwner;
    }

    public boolean isNativeMediaEventsOwner() {
        return Owner.NATIVE == this.mediaEventsOwner;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        C2614b.m36413a(jSONObject, "impressionOwner", this.impressionOwner);
        C2614b.m36413a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C2614b.m36413a(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.creativeType);
        C2614b.m36413a(jSONObject, "impressionType", this.impressionType);
        C2614b.m36413a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
