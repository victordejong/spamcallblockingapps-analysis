package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdCallback.class */
public interface DTBAdCallback {
    void onFailure(AdError adError);

    void onSuccess(DTBAdResponse dTBAdResponse);
}
