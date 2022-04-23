package net.pubnative.lite.sdk.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.utils.PNPermissionUtil;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/location/HyBidLocationManager.class */
public class HyBidLocationManager implements LocationListener {
    private static final int LOCATION_UPDATE_TIMEOUT = 10000;
    private static final int TWO_MINUTES = 120000;
    private final Context mContext;
    private Location mCurrentBestLocation;
    private final LocationManager mManager;
    private Runnable mStopUpdatesRunnable = new Runnable() { // from class: net.pubnative.lite.sdk.location.HyBidLocationManager.1
        @Override // java.lang.Runnable
        public void run() {
            HyBidLocationManager.this.stopLocationUpdates();
        }
    };

    public HyBidLocationManager(Context context) {
        this.mManager = (LocationManager) context.getSystemService("location");
        this.mContext = context;
    }

    private Location getLastKnownGPSLocation() {
        if (hasGPSProvider()) {
            return this.mManager.getLastKnownLocation("gps");
        }
        return null;
    }

    private Location getLastKnownNetworkLocation() {
        if (hasNetworkProvider()) {
            return this.mManager.getLastKnownLocation("network");
        }
        return null;
    }

    private Location getLocationFromProviders() {
        Location lastKnownGPSLocation = null;
        Location lastKnownNetworkLocation = (hasCoarsePermission() || hasFinePermission()) ? getLastKnownNetworkLocation() : null;
        lastKnownGPSLocation = hasFinePermission() ? getLastKnownGPSLocation() : null;
        if (lastKnownGPSLocation == null || lastKnownNetworkLocation == null ? lastKnownGPSLocation == null && lastKnownNetworkLocation != null : !isBetterLocation(lastKnownGPSLocation, lastKnownNetworkLocation)) {
            lastKnownGPSLocation = lastKnownNetworkLocation;
        }
        return lastKnownGPSLocation;
    }

    private boolean hasCoarsePermission() {
        return PNPermissionUtil.hasPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION");
    }

    private boolean hasFinePermission() {
        return PNPermissionUtil.hasPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION");
    }

    private boolean hasGPSProvider() {
        LocationManager locationManager = this.mManager;
        return (locationManager == null || locationManager.getProvider("gps") == null) ? false : true;
    }

    private boolean hasNetworkProvider() {
        LocationManager locationManager = this.mManager;
        return (locationManager == null || locationManager.getProvider("network") == null) ? false : true;
    }

    private boolean hasPermission() {
        return hasCoarsePermission() || hasFinePermission();
    }

    private boolean isSameProvider(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public Location getUserLocation() {
        Location location;
        if (hasPermission()) {
            Location locationFromProviders = getLocationFromProviders();
            if (locationFromProviders != null && isBetterLocation(locationFromProviders, this.mCurrentBestLocation)) {
                this.mCurrentBestLocation = locationFromProviders;
            }
            Location location2 = this.mCurrentBestLocation;
            location = location2;
            if (HyBid.isLocationTrackingEnabled()) {
                location = location2;
                if (HyBid.areLocationUpdatesEnabled()) {
                    startLocationUpdates();
                    location = location2;
                }
            }
        } else {
            location = null;
        }
        return location;
    }

    protected boolean isBetterLocation(Location location, Location location2) {
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > 120000;
        boolean z2 = time < -120000;
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = accuracy > 200;
        boolean isSameProvider = isSameProvider(location.getProvider(), location2.getProvider());
        if (z5) {
            return true;
        }
        if (!z3 || z4) {
            return z3 && !z6 && isSameProvider;
        }
        return true;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (isBetterLocation(location, this.mCurrentBestLocation)) {
            this.mCurrentBestLocation = location;
            stopLocationUpdates();
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public void startLocationUpdates() {
        if (hasFinePermission()) {
            if (hasGPSProvider()) {
                this.mManager.requestLocationUpdates("gps", 0L, BitmapDescriptorFactory.HUE_RED, this);
            }
            if (hasNetworkProvider()) {
                this.mManager.requestLocationUpdates("network", 0L, BitmapDescriptorFactory.HUE_RED, this);
            }
        } else if (hasCoarsePermission()) {
            this.mManager.requestLocationUpdates("network", 0L, BitmapDescriptorFactory.HUE_RED, this);
        }
        new Handler(Looper.myLooper()).postDelayed(this.mStopUpdatesRunnable, 10000L);
    }

    public void stopLocationUpdates() {
        LocationManager locationManager = this.mManager;
        if (locationManager != null) {
            locationManager.removeUpdates(this);
        }
    }
}
