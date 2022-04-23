package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.d.b;
import com.iab.omid.library.mopub.d.d;
import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSessionConfiguration.class */
public class AdSessionConfiguration {
    private final e creativeType;
    private final h impressionOwner;
    private final g impressionType;
    private final boolean isolateVerificationScripts;
    private final h mediaEventsOwner;

    private AdSessionConfiguration(e eVar, g gVar, h hVar, h hVar2, boolean z) {
        this.creativeType = eVar;
        this.impressionType = gVar;
        this.impressionOwner = hVar;
        if (hVar2 == null) {
            this.mediaEventsOwner = h.NONE;
        } else {
            this.mediaEventsOwner = hVar2;
        }
        this.isolateVerificationScripts = z;
    }

    public static AdSessionConfiguration createAdSessionConfiguration(e eVar, g gVar, h hVar, h hVar2, boolean z) {
        d.a(eVar, "CreativeType is null");
        d.a(gVar, "ImpressionType is null");
        d.a(hVar, "Impression owner is null");
        if (hVar == h.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        } else if (eVar == e.DEFINED_BY_JAVASCRIPT && hVar == h.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        } else if (gVar != g.DEFINED_BY_JAVASCRIPT || hVar != h.NATIVE) {
            return new AdSessionConfiguration(eVar, gVar, hVar, hVar2, z);
        } else {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    public boolean isNativeImpressionOwner() {
        return h.NATIVE == this.impressionOwner;
    }

    public boolean isNativeMediaEventsOwner() {
        return h.NATIVE == this.mediaEventsOwner;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "impressionOwner", this.impressionOwner);
        b.a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        b.a(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.creativeType);
        b.a(jSONObject, "impressionType", this.impressionType);
        b.a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
