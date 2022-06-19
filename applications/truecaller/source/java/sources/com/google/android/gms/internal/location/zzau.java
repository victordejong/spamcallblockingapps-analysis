package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzau.class */
public final class zzau implements ListenerHolder.Notifier<LocationCallback> {
    private final /* synthetic */ LocationResult zzdb;

    public zzau(zzat zzatVar, LocationResult locationResult) {
        this.zzdb = locationResult;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(LocationCallback locationCallback) {
        locationCallback.onLocationResult(this.zzdb);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
