package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionApi;
import com.google.android.gms.location.ActivityTransitionRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zze.class */
public final class zze implements ActivityRecognitionApi {
    public final PendingResult<Status> removeActivityUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.mo38956i(new zzg(this, googleApiClient, pendingIntent));
    }

    public final PendingResult<Status> requestActivityUpdates(GoogleApiClient googleApiClient, long j, PendingIntent pendingIntent) {
        return googleApiClient.mo38956i(new zzf(this, googleApiClient, j, pendingIntent));
    }

    public final PendingResult<Status> zza(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.mo38956i(new zzi(this, googleApiClient, pendingIntent));
    }

    public final PendingResult<Status> zza(GoogleApiClient googleApiClient, ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent) {
        return googleApiClient.mo38956i(new zzh(this, googleApiClient, activityTransitionRequest, pendingIntent));
    }
}
