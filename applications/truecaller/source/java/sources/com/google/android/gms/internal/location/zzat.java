package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzat.class */
public final class zzat extends zzv {
    private final ListenerHolder<LocationCallback> zzda;

    public zzat(ListenerHolder<LocationCallback> listenerHolder) {
        this.zzda = listenerHolder;
    }

    public final void onLocationAvailability(LocationAvailability locationAvailability) {
        this.zzda.m39022b(new zzav(this, locationAvailability));
    }

    public final void onLocationResult(LocationResult locationResult) {
        this.zzda.m39022b(new zzau(this, locationResult));
    }

    public final void release() {
        synchronized (this) {
            this.zzda.m39023a();
        }
    }
}
