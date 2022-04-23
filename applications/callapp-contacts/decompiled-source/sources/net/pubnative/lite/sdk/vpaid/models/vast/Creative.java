package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Creative.class */
public class Creative {
    @Tag
    private CompanionAds companionAds;
    @Attribute
    private String id;
    @Tag
    private Linear linear;
    @Attribute
    private String sequence;

    public CompanionAds getCompanionAds() {
        return this.companionAds;
    }

    public String getId() {
        return this.id;
    }

    public Linear getLinear() {
        return this.linear;
    }

    public String getSequence() {
        return this.sequence;
    }
}
