package com.iab.omid.library.pubmatic.adsession;

import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1774e;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/AdSessionConfiguration.class */
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
        C1774e.m1222a(creativeType, "CreativeType is null");
        C1774e.m1222a(impressionType, "ImpressionType is null");
        C1774e.m1222a(owner, "Impression owner is null");
        C1774e.m1224a(owner, creativeType, impressionType);
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
        C1770b.m1237a(jSONObject, "impressionOwner", this.impressionOwner);
        C1770b.m1237a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C1770b.m1237a(jSONObject, "creativeType", this.creativeType);
        C1770b.m1237a(jSONObject, "impressionType", this.impressionType);
        C1770b.m1237a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
