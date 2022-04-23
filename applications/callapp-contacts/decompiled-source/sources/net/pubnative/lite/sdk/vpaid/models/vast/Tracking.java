package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Tracking.class */
public class Tracking {
    @Attribute
    private String event;
    @Attribute
    private String offset;
    @Text
    private String text;

    public String getEvent() {
        return this.event;
    }

    public String getOffset() {
        return this.offset;
    }

    public String getText() {
        return this.text;
    }
}
