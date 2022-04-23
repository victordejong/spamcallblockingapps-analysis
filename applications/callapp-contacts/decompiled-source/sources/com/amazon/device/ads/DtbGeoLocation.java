package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbGeoLocation.class */
public class DtbGeoLocation {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6481a = "DtbGeoLocation";

    /* JADX INFO: Access modifiers changed from: package-private */
    public DtbGeoLocation() {
        if (AdRegistration.d() == null) {
            DtbLog.b("unable to initialize DtbGeoLocation without setting app context");
            throw new IllegalArgumentException("unable to initialize DtbGeoLocation without setting app context");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Location a() {
        Context d2 = AdRegistration.d();
        Location location = null;
        if (!a(d2)) {
            return null;
        }
        Location a2 = a(d2, "gps");
        Location a3 = a(d2, "network");
        if (a2 == null || a3 == null) {
            if (a2 != null) {
                DtbLog.b();
                location = a2;
            } else if (a3 != null) {
                DtbLog.b();
                location = a3;
            }
        } else if (a2.distanceTo(a3) / 1000.0f <= 3.0f) {
            float f = Float.MAX_VALUE;
            float accuracy = a2.hasAccuracy() ? a2.getAccuracy() : Float.MAX_VALUE;
            if (a3.hasAccuracy()) {
                f = a3.getAccuracy();
            }
            if (accuracy < f) {
                DtbLog.b();
                location = a2;
            } else {
                DtbLog.b();
                location = a3;
            }
        } else if (a2.getTime() > a3.getTime()) {
            DtbLog.b();
            location = a2;
        } else {
            DtbLog.b();
            location = a3;
        }
        return location;
    }

    private static Location a(Context context, String str) {
        Location location;
        try {
            location = ((LocationManager) context.getSystemService("location")).getLastKnownLocation(str);
        } catch (IllegalArgumentException e) {
            DtbLog.a("Failed to retrieve location: " + str + "not found");
            location = null;
            return location;
        } catch (SecurityException e2) {
            DtbLog.a("Failed to retrieve location: No permissions to access ".concat(String.valueOf(str)));
            location = null;
            return location;
        }
        return location;
    }

    private static boolean a(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
}
