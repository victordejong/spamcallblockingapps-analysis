package net.pubnative.lite.sdk.vpaid.models.vpaid;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vpaid/CreativeParams.class */
public class CreativeParams {
    private String creativeData;
    private int desiredBitrate;
    private String environmentVars;
    private int height;
    private String viewMode;
    private int width;

    public CreativeParams(int i, int i2, String str, int i3) {
        this.width = i;
        this.height = i2;
        this.viewMode = "'" + str + "'";
        this.desiredBitrate = i3;
    }

    public String getCreativeData() {
        return this.creativeData;
    }

    public int getDesiredBitrate() {
        return this.desiredBitrate;
    }

    public String getEnvironmentVars() {
        return this.environmentVars;
    }

    public int getHeight() {
        return this.height;
    }

    public String getViewMode() {
        return this.viewMode;
    }

    public int getWidth() {
        return this.width;
    }

    public void setAdParameters(String str) {
        this.creativeData = str;
    }

    public void setEnvironmentVars(String str) {
        this.environmentVars = str;
    }
}
