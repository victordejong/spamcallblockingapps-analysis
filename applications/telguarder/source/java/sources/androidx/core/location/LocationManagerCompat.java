package androidx.core.location;

import android.location.LocationManager;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/core/location/LocationManagerCompat.class */
public final class LocationManagerCompat {
    private LocationManagerCompat() {
    }

    public static boolean isLocationEnabled(LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return locationManager.isLocationEnabled();
        }
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }
}
