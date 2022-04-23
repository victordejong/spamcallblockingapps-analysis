package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/StaticResource.class */
public class StaticResource {
    @Attribute
    private String creativeType;
    @Text
    private String text;

    public String getCreativeType() {
        return this.creativeType;
    }

    public String getText() {
        return this.text;
    }
}
