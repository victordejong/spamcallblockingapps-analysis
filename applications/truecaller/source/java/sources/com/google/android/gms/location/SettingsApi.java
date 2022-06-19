package com.google.android.gms.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/SettingsApi.class */
public interface SettingsApi {
    PendingResult<LocationSettingsResult> checkLocationSettings(GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest);
}
