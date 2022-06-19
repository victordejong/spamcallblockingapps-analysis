package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognition;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzj.class */
public abstract class zzj extends ActivityRecognition.zza<Status> {
    public zzj(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    public /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }
}
