package io.bidmachine;

import android.location.Location;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.utils.Gender;
import java.util.Calendar;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/TargetingInfoImpl.class */
class TargetingInfoImpl implements TargetingInfo {
    private DataRestrictions dataRestrictions;
    private TargetingParams targetingParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TargetingInfoImpl(DataRestrictions dataRestrictions, TargetingParams targetingParams) {
        this.dataRestrictions = dataRestrictions;
        this.targetingParams = targetingParams;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String getCity() {
        if (this.dataRestrictions.canSendGeoPosition()) {
            return this.targetingParams.getCity();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String getCountry() {
        if (this.dataRestrictions.canSendGeoPosition()) {
            return this.targetingParams.getCountry();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public Location getDeviceLocation() {
        if (this.dataRestrictions.canSendGeoPosition()) {
            return this.targetingParams.getDeviceLocation();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public Gender getGender() {
        if (this.dataRestrictions.canSendUserInfo()) {
            return this.targetingParams.getGender();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String[] getKeywords() {
        if (this.dataRestrictions.canSendUserInfo()) {
            return this.targetingParams.getKeywords();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String getStoreUrl() {
        return this.targetingParams.getStoreUrl();
    }

    @Override // io.bidmachine.models.TargetingInfo
    public Integer getUserAge() {
        Integer userBirthdayYear = getUserBirthdayYear();
        if (userBirthdayYear != null) {
            return Integer.valueOf(Calendar.getInstance().get(1) - userBirthdayYear.intValue());
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public Integer getUserBirthdayYear() {
        if (this.dataRestrictions.canSendUserInfo()) {
            return this.targetingParams.getBirthdayYear();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String getUserId() {
        if (this.dataRestrictions.canSendUserInfo()) {
            return this.targetingParams.getUserId();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public String getZip() {
        if (this.dataRestrictions.canSendGeoPosition()) {
            return this.targetingParams.getZip();
        }
        return null;
    }

    @Override // io.bidmachine.models.TargetingInfo
    public Boolean isPaid() {
        return this.targetingParams.getPaid();
    }
}
