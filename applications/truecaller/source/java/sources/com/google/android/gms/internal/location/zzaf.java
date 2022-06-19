package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcelable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequest$Builder;
import com.google.android.gms.location.zzal;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzaf.class */
public final class zzaf implements GeofencingApi {
    private final PendingResult<Status> zza(GoogleApiClient googleApiClient, zzal zzalVar) {
        return googleApiClient.mo38956i(new zzah(this, googleApiClient, zzalVar));
    }

    public final PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        return googleApiClient.mo38956i(new zzag(this, googleApiClient, geofencingRequest, pendingIntent));
    }

    @Deprecated
    public final PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, List<Geofence> list, PendingIntent pendingIntent) {
        GeofencingRequest$Builder geofencingRequest$Builder = new GeofencingRequest$Builder();
        if (list != null && !list.isEmpty()) {
            for (Geofence geofence : list) {
                if (geofence != null) {
                    Preconditions.m38897k(geofence, "geofence can't be null.");
                    Preconditions.m38906b(geofence instanceof zzbh, "Geofence must be created using Geofence.Builder.");
                    geofencingRequest$Builder.f6226a.add((zzbh) geofence);
                }
            }
        }
        geofencingRequest$Builder.f6227b = 5;
        Preconditions.m38906b(!geofencingRequest$Builder.f6226a.isEmpty(), "No geofence has been added to this request.");
        return addGeofences(googleApiClient, new GeofencingRequest(geofencingRequest$Builder.f6226a, geofencingRequest$Builder.f6227b, geofencingRequest$Builder.f6228c), pendingIntent);
    }

    public final PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        Parcelable.Creator creator = zzal.CREATOR;
        Preconditions.m38897k(pendingIntent, "PendingIntent can not be null.");
        return zza(googleApiClient, new zzal((List) null, pendingIntent, ""));
    }

    public final PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, List<String> list) {
        Parcelable.Creator creator = zzal.CREATOR;
        Preconditions.m38897k(list, "geofence can't be null.");
        Preconditions.m38906b(!list.isEmpty(), "Geofences must contains at least one id.");
        return zza(googleApiClient, new zzal(list, (PendingIntent) null, ""));
    }
}
