package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/VideoClicks.class */
public class VideoClicks {
    @Tag("ClickThrough")
    private ClickThrough clickThrough;
    @Tag("ClickTracking")
    private List<ClickTracking> clickTrackingList;

    public ClickThrough getClickThrough() {
        return this.clickThrough;
    }

    public List<ClickTracking> getClickTrackingList() {
        return this.clickTrackingList;
    }
}
