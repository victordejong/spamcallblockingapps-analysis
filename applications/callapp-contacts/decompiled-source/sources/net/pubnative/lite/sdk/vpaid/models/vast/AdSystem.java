package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/AdSystem.class */
public class AdSystem {
    @Text
    private String text;
    @Attribute
    private String version;

    public String getText() {
        return this.text;
    }

    public String getVersion() {
        return this.version;
    }
}
