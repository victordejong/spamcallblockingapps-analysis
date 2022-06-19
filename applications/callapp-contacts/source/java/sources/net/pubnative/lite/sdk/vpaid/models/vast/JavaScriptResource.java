package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/JavaScriptResource.class */
public class JavaScriptResource {
    @Attribute
    private String apiFramework;
    @Attribute
    private boolean browserOptional;
    @Text
    private String text;

    public String getApiFramework() {
        return this.apiFramework;
    }

    public String getText() {
        return this.text;
    }

    public boolean isBrowserOptional() {
        return this.browserOptional;
    }
}
