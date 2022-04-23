package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/TwilightManager.class */
class TwilightManager {

    /* renamed from: d */
    private static TwilightManager f299d;

    /* renamed from: a */
    private final Context f300a;

    /* renamed from: b */
    private final LocationManager f301b;

    /* renamed from: c */
    private final TwilightState f302c = new TwilightState();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/TwilightManager$TwilightState.class */
    public static class TwilightState {

        /* renamed from: a */
        boolean f303a;

        /* renamed from: b */
        long f304b;

        /* renamed from: c */
        long f305c;

        /* renamed from: d */
        long f306d;

        /* renamed from: e */
        long f307e;

        /* renamed from: f */
        long f308f;

        TwilightState() {
        }
    }

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.f300a = context;
        this.f301b = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static TwilightManager m22121a(@NonNull Context context) {
        if (f299d == null) {
            Context applicationContext = context.getApplicationContext();
            f299d = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION));
        }
        return f299d;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private Location m22120b() {
        Location location = null;
        Location c = PermissionChecker.m19657b(this.f300a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m22119c("network") : null;
        if (PermissionChecker.m19657b(this.f300a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = m22119c("gps");
        }
        if (location == null || c == null) {
            if (location != null) {
                c = location;
            }
            return c;
        }
        Location location2 = c;
        if (location.getTime() > c.getTime()) {
            location2 = location;
        }
        return location2;
    }

    @RequiresPermission
    /* renamed from: c */
    private Location m22119c(String str) {
        try {
            if (this.f301b.isProviderEnabled(str)) {
                return this.f301b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: e */
    private boolean m22117e() {
        return this.f302c.f308f > System.currentTimeMillis();
    }

    /* renamed from: f */
    private void m22116f(@NonNull Location location) {
        long j;
        TwilightState twilightState = this.f302c;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator b = TwilightCalculator.m22122b();
        b.m22123a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = b.f296a;
        b.m22123a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = b.f298c == 1;
        long j3 = b.f297b;
        long j4 = b.f296a;
        b.m22123a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = b.f297b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + currentTimeMillis;
        } else {
            j = (currentTimeMillis > j4 ? 0 + j5 : currentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        twilightState.f303a = z;
        twilightState.f304b = j2;
        twilightState.f305c = j3;
        twilightState.f306d = j4;
        twilightState.f307e = j5;
        twilightState.f308f = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m22118d() {
        TwilightState twilightState = this.f302c;
        if (m22117e()) {
            return twilightState.f303a;
        }
        Location b = m22120b();
        if (b != null) {
            m22116f(b);
            return twilightState.f303a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
