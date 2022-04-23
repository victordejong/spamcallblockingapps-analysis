package com.aotter.net.trek.model;

import androidx.core.app.NotificationCompatJellybean;
import com.aotter.net.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/ImageSrc.class */
public class ImageSrc implements Serializable {
    @SerializedName("height")
    public int height;
    @SerializedName(NotificationCompatJellybean.KEY_LABEL)
    public String label;
    @SerializedName("src")
    public String src;
    @SerializedName("width")
    public int width;

    public int getHeight() {
        return this.height;
    }

    public String getLabel() {
        return this.label;
    }

    public String getSrc() {
        return this.src;
    }

    public int getWidth() {
        return this.width;
    }
}
