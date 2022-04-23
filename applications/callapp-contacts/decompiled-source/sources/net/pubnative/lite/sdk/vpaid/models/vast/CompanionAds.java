package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/CompanionAds.class */
public class CompanionAds {
    @Tag("Companion")
    private List<Companion> companionList;

    public List<Companion> getCompanionList() {
        return this.companionList;
    }
}
