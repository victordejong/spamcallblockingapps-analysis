package android.support.p004v7.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.content.PermissionChecker;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.util.DateUtil;
import java.util.Calendar;
/* renamed from: android.support.v7.app.TwilightManager */
/* loaded from: classes-dex2jar.jar:android/support/v7/app/TwilightManager.class */
class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v7.app.TwilightManager$TwilightState */
    /* loaded from: classes-dex2jar.jar:android/support/v7/app/TwilightManager$TwilightState.class */
    public static class TwilightState {
        boolean isNight;
        long nextUpdate;
        long todaySunrise;
        long todaySunset;
        long tomorrowSunrise;
        long yesterdaySunset;

        TwilightState() {
        }
    }

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TwilightManager getInstance(@NonNull Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
        }
        return sInstance;
    }

    @SuppressLint({"MissingPermission"})
    private Location getLastKnownLocation() {
        Location location = null;
        Location lastKnownLocationForProvider = PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? getLastKnownLocationForProvider("network") : null;
        if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = getLastKnownLocationForProvider("gps");
        }
        if (location == null || lastKnownLocationForProvider == null) {
            if (location != null) {
                lastKnownLocationForProvider = location;
            }
            return lastKnownLocationForProvider;
        }
        Location location2 = lastKnownLocationForProvider;
        if (location.getTime() > lastKnownLocationForProvider.getTime()) {
            location2 = location;
        }
        return location2;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d(TAG, "Failed to get last known location", e);
            return null;
        }
    }

    private boolean isStateValid() {
        return this.mTwilightState.nextUpdate > System.currentTimeMillis();
    }

    @VisibleForTesting
    static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    private void updateState(@NonNull Location location) {
        long j;
        TwilightState twilightState = this.mTwilightState;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator instance = TwilightCalculator.getInstance();
        instance.calculateTwilight(currentTimeMillis - DateUtil.DAY_IN_MILLIS, location.getLatitude(), location.getLongitude());
        long j2 = instance.sunset;
        instance.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = instance.state == 1;
        long j3 = instance.sunrise;
        long j4 = instance.sunset;
        instance.calculateTwilight(DateUtil.DAY_IN_MILLIS + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = instance.sunrise;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j4 ? 0 + j5 : currentTimeMillis > j3 ? 0 + j4 : 0 + j3) + DateUtil.MINUTE_IN_MILLIS;
        }
        twilightState.isNight = z;
        twilightState.yesterdaySunset = j2;
        twilightState.todaySunrise = j3;
        twilightState.todaySunset = j4;
        twilightState.tomorrowSunrise = j5;
        twilightState.nextUpdate = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNight() {
        TwilightState twilightState = this.mTwilightState;
        if (isStateValid()) {
            return twilightState.isNight;
        }
        Location lastKnownLocation = getLastKnownLocation();
        if (lastKnownLocation != null) {
            updateState(lastKnownLocation);
            return twilightState.isNight;
        }
        Log.i(TAG, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
