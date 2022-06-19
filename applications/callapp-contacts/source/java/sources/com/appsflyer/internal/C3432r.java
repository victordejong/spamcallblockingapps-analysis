package com.appsflyer.internal;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.appsflyer.AndroidUtils;
import com.callapp.contacts.model.Constants;
/* renamed from: com.appsflyer.internal.r */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r.class */
public final class C3432r {

    /* renamed from: com.appsflyer.internal.r$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/r$b.class */
    public static final class C3433b {

        /* renamed from: ı */
        public static final C3432r f12991 = new C3432r();
    }

    C3432r() {
    }

    /* renamed from: ι */
    public static Location m37955(Context context) {
        Location location;
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Location lastKnownLocation = m37954(context, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}) ? locationManager.getLastKnownLocation("network") : null;
            Location lastKnownLocation2 = m37954(context, new String[]{"android.permission.ACCESS_FINE_LOCATION"}) ? locationManager.getLastKnownLocation("gps") : null;
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

    /* renamed from: ι */
    private static boolean m37954(Context context, String[] strArr) {
        for (String str : strArr) {
            if (AndroidUtils.isPermissionAvailable(context, str)) {
                return true;
            }
        }
        return false;
    }
}
