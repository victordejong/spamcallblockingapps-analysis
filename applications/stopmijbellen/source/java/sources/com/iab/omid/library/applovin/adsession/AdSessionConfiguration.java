package com.iab.omid.library.applovin.adsession;

import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1950e;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/AdSessionConfiguration.class */
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
        C1950e.m4083a(creativeType, "CreativeType is null");
        C1950e.m4083a(impressionType, "ImpressionType is null");
        C1950e.m4083a(owner, "Impression owner is null");
        C1950e.m4085a(owner, creativeType, impressionType);
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
        C1946b.m4099a(jSONObject, "impressionOwner", this.impressionOwner);
        C1946b.m4099a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C1946b.m4099a(jSONObject, "creativeType", this.creativeType);
        C1946b.m4099a(jSONObject, "impressionType", this.impressionType);
        C1946b.m4099a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
