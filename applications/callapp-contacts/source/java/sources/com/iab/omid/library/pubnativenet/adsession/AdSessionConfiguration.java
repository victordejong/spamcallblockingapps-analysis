package com.iab.omid.library.pubnativenet.adsession;

import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration.class */
public class AdSessionConfiguration {
    private final EnumC16421e creativeType;
    private final EnumC16424h impressionOwner;
    private final EnumC16423g impressionType;
    private final boolean isolateVerificationScripts;
    private final EnumC16424h mediaEventsOwner;

    private AdSessionConfiguration(EnumC16421e enumC16421e, EnumC16423g enumC16423g, EnumC16424h enumC16424h, EnumC16424h enumC16424h2, boolean z) {
        this.creativeType = enumC16421e;
        this.impressionType = enumC16423g;
        this.impressionOwner = enumC16424h;
        if (enumC16424h2 == null) {
            this.mediaEventsOwner = EnumC16424h.NONE;
        } else {
            this.mediaEventsOwner = enumC16424h2;
        }
        this.isolateVerificationScripts = z;
    }

    public static AdSessionConfiguration createAdSessionConfiguration(EnumC16421e enumC16421e, EnumC16423g enumC16423g, EnumC16424h enumC16424h, EnumC16424h enumC16424h2, boolean z) {
        C16448d.m7223a(enumC16421e, "CreativeType is null");
        C16448d.m7223a(enumC16423g, "ImpressionType is null");
        C16448d.m7223a(enumC16424h, "Impression owner is null");
        if (enumC16424h != EnumC16424h.NONE) {
            if (enumC16421e == EnumC16421e.DEFINED_BY_JAVASCRIPT && enumC16424h == EnumC16424h.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (enumC16423g != EnumC16423g.DEFINED_BY_JAVASCRIPT || enumC16424h != EnumC16424h.NATIVE) {
                return new AdSessionConfiguration(enumC16421e, enumC16423g, enumC16424h, enumC16424h2, z);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public boolean isNativeImpressionOwner() {
        return EnumC16424h.NATIVE == this.impressionOwner;
    }

    public boolean isNativeMediaEventsOwner() {
        return EnumC16424h.NATIVE == this.mediaEventsOwner;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        C16445b.m7230a(jSONObject, "impressionOwner", this.impressionOwner);
        C16445b.m7230a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C16445b.m7230a(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.creativeType);
        C16445b.m7230a(jSONObject, "impressionType", this.impressionType);
        C16445b.m7230a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
