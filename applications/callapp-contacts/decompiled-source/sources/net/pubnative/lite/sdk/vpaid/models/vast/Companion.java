package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Companion.class */
public class Companion {
    @Attribute
    private String apiFramework;
    @Tag
    private CompanionClickThrough companionClickThrough;
    @Tag
    private List<CompanionClickTracking> companionClickTracking;
    @Attribute
    private int expandedHeight;
    @Attribute
    private int expandedWidth;
    @Attribute
    private int height;
    @Attribute
    private String id;
    @Tag
    private StaticResource staticResource;
    @Tag
    private TrackingEvents trackingEvents;
    @Attribute
    private int width;

    public String getApiFramework() {
        return this.apiFramework;
    }

    public CompanionClickThrough getCompanionClickThrough() {
        return this.companionClickThrough;
    }

    public List<CompanionClickTracking> getCompanionClickTracking() {
        return this.companionClickTracking;
    }

    public int getExpandedHeight() {
        return this.expandedHeight;
    }

    public int getExpandedWidth() {
        return this.expandedWidth;
    }

    public int getHeight() {
        return this.height;
    }

    public String getId() {
        return this.id;
    }

    public StaticResource getStaticResource() {
        return this.staticResource;
    }

    public TrackingEvents getTrackingEvents() {
        return this.trackingEvents;
    }

    public int getWidth() {
        return this.width;
    }
}
