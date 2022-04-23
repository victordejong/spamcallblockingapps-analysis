package io.bidmachine;

import android.content.Context;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.DeviceInfo;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/DeviceInfoImpl.class */
class DeviceInfoImpl implements DeviceInfo {
    private final DataRestrictions dataRestrictions;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceInfoImpl(DataRestrictions dataRestrictions) {
        this.dataRestrictions = dataRestrictions;
    }

    @Override // io.bidmachine.models.DeviceInfo
    public String getHttpAgent(Context context) {
        if (this.dataRestrictions.canSendDeviceInfo()) {
            return DeviceInfo.obtain(context).httpAgent;
        }
        return null;
    }

    @Override // io.bidmachine.models.DeviceInfo
    public String getIfa(Context context) {
        return c.getAdvertisingId(context, !this.dataRestrictions.canSendIfa());
    }

    @Override // io.bidmachine.models.DeviceInfo
    public boolean isLimitAdTrackingEnabled() {
        return c.isLimitAdTrackingEnabled();
    }
}
