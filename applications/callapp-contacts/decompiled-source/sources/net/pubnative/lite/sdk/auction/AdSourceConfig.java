package net.pubnative.lite.sdk.auction;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AdSourceConfig.class */
public class AdSourceConfig {
    private double eCPM;
    private boolean enabled;
    private String name;
    private String vastTagUrl;
    private String zoneId;

    public double getECPM() {
        return this.eCPM;
    }

    public String getName() {
        return this.name;
    }

    public String getVastTagUrl() {
        return this.vastTagUrl;
    }

    public String getZoneId() {
        return this.zoneId;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setECPM(double d2) {
        this.eCPM = d2;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setVastTagUrl(String str) {
        this.vastTagUrl = str;
    }

    public void setZoneId(String str) {
        this.zoneId = str;
    }
}
