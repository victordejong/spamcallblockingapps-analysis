package com.amazon.device.ads;

import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SupportsProperty.class */
class SupportsProperty extends MraidDictionaryProperty {
    public SupportsProperty() {
        super("supports");
        try {
            this.f11920a.put(MRAIDNativeFeature.TEL, SDKUtilities.m38745a());
            this.f11920a.put(MRAIDNativeFeature.SMS, false);
            this.f11920a.put(MRAIDNativeFeature.CALENDAR, false);
            this.f11920a.put(MRAIDNativeFeature.STORE_PICTURE, false);
            this.f11920a.put(MRAIDNativeFeature.INLINE_VIDEO, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
