package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Vast.class */
public class Vast {
    @Tag

    /* renamed from: ad */
    private C20687Ad f67089ad;
    @Tag
    private Status status;
    @Attribute
    private String version;

    public C20687Ad getAd() {
        return this.f67089ad;
    }

    public Status getStatus() {
        return this.status;
    }

    public String getVersion() {
        return this.version;
    }
}
