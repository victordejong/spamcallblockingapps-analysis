package net.pubnative.lite.sdk.vpaid.models.vast;

import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Text;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/MediaFile.class */
public class MediaFile {
    @Attribute
    private String apiFramework;
    @Attribute
    private int bitrate;
    @Attribute
    private String delivery;
    @Attribute
    private int height;
    @Attribute
    private String id;
    @Attribute
    private boolean maintainAspectRatio;
    @Attribute
    private boolean scalable;
    @Text
    private String text;
    @Attribute
    private String type;
    @Attribute
    private int width;

    public String getApiFramework() {
        return this.apiFramework;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public String getDelivery() {
        return this.delivery;
    }

    public int getHeight() {
        return this.height;
    }

    public String getId() {
        return this.id;
    }

    public String getText() {
        return this.text;
    }

    public String getType() {
        return this.type;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isMaintainAspectRatio() {
        return this.maintainAspectRatio;
    }

    public boolean isScalable() {
        return this.scalable;
    }
}
