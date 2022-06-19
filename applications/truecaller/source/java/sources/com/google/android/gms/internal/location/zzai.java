package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzai.class */
public abstract class zzai extends LocationServices.zza<Status> {
    public zzai(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    public /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }
}
