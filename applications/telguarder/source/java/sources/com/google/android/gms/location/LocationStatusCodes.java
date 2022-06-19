package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationStatusCodes.class */
public final class LocationStatusCodes {
    public static final int ERROR = 1;
    public static final int GEOFENCE_NOT_AVAILABLE = 1000;
    public static final int GEOFENCE_TOO_MANY_GEOFENCES = 1001;
    public static final int GEOFENCE_TOO_MANY_PENDING_INTENTS = 1002;
    public static final int SUCCESS = 0;

    private LocationStatusCodes() {
    }

    public static int zza(int i) {
        if ((i < 0 || i > 1) && (i < 1000 || i >= 1006)) {
            return 1;
        }
        return i;
    }

    public static Status zzb(int i) {
        if (i == 1) {
            i = 13;
        }
        return new Status(i);
    }
}
