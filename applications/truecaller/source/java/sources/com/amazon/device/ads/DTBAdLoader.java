package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdLoader.class */
public interface DTBAdLoader {
    public static final String A9_BID_ID_KEY = "amzn_b";
    public static final String A9_HOST_KEY = "amzn_h";
    public static final String A9_PRICE_POINTS_KEY = "amznslots";
    public static final String A9_VID_KEY = "amzn_vid";

    String getSlotGroupName();

    void loadAd(DTBAdCallback dTBAdCallback);

    void loadSmartBanner(DTBAdCallback dTBAdCallback) throws DTBLoadException;

    void pauseAutoRefresh();

    void putCustomTarget(String str, String str2);

    void resumeAutoRefresh();

    void setAutoRefresh();

    void setAutoRefresh(int i);

    void setSizes(DTBAdSize... dTBAdSizeArr) throws IllegalArgumentException;

    void setSlotGroup(String str);

    void stop();
}
