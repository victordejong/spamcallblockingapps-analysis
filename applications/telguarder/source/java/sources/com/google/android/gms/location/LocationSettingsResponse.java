package com.google.android.gms.location;

import com.google.android.gms.common.api.Response;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsResponse.class */
public class LocationSettingsResponse extends Response<LocationSettingsResult> {
    public LocationSettingsResponse() {
    }

    public LocationSettingsResponse(LocationSettingsResult locationSettingsResult) {
        super(locationSettingsResult);
    }

    public LocationSettingsStates getLocationSettingsStates() {
        return getResult().getLocationSettingsStates();
    }
}
