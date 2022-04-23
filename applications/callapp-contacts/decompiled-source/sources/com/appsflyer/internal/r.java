package com.appsflyer.internal;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.appsflyer.AndroidUtils;
import com.callapp.contacts.model.Constants;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r.class */
public final class r {

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r$b.class */
    public static final class b {

        /* renamed from: ı  reason: contains not printable characters */
        public static final r f315 = new r();
    }

    r() {
    }

    /* renamed from: ι  reason: contains not printable characters */
    public static Location m1016(Context context) {
        Location location;
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Location lastKnownLocation = m1017(context, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}) ? locationManager.getLastKnownLocation("network") : null;
            Location lastKnownLocation2 = m1017(context, new String[]{"android.permission.ACCESS_FINE_LOCATION"}) ? locationManager.getLastKnownLocation("gps") : null;
            if (lastKnownLocation2 == null && lastKnownLocation == null) {
                lastKnownLocation2 = null;
            } else if (lastKnownLocation2 == null && lastKnownLocation != null) {
                lastKnownLocation2 = lastKnownLocation;
            } else if (lastKnownLocation != null || lastKnownLocation2 == null) {
                if (Constants.MINUTE_IN_MILLIS < lastKnownLocation.getTime() - lastKnownLocation2.getTime()) {
                    lastKnownLocation2 = lastKnownLocation;
                }
            }
            location = null;
            if (lastKnownLocation2 != null) {
                location = lastKnownLocation2;
            }
        } catch (Throwable th) {
            location = null;
        }
        return location;
    }

    /* renamed from: ι  reason: contains not printable characters */
    private static boolean m1017(Context context, String[] strArr) {
        for (String str : strArr) {
            if (AndroidUtils.isPermissionAvailable(context, str)) {
                return true;
            }
        }
        return false;
    }
}
