package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGeoLocation.class */
public class DtbGeoLocation {
    private static final String LOG_TAG = "DtbGeoLocation";
    private static final float THRESHOLD_DISTANCE_IN_KILOMETERS = 3.0f;

    public DtbGeoLocation() {
        if (AdRegistration.getContext() != null) {
            return;
        }
        DtbLog.debugError("unable to initialize DtbGeoLocation without setting app context");
        throw new IllegalArgumentException("unable to initialize DtbGeoLocation without setting app context");
    }

    private boolean hasLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public Location getLastLocation(Context context, String str) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        Location location = null;
        if (locationManager != null) {
            try {
                location = locationManager.getLastKnownLocation(str);
            } catch (IllegalArgumentException e) {
                DtbLog.warn("Failed to retrieve location: " + str + "not found");
                location = null;
            } catch (SecurityException e2) {
                DtbLog.warn("Failed to retrieve location: No permissions to access " + str);
                location = null;
            }
        }
        return location;
    }

    public Location getLocation() {
        Context context = AdRegistration.getContext();
        Location location = null;
        if (!hasLocationPermission(context)) {
            return null;
        }
        Location lastLocation = getLastLocation(context, "gps");
        Location lastLocation2 = getLastLocation(context, AnalyticsConstants.NETWORK);
        if (lastLocation == null || lastLocation2 == null) {
            if (lastLocation != null) {
                DtbLog.debug("Setting location using gps, network not available");
                location = lastLocation;
            } else if (lastLocation2 != null) {
                DtbLog.debug("Setting location using network, gps not available");
                location = lastLocation2;
            }
            return location;
        }
        if (lastLocation.distanceTo(lastLocation2) / 1000.0f <= THRESHOLD_DISTANCE_IN_KILOMETERS) {
            float f = Float.MAX_VALUE;
            float accuracy = lastLocation.hasAccuracy() ? lastLocation.getAccuracy() : Float.MAX_VALUE;
            if (lastLocation2.hasAccuracy()) {
                f = lastLocation2.getAccuracy();
            }
            if (accuracy < f) {
                DtbLog.debug("Setting location using GPS determined by accuracy");
                location = lastLocation;
            } else {
                DtbLog.debug("Setting location using network determined by accuracy");
                location = lastLocation2;
            }
        } else if (lastLocation.getTime() > lastLocation2.getTime()) {
            DtbLog.debug("Setting location using GPS determined by time");
            location = lastLocation;
        } else {
            DtbLog.debug("Setting location using network determined by time");
            location = lastLocation2;
        }
        return location;
    }

    public String getLocationParam() {
        Location location = getLocation();
        if (location == null) {
            return null;
        }
        long currentTimeMillis = (System.currentTimeMillis() - location.getTime()) / 1000;
        if (currentTimeMillis > 86400) {
            return null;
        }
        return location.getLatitude() + "," + location.getLongitude() + "," + location.getAccuracy() + "," + currentTimeMillis;
    }
}
