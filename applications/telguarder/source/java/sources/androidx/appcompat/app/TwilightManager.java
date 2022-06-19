package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.telguarder.ApplicationConstants;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/TwilightManager.class */
class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/TwilightManager$TwilightState.class */
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

    TwilightManager(Context context, LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    public static TwilightManager getInstance(Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
        }
        return sInstance;
    }

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

    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (!this.mLocationManager.isProviderEnabled(str)) {
                return null;
            }
            return this.mLocationManager.getLastKnownLocation(str);
        } catch (Exception e) {
            Log.d(TAG, "Failed to get last known location", e);
            return null;
        }
    }

    private boolean isStateValid() {
        return this.mTwilightState.nextUpdate > System.currentTimeMillis();
    }

    static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    private void updateState(Location location) {
        char c;
        TwilightState twilightState = this.mTwilightState;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
        twilightCalculator.calculateTwilight(currentTimeMillis - ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE, location.getLatitude(), location.getLongitude());
        long j = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = twilightCalculator.state == 1;
        long j2 = twilightCalculator.sunrise;
        long j3 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j4 = twilightCalculator.sunrise;
        if (j2 == -1 || j3 == -1) {
            c = 43200000 + currentTimeMillis;
        } else {
            c = (currentTimeMillis > j3 ? 0 + j4 : currentTimeMillis > j2 ? 0 + j3 : 0 + j2) + 60000;
        }
        twilightState.isNight = z;
        twilightState.yesterdaySunset = j;
        twilightState.todaySunrise = j2;
        twilightState.todaySunset = j3;
        twilightState.tomorrowSunrise = j4;
        twilightState.nextUpdate = c;
    }

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
