package com.iab.omid.library.mopub.adsession;

import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16382d;
import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSessionConfiguration.class */
public class AdSessionConfiguration {
    private final EnumC16354e creativeType;
    private final EnumC16357h impressionOwner;
    private final EnumC16356g impressionType;
    private final boolean isolateVerificationScripts;
    private final EnumC16357h mediaEventsOwner;

    private AdSessionConfiguration(EnumC16354e enumC16354e, EnumC16356g enumC16356g, EnumC16357h enumC16357h, EnumC16357h enumC16357h2, boolean z) {
        this.creativeType = enumC16354e;
        this.impressionType = enumC16356g;
        this.impressionOwner = enumC16357h;
        if (enumC16357h2 == null) {
            this.mediaEventsOwner = EnumC16357h.NONE;
        } else {
            this.mediaEventsOwner = enumC16357h2;
        }
        this.isolateVerificationScripts = z;
    }

    public static AdSessionConfiguration createAdSessionConfiguration(EnumC16354e enumC16354e, EnumC16356g enumC16356g, EnumC16357h enumC16357h, EnumC16357h enumC16357h2, boolean z) {
        C16382d.m7325a(enumC16354e, "CreativeType is null");
        C16382d.m7325a(enumC16356g, "ImpressionType is null");
        C16382d.m7325a(enumC16357h, "Impression owner is null");
        if (enumC16357h != EnumC16357h.NONE) {
            if (enumC16354e == EnumC16354e.DEFINED_BY_JAVASCRIPT && enumC16357h == EnumC16357h.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (enumC16356g != EnumC16356g.DEFINED_BY_JAVASCRIPT || enumC16357h != EnumC16357h.NATIVE) {
                return new AdSessionConfiguration(enumC16354e, enumC16356g, enumC16357h, enumC16357h2, z);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public boolean isNativeImpressionOwner() {
        return EnumC16357h.NATIVE == this.impressionOwner;
    }

    public boolean isNativeMediaEventsOwner() {
        return EnumC16357h.NATIVE == this.mediaEventsOwner;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        C16379b.m7332a(jSONObject, "impressionOwner", this.impressionOwner);
        C16379b.m7332a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C16379b.m7332a(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.creativeType);
        C16379b.m7332a(jSONObject, "impressionType", this.impressionType);
        C16379b.m7332a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
