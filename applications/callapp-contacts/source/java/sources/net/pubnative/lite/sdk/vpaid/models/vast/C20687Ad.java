package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* renamed from: net.pubnative.lite.sdk.vpaid.models.vast.Ad */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Ad.class */
public class C20687Ad {
    @Attribute

    /* renamed from: id */
    private String f67085id;
    @Tag
    private InLine inLine;
    @Tag
    private Wrapper wrapper;

    public String getId() {
        return this.f67085id;
    }

    public InLine getInLine() {
        return this.inLine;
    }

    public Wrapper getWrapper() {
        return this.wrapper;
    }
}
