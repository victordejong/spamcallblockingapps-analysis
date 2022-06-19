package com.amazon.device.ads;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/StateProperty.class */
class StateProperty extends MraidStringProperty {

    /* renamed from: i */
    MraidStateType f11934i;

    public StateProperty(MraidStateType mraidStateType) {
        super(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
        this.f11934i = mraidStateType;
    }

    @Override // com.amazon.device.ads.MraidStringProperty
    /* renamed from: a */
    final String mo38742a() {
        return this.f11934i.toString();
    }
}
