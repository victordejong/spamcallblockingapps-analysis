package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzav.class */
public final class zzav implements ListenerHolder.Notifier<LocationCallback> {
    private final /* synthetic */ LocationAvailability zzdc;

    public zzav(zzat zzatVar, LocationAvailability locationAvailability) {
        this.zzdc = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(LocationCallback locationCallback) {
        locationCallback.onLocationAvailability(this.zzdc);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
