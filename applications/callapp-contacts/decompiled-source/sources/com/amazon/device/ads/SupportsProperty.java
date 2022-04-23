package com.amazon.device.ads;

import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/SupportsProperty.class */
class SupportsProperty extends MraidDictionaryProperty {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SupportsProperty() {
        super("supports");
        try {
            this.f6518a.put(MRAIDNativeFeature.TEL, SDKUtilities.a());
            this.f6518a.put(MRAIDNativeFeature.SMS, false);
            this.f6518a.put(MRAIDNativeFeature.CALENDAR, false);
            this.f6518a.put(MRAIDNativeFeature.STORE_PICTURE, false);
            this.f6518a.put(MRAIDNativeFeature.INLINE_VIDEO, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
