package com.telguarder.helpers.location;

import android.content.Context;
import android.location.Location;
import androidx.core.content.ContextCompat;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.OnSuccessListener;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/location/LocationHelper.class */
public class LocationHelper {
    private static LocationHelper mInstance;
    private Location mCurrentCoarseLocation = null;

    private LocationHelper() {
    }

    public static LocationHelper getInstance() {
        if (mInstance == null) {
            synchronized (LocationHelper.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new LocationHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
    }

    public Location getCurrentCoarseLocation() {
        if (this.mCurrentCoarseLocation == null) {
            this.mCurrentCoarseLocation = PreferencesManager.getInstance().getCurrentLocation();
        }
        return this.mCurrentCoarseLocation;
    }

    public boolean isCoarseLocationPermitted(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public void updateCoarseLocation(Context context) {
        updateCoarseLocation(context, null);
    }

    public void updateCoarseLocation(Context context, final OnSuccessListener<? super Location> onSuccessListener) {
        if (isCoarseLocationPermitted(context)) {
            LocationServices.getFusedLocationProviderClient(context).getLastLocation().addOnSuccessListener(new OnSuccessListener<Location>() { // from class: com.telguarder.helpers.location.LocationHelper.1
                public void onSuccess(Location location) {
                    if (location != null) {
                        LocationHelper.this.mCurrentCoarseLocation = location;
                        PreferencesManager.getInstance().saveCurrentCoarseLocation(LocationHelper.this.mCurrentCoarseLocation);
                        OnSuccessListener onSuccessListener2 = onSuccessListener;
                        if (onSuccessListener2 == null) {
                            return;
                        }
                        onSuccessListener2.onSuccess(LocationHelper.this.mCurrentCoarseLocation);
                    }
                }
            });
        }
    }
}
