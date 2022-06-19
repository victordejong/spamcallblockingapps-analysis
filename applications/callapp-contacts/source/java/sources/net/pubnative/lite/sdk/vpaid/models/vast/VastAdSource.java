package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/VastAdSource.class */
public interface VastAdSource {
    AdSystem getAdSystem();

    Creatives getCreatives();

    Error getError();

    List<Extension> getExtensions();

    List<Impression> getImpressionList();
}
