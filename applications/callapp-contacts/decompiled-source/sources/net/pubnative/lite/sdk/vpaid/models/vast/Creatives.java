package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Creatives.class */
public class Creatives {
    @Tag("Creative")
    private List<Creative> creativeList;

    public List<Creative> getCreativeList() {
        return this.creativeList;
    }
}
