package com.iab.omid.library.verizonmedia.adsession;

import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import com.mopub.mobileads.VastResourceXmlManager;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration.class */
public class AdSessionConfiguration {
    private final EnumC16486e creativeType;
    private final EnumC16489h impressionOwner;
    private final EnumC16488g impressionType;
    private final boolean isolateVerificationScripts;
    private final EnumC16489h mediaEventsOwner;

    private AdSessionConfiguration(EnumC16486e enumC16486e, EnumC16488g enumC16488g, EnumC16489h enumC16489h, EnumC16489h enumC16489h2, boolean z) {
        this.creativeType = enumC16486e;
        this.impressionType = enumC16488g;
        this.impressionOwner = enumC16489h;
        if (enumC16489h2 == null) {
            this.mediaEventsOwner = EnumC16489h.NONE;
        } else {
            this.mediaEventsOwner = enumC16489h2;
        }
        this.isolateVerificationScripts = z;
    }

    public static AdSessionConfiguration createAdSessionConfiguration(EnumC16486e enumC16486e, EnumC16488g enumC16488g, EnumC16489h enumC16489h, EnumC16489h enumC16489h2, boolean z) {
        C16514d.m7102a(enumC16486e, "CreativeType is null");
        C16514d.m7102a(enumC16488g, "ImpressionType is null");
        C16514d.m7102a(enumC16489h, "Impression owner is null");
        if (enumC16489h != EnumC16489h.NONE) {
            if (enumC16486e == EnumC16486e.DEFINED_BY_JAVASCRIPT && enumC16489h == EnumC16489h.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (enumC16488g != EnumC16488g.DEFINED_BY_JAVASCRIPT || enumC16489h != EnumC16489h.NATIVE) {
                return new AdSessionConfiguration(enumC16486e, enumC16488g, enumC16489h, enumC16489h2, z);
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public boolean isNativeImpressionOwner() {
        return EnumC16489h.NATIVE == this.impressionOwner;
    }

    public boolean isNativeMediaEventsOwner() {
        return EnumC16489h.NATIVE == this.mediaEventsOwner;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        C16511b.m7109a(jSONObject, "impressionOwner", this.impressionOwner);
        C16511b.m7109a(jSONObject, "mediaEventsOwner", this.mediaEventsOwner);
        C16511b.m7109a(jSONObject, VastResourceXmlManager.CREATIVE_TYPE, this.creativeType);
        C16511b.m7109a(jSONObject, "impressionType", this.impressionType);
        C16511b.m7109a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.isolateVerificationScripts));
        return jSONObject;
    }
}
