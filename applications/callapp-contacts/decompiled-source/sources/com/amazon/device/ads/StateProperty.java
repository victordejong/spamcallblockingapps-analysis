package com.amazon.device.ads;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/StateProperty.class */
class StateProperty extends MraidStringProperty {
    MraidStateType i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateProperty(MraidStateType mraidStateType) {
        super(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
        this.i = mraidStateType;
    }

    @Override // com.amazon.device.ads.MraidStringProperty
    final String a() {
        return this.i.toString();
    }
}
