package com.google.android.gms.maps;

import android.location.Location;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/LocationSource.class */
public interface LocationSource {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/LocationSource$OnLocationChangedListener.class */
    public interface OnLocationChangedListener {
        void onLocationChanged(Location location);
    }

    void activate(OnLocationChangedListener onLocationChangedListener);

    void deactivate();
}
