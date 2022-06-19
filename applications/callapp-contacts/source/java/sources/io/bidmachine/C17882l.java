package io.bidmachine;

import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.DeviceInfo;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.unified.UnifiedAdRequestParams;
/* renamed from: io.bidmachine.l */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/l.class */
public class C17882l implements UnifiedAdRequestParams {
    private final DataRestrictions dataRestrictions;
    private final DeviceInfo deviceInfo;
    private final TargetingInfo targetingInfo;

    public C17882l(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        this.targetingInfo = new TargetingInfoImpl(dataRestrictions, targetingParams);
        this.deviceInfo = new DeviceInfoImpl(dataRestrictions);
        this.dataRestrictions = dataRestrictions;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public AdRequest getAdRequest() {
        return null;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public DataRestrictions getDataRestrictions() {
        return this.dataRestrictions;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public TargetingInfo getTargetingParams() {
        return this.targetingInfo;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public boolean isTestMode() {
        return C17842d.get().isTestMode();
    }
}
