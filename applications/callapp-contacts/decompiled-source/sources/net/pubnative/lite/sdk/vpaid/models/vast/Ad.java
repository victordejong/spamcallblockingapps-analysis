package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Ad.class */
public class Ad {
    @Attribute
    private String id;
    @Tag
    private InLine inLine;
    @Tag
    private Wrapper wrapper;

    public String getId() {
        return this.id;
    }

    public InLine getInLine() {
        return this.inLine;
    }

    public Wrapper getWrapper() {
        return this.wrapper;
    }
}
