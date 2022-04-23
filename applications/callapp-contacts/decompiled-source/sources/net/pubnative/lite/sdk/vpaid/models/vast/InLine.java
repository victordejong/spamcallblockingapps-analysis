package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/InLine.class */
public class InLine implements VastAdSource {
    @Tag
    private AdSystem adSystem;
    @Tag
    private Creatives creatives;
    @Tag
    private Error error;
    @Tag("Extensions")
    private List<Extension> extensionList;
    @Tag("Impression")
    private List<Impression> impressionList;

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public AdSystem getAdSystem() {
        return this.adSystem;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public Creatives getCreatives() {
        return this.creatives;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public Error getError() {
        return this.error;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public List<Extension> getExtensions() {
        return this.extensionList;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public List<Impression> getImpressionList() {
        return this.impressionList;
    }
}
